; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zpotrs_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zpotrs_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zpotrs_.upper = internal global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ZPOTRS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b57 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpotrs_(i8* %0, i64* %1, i64* %2, i32* %3, i64* %4, i32* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  %23 = load i64*, i64** %14, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* %18, align 8
  %26 = add nsw i64 1, %25
  store i64 %26, i64* %19, align 8
  %27 = load i64, i64* %19, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = sub i64 0, %27
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %13, align 8
  %31 = load i64*, i64** %16, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %20, align 8
  %33 = load i64, i64* %20, align 8
  %34 = add nsw i64 1, %33
  store i64 %34, i64* %21, align 8
  %35 = load i64, i64* %21, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = sub i64 0, %35
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %15, align 8
  %39 = load i64*, i64** %17, align 8
  store i64 0, i64* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @lsame_(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %41, i64* @zpotrs_.upper, align 8
  %42 = load i64, i64* @zpotrs_.upper, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @lsame_(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i64*, i64** %17, align 8
  store i64 -1, i64* %49, align 8
  br label %84

50:                                               ; preds = %44, %8
  %51 = load i64*, i64** %11, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64*, i64** %17, align 8
  store i64 -2, i64* %55, align 8
  br label %83

56:                                               ; preds = %50
  %57 = load i64*, i64** %12, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64*, i64** %17, align 8
  store i64 -3, i64* %61, align 8
  br label %82

62:                                               ; preds = %56
  %63 = load i64*, i64** %14, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @max(i32 1, i64 %66)
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64*, i64** %17, align 8
  store i64 -5, i64* %70, align 8
  br label %81

71:                                               ; preds = %62
  %72 = load i64*, i64** %16, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @max(i32 1, i64 %75)
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i64*, i64** %17, align 8
  store i64 -7, i64* %79, align 8
  br label %80

80:                                               ; preds = %78, %71
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %54
  br label %84

84:                                               ; preds = %83, %48
  %85 = load i64*, i64** %17, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i64*, i64** %17, align 8
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %22, align 8
  %92 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64* %22)
  store i32 0, i32* %9, align 4
  br label %152

93:                                               ; preds = %84
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i64*, i64** %12, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %93
  store i32 0, i32* %9, align 4
  br label %152

102:                                              ; preds = %97
  %103 = load i64, i64* @zpotrs_.upper, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load i64*, i64** %11, align 8
  %107 = load i64*, i64** %12, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i64, i64* %19, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i64*, i64** %14, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i64, i64* %21, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i64*, i64** %16, align 8
  %116 = call i32 @ztrsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64* %106, i64* %107, i32* @c_b57, i32* %110, i64* %111, i32* %114, i64* %115)
  %117 = load i64*, i64** %11, align 8
  %118 = load i64*, i64** %12, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = load i64, i64* %19, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i64*, i64** %14, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = load i64, i64* %21, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i64*, i64** %16, align 8
  %127 = call i32 @ztrsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64* %117, i64* %118, i32* @c_b57, i32* %121, i64* %122, i32* %125, i64* %126)
  br label %151

128:                                              ; preds = %102
  %129 = load i64*, i64** %11, align 8
  %130 = load i64*, i64** %12, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i64, i64* %19, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i64*, i64** %14, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = load i64, i64* %21, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i64*, i64** %16, align 8
  %139 = call i32 @ztrsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64* %129, i64* %130, i32* @c_b57, i32* %133, i64* %134, i32* %137, i64* %138)
  %140 = load i64*, i64** %11, align 8
  %141 = load i64*, i64** %12, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i64, i64* %19, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i64*, i64** %14, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = load i64, i64* %21, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i64*, i64** %16, align 8
  %150 = call i32 @ztrsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64* %140, i64* %141, i32* @c_b57, i32* %144, i64* %145, i32* %148, i64* %149)
  br label %151

151:                                              ; preds = %128, %105
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %151, %101, %88
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local i64 @lsame_(i8*, i8*) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @xerbla_(i8*, i64*) #1

declare dso_local i32 @ztrsm_(i8*, i8*, i8*, i8*, i64*, i64*, i32*, i32*, i64*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
