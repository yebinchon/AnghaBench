; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlarf_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlarf_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlarf_.i__ = internal global i32 0, align 4
@dlarf_.applyleft = internal global i64 0, align 8
@dlarf_.lastc = internal global i32 0, align 4
@dlarf_.lastv = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b15 = common dso_local global i32 0, align 4
@c_b29 = common dso_local global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlarf_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 -1
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = load i32*, i32** %16, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %34, i32** %18, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @lsame_(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %36, i64* @dlarf_.applyleft, align 8
  store i32 0, i32* @dlarf_.lastv, align 4
  store i32 0, i32* @dlarf_.lastc, align 4
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to double
  %40 = fcmp une double %39, 0.000000e+00
  br i1 %40, label %41, label %103

41:                                               ; preds = %9
  %42 = load i64, i64* @dlarf_.applyleft, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @dlarf_.lastv, align 4
  br label %50

47:                                               ; preds = %41
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @dlarf_.lastv, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* @dlarf_.lastv, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @dlarf_.i__, align 4
  br label %62

61:                                               ; preds = %50
  store i32 1, i32* @dlarf_.i__, align 4
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* @dlarf_.lastv, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* @dlarf_.i__, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to double
  %73 = fcmp oeq double %72, 0.000000e+00
  br label %74

74:                                               ; preds = %66, %63
  %75 = phi i1 [ false, %63 ], [ %73, %66 ]
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = load i32, i32* @dlarf_.lastv, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* @dlarf_.lastv, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @dlarf_.i__, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* @dlarf_.i__, align 4
  br label %63

83:                                               ; preds = %74
  %84 = load i64, i64* @dlarf_.applyleft, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32*, i32** %17, align 8
  %93 = call i32 @iladlc_(i32* @dlarf_.lastv, i32* %87, i32* %91, i32* %92)
  store i32 %93, i32* @dlarf_.lastc, align 4
  br label %102

94:                                               ; preds = %83
  %95 = load i32*, i32** %11, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @iladlr_(i32* %95, i32* @dlarf_.lastv, i32* %99, i32* %100)
  store i32 %101, i32* @dlarf_.lastc, align 4
  br label %102

102:                                              ; preds = %94, %86
  br label %103

103:                                              ; preds = %102, %9
  %104 = load i64, i64* @dlarf_.applyleft, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %103
  %107 = load i32, i32* @dlarf_.lastv, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32*, i32** %17, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32*, i32** %14, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = call i32 @dgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* @dlarf_.lastv, i32* @dlarf_.lastc, i32* @c_b15, i32* %113, i32* %114, i32* %116, i32* %117, i32* @c_b29, i32* %119, i32* @c__1)
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %21, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32*, i32** %14, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32*, i32** %17, align 8
  %134 = call i32 @dger_(i32* @dlarf_.lastv, i32* @dlarf_.lastc, i32* %21, i32* %125, i32* %126, i32* %128, i32* @c__1, i32* %132, i32* %133)
  br label %135

135:                                              ; preds = %109, %106
  br label %166

136:                                              ; preds = %103
  %137 = load i32, i32* @dlarf_.lastv, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %136
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32*, i32** %17, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32*, i32** %14, align 8
  %148 = load i32*, i32** %18, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = call i32 @dgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* @dlarf_.lastc, i32* @dlarf_.lastv, i32* @c_b15, i32* %143, i32* %144, i32* %146, i32* %147, i32* @c_b29, i32* %149, i32* @c__1)
  %151 = load i32*, i32** %15, align 8
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %21, align 4
  %154 = load i32*, i32** %18, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32*, i32** %14, align 8
  %159 = load i32*, i32** %16, align 8
  %160 = load i32, i32* %20, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32*, i32** %17, align 8
  %164 = call i32 @dger_(i32* @dlarf_.lastc, i32* @dlarf_.lastv, i32* %21, i32* %155, i32* @c__1, i32* %157, i32* %158, i32* %162, i32* %163)
  br label %165

165:                                              ; preds = %139, %136
  br label %166

166:                                              ; preds = %165, %135
  ret i32 0
}

declare dso_local i64 @lsame_(i8*, i8*) #1

declare dso_local i32 @iladlc_(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @iladlr_(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dgemv_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dger_(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
