; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC_FEATURE_HAS_ALTIVEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VMX\0A\00", align 1
@lvx = common dso_local global i32 0, align 4
@stvx = common dso_local global i32 0, align 4
@stvebx = common dso_local global i32 0, align 4
@stvehx = common dso_local global i32 0, align 4
@stvewx = common dso_local global i32 0, align 4
@stvxl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_alignment_handler_vmx() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @can_open_fb0()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = load i32, i32* @PPC_FEATURE_HAS_ALTIVEC, align 4
  %8 = call i32 @have_hwcap(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @SKIP_IF(i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @lvx, align 4
  %15 = call i32 @LOAD_VMX_XFORM_TEST(i32 %14)
  %16 = load i32, i32* @stvx, align 4
  %17 = call i32 @STORE_VMX_XFORM_TEST(i32 %16)
  %18 = load i32, i32* @stvebx, align 4
  %19 = call i32 @STORE_VMX_XFORM_TEST(i32 %18)
  %20 = load i32, i32* @stvehx, align 4
  %21 = call i32 @STORE_VMX_XFORM_TEST(i32 %20)
  %22 = load i32, i32* @stvewx, align 4
  %23 = call i32 @STORE_VMX_XFORM_TEST(i32 %22)
  %24 = load i32, i32* @stvxl, align 4
  %25 = call i32 @STORE_VMX_XFORM_TEST(i32 %24)
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @can_open_fb0(...) #1

declare dso_local i32 @have_hwcap(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @LOAD_VMX_XFORM_TEST(i32) #1

declare dso_local i32 @STORE_VMX_XFORM_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
