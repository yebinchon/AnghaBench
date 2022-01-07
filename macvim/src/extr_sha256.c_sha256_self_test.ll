; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_sha256.c_sha256_self_test.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_sha256.c_sha256_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sha256_self_test.failures = internal global i32 0, align 4
@sha256_self_test.sha256_self_tested = internal global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@sha_self_test_msg = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@sha_self_test_vector = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha256_self_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [65 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca [1000 x i32], align 16
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = load i32, i32* @sha256_self_test.sha256_self_tested, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i32, i32* @sha256_self_test.failures, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @FAIL, align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @OK, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %1, align 4
  br label %105

20:                                               ; preds = %0
  store i32 1, i32* @sha256_self_test.sha256_self_tested, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %93, %20
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %96

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i64*, i64** @sha_self_test_msg, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i64*, i64** @sha_self_test_msg, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @STRLEN(i64 %38)
  %40 = trunc i64 %39 to i32
  %41 = call i32* @sha256_bytes(i32* %33, i32 %40, i32* null, i32 0)
  store i32* %41, i32** %8, align 8
  %42 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @STRCPY(i8* %42, i32* %43)
  br label %79

45:                                               ; preds = %24
  %46 = call i32 @sha256_start(i32* %5)
  %47 = getelementptr inbounds [1000 x i32], [1000 x i32]* %6, i64 0, i64 0
  %48 = call i32 @vim_memset(i32* %47, i8 signext 97, i32 1000)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %55, %45
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 1000
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = getelementptr inbounds [1000 x i32], [1000 x i32]* %6, i64 0, i64 0
  %54 = call i32 @sha256_update(i32* %5, i32* %53, i32 1000)
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %49

58:                                               ; preds = %49
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %60 = call i32 @sha256_finish(i32* %5, i32* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 32
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %66 = load i32, i32* %3, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %61

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %27
  %80 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 0
  %81 = load i32*, i32** @sha_self_test_vector, align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @memcmp(i8* %80, i32 %85, i32 64)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @sha256_self_test.failures, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @sha256_self_test.failures, align 4
  %91 = getelementptr inbounds [65 x i8], [65 x i8]* %4, i64 0, i64 64
  store i8 0, i8* %91, align 16
  br label %92

92:                                               ; preds = %88, %79
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %21

96:                                               ; preds = %21
  %97 = load i32, i32* @sha256_self_test.failures, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @FAIL, align 4
  br label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @OK, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %1, align 4
  br label %105

105:                                              ; preds = %103, %18
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

declare dso_local i32* @sha256_bytes(i32*, i32, i32*, i32) #1

declare dso_local i64 @STRLEN(i64) #1

declare dso_local i32 @STRCPY(i8*, i32*) #1

declare dso_local i32 @sha256_start(i32*) #1

declare dso_local i32 @vim_memset(i32*, i8 signext, i32) #1

declare dso_local i32 @sha256_update(i32*, i32*, i32) #1

declare dso_local i32 @sha256_finish(i32*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
