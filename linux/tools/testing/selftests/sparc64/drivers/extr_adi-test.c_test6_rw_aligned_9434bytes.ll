; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test6_rw_aligned_9434bytes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sparc64/drivers/extr_adi-test.c_test6_rw_aligned_9434bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@end_addr = common dso_local global i32* null, align 8
@range_count = common dso_local global i32 0, align 4
@ADI_BLKSZ = common dso_local global i32 0, align 4
@TEST6_VERSION_SZ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"\09Expected version %d but read version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test6_rw_aligned_9434bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test6_rw_aligned_9434bytes(i32 %0) #0 {
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
  %12 = load i32*, i32** @end_addr, align 8
  %13 = load i32, i32* @range_count, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 389120
  %19 = load i32, i32* @ADI_BLKSZ, align 4
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i32, i32* @TEST6_VERSION_SZ, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %5, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %28 = load i32, i32* @TEST6_VERSION_SZ, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @ADI_BLKSZ, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %31, %33
  store i64 %34, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %47, %1
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @TEST6_VERSION_SZ, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = call zeroext i8 (...) @random_version()
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %30, i64 %42
  store i8 %40, i8* %43, align 1
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %27, i64 %45
  store i8 %40, i8* %46, align 1
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %35

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* @SEEK_SET, align 4
  %54 = call i64 @seek_adi(i32 %51, i64 %52, i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  store i32 -1, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = trunc i32 %59 to i8
  %61 = call i32 @TEST_STEP_FAILURE(i8 zeroext %60)
  br label %62

62:                                               ; preds = %58, %50
  %63 = load i32, i32* %3, align 4
  %64 = trunc i64 %25 to i32
  %65 = call i32 @write_adi(i32 %63, i8* %27, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, %25
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* %10, align 4
  %71 = trunc i32 %70 to i8
  %72 = call i32 @TEST_STEP_FAILURE(i8 zeroext %71)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i32, i32* @TEST6_VERSION_SZ, align 4
  %75 = call i32 @memset(i8* %27, i32 0, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* @SEEK_SET, align 4
  %79 = call i64 @seek_adi(i32 %76, i64 %77, i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  store i32 -1, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = trunc i32 %84 to i8
  %86 = call i32 @TEST_STEP_FAILURE(i8 zeroext %85)
  br label %87

87:                                               ; preds = %83, %73
  %88 = load i32, i32* %3, align 4
  %89 = trunc i64 %25 to i32
  %90 = call i32 @read_adi(i32 %88, i8* %27, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %92, %25
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = trunc i32 %95 to i8
  %97 = call i32 @TEST_STEP_FAILURE(i8 zeroext %96)
  br label %98

98:                                               ; preds = %94, %87
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %134, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @TEST6_VERSION_SZ, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %30, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %27, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %108, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %103
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %30, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %27, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @DEBUG_PRINT_L2(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %119, i8 zeroext %123)
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %30, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 0, %129
  %131 = trunc i32 %130 to i8
  %132 = call i32 @TEST_STEP_FAILURE(i8 zeroext %131)
  br label %133

133:                                              ; preds = %115, %103
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %99

137:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @RETURN_FROM_TEST(i32 %139)
  %141 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %2, align 4
  ret i32 %142
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
