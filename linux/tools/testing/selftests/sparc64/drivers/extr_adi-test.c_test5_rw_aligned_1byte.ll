; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test5_rw_aligned_1byte.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test5_rw_aligned_1byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@end_addr = common dso_local global i32* null, align 8
@range_count = common dso_local global i32 0, align 4
@ADI_BLKSZ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\09Expected version %d but read version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test5_rw_aligned_1byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test5_rw_aligned_1byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32*, i32** @end_addr, align 8
  %11 = load i32, i32* @range_count, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 61440
  %17 = load i32, i32* @ADI_BLKSZ, align 4
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* @ADI_BLKSZ, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %22, %24
  store i64 %25, i64* %7, align 8
  %26 = call zeroext i8 (...) @random_version()
  store i8 %26, i8* %6, align 1
  store i8 %26, i8* %5, align 1
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 @seek_adi(i32 %27, i64 %28, i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  store i32 -1, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = trunc i32 %35 to i8
  %37 = call i32 @TEST_STEP_FAILURE(i8 zeroext %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @write_adi(i32 %39, i8* %5, i32 1)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = trunc i32 %45 to i8
  %47 = call i32 @TEST_STEP_FAILURE(i8 zeroext %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %3, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i64 @seek_adi(i32 %49, i64 %50, i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  store i32 -1, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = trunc i32 %57 to i8
  %59 = call i32 @TEST_STEP_FAILURE(i8 zeroext %58)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @read_adi(i32 %61, i8* %5, i32 1)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = trunc i32 %67 to i8
  %69 = call i32 @TEST_STEP_FAILURE(i8 zeroext %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i8, i8* %6, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %5, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i8, i8* %6, align 1
  %78 = load i8, i8* %5, align 1
  %79 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %77, i8 zeroext %78)
  %80 = load i8, i8* %6, align 1
  %81 = zext i8 %80 to i32
  %82 = sub nsw i32 0, %81
  %83 = trunc i32 %82 to i8
  %84 = call i32 @TEST_STEP_FAILURE(i8 zeroext %83)
  br label %85

85:                                               ; preds = %76, %70
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @RETURN_FROM_TEST(i32 %87)
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local zeroext i8 @random_version(...) #1

declare dso_local i64 @seek_adi(i32, i64, i32) #1

declare dso_local i32 @TEST_STEP_FAILURE(i8 zeroext) #1

declare dso_local i32 @write_adi(i32, i8*, i32) #1

declare dso_local i32 @read_adi(i32, i8*, i32) #1

declare dso_local i32 @DEBUG_PRINT_L2(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @RETURN_FROM_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
