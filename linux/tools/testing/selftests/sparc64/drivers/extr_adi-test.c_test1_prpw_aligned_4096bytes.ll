; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test1_prpw_aligned_4096bytes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test1_prpw_aligned_4096bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@end_addr = common dso_local global i32* null, align 8
@range_count = common dso_local global i32 0, align 4
@ADI_BLKSZ = common dso_local global i32 0, align 4
@TEST1_VERSION_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\09Expected version %d but read version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test1_prpw_aligned_4096bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test1_prpw_aligned_4096bytes(i32 %0) #0 {
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
  %11 = load i32*, i32** @end_addr, align 8
  %12 = load i32, i32* @range_count, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 24576
  %18 = load i32, i32* @ADI_BLKSZ, align 4
  %19 = sub nsw i32 %18, 1
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* @TEST1_VERSION_SZ, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %5, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %6, align 8
  %27 = load i32, i32* @TEST1_VERSION_SZ, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %46, %1
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @TEST1_VERSION_SZ, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = call zeroext i8 (...) @random_version()
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %26, i64 %37
  store i8 %35, i8* %38, align 1
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %26, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %29, i64 %44
  store i8 %42, i8* %45, align 1
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* @ADI_BLKSZ, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %50, %52
  store i64 %53, i64* %8, align 8
  %54 = load i32, i32* %3, align 4
  %55 = trunc i64 %24 to i32
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @pwrite_adi(i32 %54, i8* %26, i32 %55, i64 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, %24
  br i1 %60, label %61, label %65

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = trunc i32 %62 to i8
  %64 = call i32 @TEST_STEP_FAILURE(i8 zeroext %63)
  br label %65

65:                                               ; preds = %61, %49
  %66 = load i32, i32* %3, align 4
  %67 = trunc i64 %24 to i32
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @pread_adi(i32 %66, i8* %26, i32 %67, i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, %24
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = trunc i32 %74 to i8
  %76 = call i32 @TEST_STEP_FAILURE(i8 zeroext %75)
  br label %77

77:                                               ; preds = %73, %65
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %107, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @TEST1_VERSION_SZ, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %29, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %26, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp ne i32 %87, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %82
  %95 = getelementptr inbounds i8, i8* %26, i64 0
  %96 = load i8, i8* %95, align 16
  %97 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %29, i8 zeroext %96)
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %29, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = sub nsw i32 0, %102
  %104 = trunc i32 %103 to i8
  %105 = call i32 @TEST_STEP_FAILURE(i8 zeroext %104)
  br label %106

106:                                              ; preds = %94, %82
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %78

110:                                              ; preds = %78
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @RETURN_FROM_TEST(i32 %112)
  %114 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %2, align 4
  ret i32 %115
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
