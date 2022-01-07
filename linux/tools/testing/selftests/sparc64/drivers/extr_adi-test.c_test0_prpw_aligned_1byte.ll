; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test0_prpw_aligned_1byte.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test0_prpw_aligned_1byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@end_addr = common dso_local global i32* null, align 8
@range_count = common dso_local global i32 0, align 4
@ADI_BLKSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\09Expected version %d but read version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test0_prpw_aligned_1byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test0_prpw_aligned_1byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [1 x i8], align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32*, i32** @end_addr, align 8
  %10 = load i32, i32* @range_count, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 4096
  %16 = load i32, i32* @ADI_BLKSZ, align 4
  %17 = sub nsw i32 %16, 1
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %4, align 8
  %21 = call zeroext i8 (...) @random_version()
  %22 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %6, align 1
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @ADI_BLKSZ, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %25, %27
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @pwrite_adi(i32 %29, i8* %30, i32 1, i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %8, align 4
  %38 = trunc i32 %37 to i8
  %39 = call i32 @TEST_STEP_FAILURE(i8 zeroext %38)
  br label %40

40:                                               ; preds = %36, %1
  %41 = load i32, i32* %3, align 4
  %42 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @pread_adi(i32 %41, i8* %42, i32 1, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = trunc i32 %49 to i8
  %51 = call i32 @TEST_STEP_FAILURE(i8 zeroext %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i8, i8* %6, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i8, i8* %6, align 1
  %61 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %60, i8 zeroext %62)
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  %66 = sub nsw i32 0, %65
  %67 = trunc i32 %66 to i8
  %68 = call i32 @TEST_STEP_FAILURE(i8 zeroext %67)
  br label %69

69:                                               ; preds = %59, %52
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @RETURN_FROM_TEST(i32 %71)
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local zeroext i8 @random_version(...) #1

declare dso_local i32 @pwrite_adi(i32, i8*, i32, i64) #1

declare dso_local i32 @TEST_STEP_FAILURE(i8 zeroext) #1

declare dso_local i32 @pread_adi(i32, i8*, i32, i64) #1

declare dso_local i32 @DEBUG_PRINT_L2(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @RETURN_FROM_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
