; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_vsx_300.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_vsx_300.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PPC_FEATURE2_ARCH_3_00 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"VSX: 3.00B\0A\00", align 1
@lxsd = common dso_local global i32 0, align 4
@lxsibzx = common dso_local global i32 0, align 4
@lxsihzx = common dso_local global i32 0, align 4
@lxssp = common dso_local global i32 0, align 4
@lxv = common dso_local global i32 0, align 4
@lxvb16x = common dso_local global i32 0, align 4
@lxvh8x = common dso_local global i32 0, align 4
@lxvx = common dso_local global i32 0, align 4
@lxvwsx = common dso_local global i32 0, align 4
@lxvl = common dso_local global i32 0, align 4
@lxvll = common dso_local global i32 0, align 4
@stxsd = common dso_local global i32 0, align 4
@stxsibx = common dso_local global i32 0, align 4
@stxsihx = common dso_local global i32 0, align 4
@stxssp = common dso_local global i32 0, align 4
@stxv = common dso_local global i32 0, align 4
@stxvb16x = common dso_local global i32 0, align 4
@stxvh8x = common dso_local global i32 0, align 4
@stxvx = common dso_local global i32 0, align 4
@stxvl = common dso_local global i32 0, align 4
@stxvll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_alignment_handler_vsx_300() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @can_open_fb0()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = load i32, i32* @PPC_FEATURE2_ARCH_3_00, align 4
  %8 = call i32 @have_hwcap2(i32 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @SKIP_IF(i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @lxsd, align 4
  %15 = call i32 @LOAD_VMX_DFORM_TEST(i32 %14)
  %16 = load i32, i32* @lxsibzx, align 4
  %17 = call i32 @LOAD_VSX_XFORM_TEST(i32 %16)
  %18 = load i32, i32* @lxsihzx, align 4
  %19 = call i32 @LOAD_VSX_XFORM_TEST(i32 %18)
  %20 = load i32, i32* @lxssp, align 4
  %21 = call i32 @LOAD_VMX_DFORM_TEST(i32 %20)
  %22 = load i32, i32* @lxv, align 4
  %23 = call i32 @LOAD_VSX_DFORM_TEST(i32 %22)
  %24 = load i32, i32* @lxvb16x, align 4
  %25 = call i32 @LOAD_VSX_XFORM_TEST(i32 %24)
  %26 = load i32, i32* @lxvh8x, align 4
  %27 = call i32 @LOAD_VSX_XFORM_TEST(i32 %26)
  %28 = load i32, i32* @lxvx, align 4
  %29 = call i32 @LOAD_VSX_XFORM_TEST(i32 %28)
  %30 = load i32, i32* @lxvwsx, align 4
  %31 = call i32 @LOAD_VSX_XFORM_TEST(i32 %30)
  %32 = load i32, i32* @lxvl, align 4
  %33 = call i32 @LOAD_VSX_XFORM_TEST(i32 %32)
  %34 = load i32, i32* @lxvll, align 4
  %35 = call i32 @LOAD_VSX_XFORM_TEST(i32 %34)
  %36 = load i32, i32* @stxsd, align 4
  %37 = call i32 @STORE_VMX_DFORM_TEST(i32 %36)
  %38 = load i32, i32* @stxsibx, align 4
  %39 = call i32 @STORE_VSX_XFORM_TEST(i32 %38)
  %40 = load i32, i32* @stxsihx, align 4
  %41 = call i32 @STORE_VSX_XFORM_TEST(i32 %40)
  %42 = load i32, i32* @stxssp, align 4
  %43 = call i32 @STORE_VMX_DFORM_TEST(i32 %42)
  %44 = load i32, i32* @stxv, align 4
  %45 = call i32 @STORE_VSX_DFORM_TEST(i32 %44)
  %46 = load i32, i32* @stxvb16x, align 4
  %47 = call i32 @STORE_VSX_XFORM_TEST(i32 %46)
  %48 = load i32, i32* @stxvh8x, align 4
  %49 = call i32 @STORE_VSX_XFORM_TEST(i32 %48)
  %50 = load i32, i32* @stxvx, align 4
  %51 = call i32 @STORE_VSX_XFORM_TEST(i32 %50)
  %52 = load i32, i32* @stxvl, align 4
  %53 = call i32 @STORE_VSX_XFORM_TEST(i32 %52)
  %54 = load i32, i32* @stxvll, align 4
  %55 = call i32 @STORE_VSX_XFORM_TEST(i32 %54)
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @can_open_fb0(...) #1

declare dso_local i32 @have_hwcap2(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @LOAD_VMX_DFORM_TEST(i32) #1

declare dso_local i32 @LOAD_VSX_XFORM_TEST(i32) #1

declare dso_local i32 @LOAD_VSX_DFORM_TEST(i32) #1

declare dso_local i32 @STORE_VMX_DFORM_TEST(i32) #1

declare dso_local i32 @STORE_VSX_XFORM_TEST(i32) #1

declare dso_local i32 @STORE_VSX_DFORM_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
