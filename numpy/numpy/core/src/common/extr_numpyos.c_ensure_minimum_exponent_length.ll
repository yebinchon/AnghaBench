; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_numpyos.c_ensure_minimum_exponent_length.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_numpyos.c_ensure_minimum_exponent_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@MIN_EXPONENT_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ensure_minimum_exponent_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_minimum_exponent_length(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strpbrk(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %134

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %29, label %134

29:                                               ; preds = %23, %17
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %64, %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @Py_CHARMASK(i8 signext %41)
  %43 = call i64 @isdigit(i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ false, %34 ], [ %44, %39 ]
  br i1 %46, label %47, label %69

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 48
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %50, %47
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 48
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %34

69:                                               ; preds = %45
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @MIN_EXPONENT_DIGITS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %133

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MIN_EXPONENT_DIGITS, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @MIN_EXPONENT_DIGITS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @MIN_EXPONENT_DIGITS, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @memmove(i8* %95, i8* %99, i32 %101)
  br label %132

103:                                              ; preds = %77
  %104 = load i32, i32* @MIN_EXPONENT_DIGITS, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %12, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8*, i8** %3, align 8
  %116 = load i64, i64* %4, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = icmp ult i8* %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %103
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @memmove(i8* %123, i8* %124, i32 %126)
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @memset(i8* %128, i32 48, i32 %129)
  br label %131

131:                                              ; preds = %119, %103
  br label %132

132:                                              ; preds = %131, %87
  br label %133

133:                                              ; preds = %132, %76
  br label %134

134:                                              ; preds = %133, %23, %2
  ret void
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @Py_CHARMASK(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
