; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_fp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/alignment/extr_alignment_handler.c_test_alignment_handler_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Floating point\0A\00", align 1
@lfd = common dso_local global i32 0, align 4
@lfdx = common dso_local global i32 0, align 4
@lfdu = common dso_local global i32 0, align 4
@lfdux = common dso_local global i32 0, align 4
@lfs = common dso_local global i32 0, align 4
@lfsx = common dso_local global i32 0, align 4
@lfsu = common dso_local global i32 0, align 4
@lfsux = common dso_local global i32 0, align 4
@stfd = common dso_local global i32 0, align 4
@stfdx = common dso_local global i32 0, align 4
@stfdu = common dso_local global i32 0, align 4
@stfdux = common dso_local global i32 0, align 4
@stfs = common dso_local global i32 0, align 4
@stfsx = common dso_local global i32 0, align 4
@stfsu = common dso_local global i32 0, align 4
@stfsux = common dso_local global i32 0, align 4
@stfiwx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_alignment_handler_fp() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @can_open_fb0()
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i32 @SKIP_IF(i32 %5)
  %7 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @lfd, align 4
  %9 = call i32 @LOAD_FLOAT_DFORM_TEST(i32 %8)
  %10 = load i32, i32* @lfdx, align 4
  %11 = call i32 @LOAD_FLOAT_XFORM_TEST(i32 %10)
  %12 = load i32, i32* @lfdu, align 4
  %13 = call i32 @LOAD_FLOAT_DFORM_TEST(i32 %12)
  %14 = load i32, i32* @lfdux, align 4
  %15 = call i32 @LOAD_FLOAT_XFORM_TEST(i32 %14)
  %16 = load i32, i32* @lfs, align 4
  %17 = call i32 @LOAD_FLOAT_DFORM_TEST(i32 %16)
  %18 = load i32, i32* @lfsx, align 4
  %19 = call i32 @LOAD_FLOAT_XFORM_TEST(i32 %18)
  %20 = load i32, i32* @lfsu, align 4
  %21 = call i32 @LOAD_FLOAT_DFORM_TEST(i32 %20)
  %22 = load i32, i32* @lfsux, align 4
  %23 = call i32 @LOAD_FLOAT_XFORM_TEST(i32 %22)
  %24 = load i32, i32* @stfd, align 4
  %25 = call i32 @STORE_FLOAT_DFORM_TEST(i32 %24)
  %26 = load i32, i32* @stfdx, align 4
  %27 = call i32 @STORE_FLOAT_XFORM_TEST(i32 %26)
  %28 = load i32, i32* @stfdu, align 4
  %29 = call i32 @STORE_FLOAT_DFORM_TEST(i32 %28)
  %30 = load i32, i32* @stfdux, align 4
  %31 = call i32 @STORE_FLOAT_XFORM_TEST(i32 %30)
  %32 = load i32, i32* @stfs, align 4
  %33 = call i32 @STORE_FLOAT_DFORM_TEST(i32 %32)
  %34 = load i32, i32* @stfsx, align 4
  %35 = call i32 @STORE_FLOAT_XFORM_TEST(i32 %34)
  %36 = load i32, i32* @stfsu, align 4
  %37 = call i32 @STORE_FLOAT_DFORM_TEST(i32 %36)
  %38 = load i32, i32* @stfsux, align 4
  %39 = call i32 @STORE_FLOAT_XFORM_TEST(i32 %38)
  %40 = load i32, i32* @stfiwx, align 4
  %41 = call i32 @STORE_FLOAT_XFORM_TEST(i32 %40)
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @SKIP_IF(i32) #1

declare dso_local i32 @can_open_fb0(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @LOAD_FLOAT_DFORM_TEST(i32) #1

declare dso_local i32 @LOAD_FLOAT_XFORM_TEST(i32) #1

declare dso_local i32 @STORE_FLOAT_DFORM_TEST(i32) #1

declare dso_local i32 @STORE_FLOAT_XFORM_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
