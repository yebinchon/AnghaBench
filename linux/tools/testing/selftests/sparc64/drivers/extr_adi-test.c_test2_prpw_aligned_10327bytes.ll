; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test2_prpw_aligned_10327bytes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test2_prpw_aligned_10327bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_addr = common dso_local global i32* null, align 8
@ADI_BLKSZ = common dso_local global i32 0, align 4
@TEST2_VERSION_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\09Expected version %d but read version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test2_prpw_aligned_10327bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test2_prpw_aligned_10327bytes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32*, i32** @start_addr, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 24576
  %15 = load i32, i32* @ADI_BLKSZ, align 4
  %16 = sub nsw i32 %15, 1
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %4, align 8
  %20 = load i32, i32* @TEST2_VERSION_SZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load i32, i32* @TEST2_VERSION_SZ, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %43, %1
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @TEST2_VERSION_SZ, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = call zeroext i8 (...) @random_version()
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %23, i64 %34
  store i8 %32, i8* %35, align 1
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %23, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %26, i64 %41
  store i8 %39, i8* %42, align 1
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %27

46:                                               ; preds = %27
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* @ADI_BLKSZ, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %47, %49
  store i64 %50, i64* %8, align 8
  %51 = load i32, i32* %3, align 4
  %52 = trunc i64 %21 to i32
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @pwrite_adi(i32 %51, i8* %23, i32 %52, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, %21
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  %60 = trunc i32 %59 to i8
  %61 = call i32 @TEST_STEP_FAILURE(i8 zeroext %60)
  br label %62

62:                                               ; preds = %58, %46
  %63 = load i32, i32* %3, align 4
  %64 = trunc i64 %21 to i32
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @pread_adi(i32 %63, i8* %23, i32 %64, i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, %21
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = trunc i32 %71 to i8
  %73 = call i32 @TEST_STEP_FAILURE(i8 zeroext %72)
  br label %74

74:                                               ; preds = %70, %62
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %104, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @TEST2_VERSION_SZ, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %26, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %23, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %84, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %79
  %92 = getelementptr inbounds i8, i8* %23, i64 0
  %93 = load i8, i8* %92, align 16
  %94 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %26, i8 zeroext %93)
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %26, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 0, %99
  %101 = trunc i32 %100 to i8
  %102 = call i32 @TEST_STEP_FAILURE(i8 zeroext %101)
  br label %103

103:                                              ; preds = %91, %79
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %75

107:                                              ; preds = %75
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @RETURN_FROM_TEST(i32 %109)
  %111 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i8 @random_version(...) #2

declare dso_local i32 @pwrite_adi(i32, i8*, i32, i64) #2

declare dso_local i32 @TEST_STEP_FAILURE(i8 zeroext) #2

declare dso_local i32 @pread_adi(i32, i8*, i32, i64) #2

declare dso_local i32 @DEBUG_PRINT_L2(i8*, i8*, i8 zeroext) #2

declare dso_local i32 @RETURN_FROM_TEST(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
