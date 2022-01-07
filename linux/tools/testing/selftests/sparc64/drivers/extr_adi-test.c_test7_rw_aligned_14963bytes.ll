; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test7_rw_aligned_14963bytes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test7_rw_aligned_14963bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_addr = common dso_local global i32* null, align 8
@range_count = common dso_local global i32 0, align 4
@ADI_BLKSZ = common dso_local global i32 0, align 4
@TEST7_VERSION_SZ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\09Expected version %d but read version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test7_rw_aligned_14963bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test7_rw_aligned_14963bytes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32*, i32** @start_addr, align 8
  %13 = load i32, i32* @range_count, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 61440
  %19 = load i32, i32* @ADI_BLKSZ, align 4
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = add nsw i32 %22, 39
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %4, align 8
  %25 = load i32, i32* @TEST7_VERSION_SZ, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %5, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %29 = load i32, i32* @TEST7_VERSION_SZ, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %7, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* @ADI_BLKSZ, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %32, %34
  store i64 %35, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %52, %1
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @TEST7_VERSION_SZ, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %36
  %41 = call zeroext i8 (...) @random_version()
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %28, i64 %43
  store i8 %41, i8* %44, align 1
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %28, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %31, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i64 @seek_adi(i32 %56, i64 %57, i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  store i32 -1, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = trunc i32 %64 to i8
  %66 = call i32 @TEST_STEP_FAILURE(i8 zeroext %65)
  br label %67

67:                                               ; preds = %63, %55
  %68 = load i32, i32* %3, align 4
  %69 = trunc i64 %26 to i32
  %70 = call i32 @write_adi(i32 %68, i8* %28, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, %26
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = trunc i32 %75 to i8
  %77 = call i32 @TEST_STEP_FAILURE(i8 zeroext %76)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32, i32* @TEST7_VERSION_SZ, align 4
  %80 = call i32 @memset(i8* %28, i32 0, i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @SEEK_SET, align 4
  %84 = call i64 @seek_adi(i32 %81, i64 %82, i32 %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  store i32 -1, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = trunc i32 %89 to i8
  %91 = call i32 @TEST_STEP_FAILURE(i8 zeroext %90)
  br label %92

92:                                               ; preds = %88, %78
  %93 = load i32, i32* %3, align 4
  %94 = trunc i64 %26 to i32
  %95 = call i32 @read_adi(i32 %93, i8* %28, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, %26
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = trunc i32 %100 to i8
  %102 = call i32 @TEST_STEP_FAILURE(i8 zeroext %101)
  br label %103

103:                                              ; preds = %99, %92
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %143, %103
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @TEST7_VERSION_SZ, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %146

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %31, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %28, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %113, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %108
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %31, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %28, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %124, i8 zeroext %128)
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %31, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = sub nsw i32 0, %134
  %136 = trunc i32 %135 to i8
  %137 = call i32 @TEST_STEP_FAILURE(i8 zeroext %136)
  br label %138

138:                                              ; preds = %120, %108
  %139 = load i32, i32* @ADI_BLKSZ, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %4, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %4, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %104

146:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @RETURN_FROM_TEST(i32 %148)
  %150 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local zeroext i8 @random_version(...) #2

declare dso_local i64 @seek_adi(i32, i64, i32) #2

declare dso_local i32 @TEST_STEP_FAILURE(i8 zeroext) #2

declare dso_local i32 @write_adi(i32, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @read_adi(i32, i8*, i32) #2

declare dso_local i32 @DEBUG_PRINT_L2(i8*, i8 zeroext, i8 zeroext) #2

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
