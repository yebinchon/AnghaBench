; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slarf_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slarf_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slarf_.i__ = internal global i32 0, align 4
@slarf_.applyleft = internal global i64 0, align 8
@slarf_.lastc = internal global i32 0, align 4
@slarf_.lastv = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b15 = common dso_local global float 0.000000e+00, align 4
@c_b29 = common dso_local global float 0.000000e+00, align 4
@c__1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slarf_(i8* %0, i32* %1, i32* %2, float* %3, i32* %4, float* %5, float* %6, i32* %7, float* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store float* %3, float** %13, align 8
  store i32* %4, i32** %14, align 8
  store float* %5, float** %15, align 8
  store float* %6, float** %16, align 8
  store i32* %7, i32** %17, align 8
  store float* %8, float** %18, align 8
  %22 = load float*, float** %13, align 8
  %23 = getelementptr inbounds float, float* %22, i32 -1
  store float* %23, float** %13, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = load float*, float** %16, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds float, float* %29, i64 %31
  store float* %32, float** %16, align 8
  %33 = load float*, float** %18, align 8
  %34 = getelementptr inbounds float, float* %33, i32 -1
  store float* %34, float** %18, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @lsame_(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %36, i64* @slarf_.applyleft, align 8
  store i32 0, i32* @slarf_.lastv, align 4
  store i32 0, i32* @slarf_.lastc, align 4
  %37 = load float*, float** %15, align 8
  %38 = load float, float* %37, align 4
  %39 = fcmp une float %38, 0.000000e+00
  br i1 %39, label %40, label %101

40:                                               ; preds = %9
  %41 = load i64, i64* @slarf_.applyleft, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* @slarf_.lastv, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* @slarf_.lastv, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @slarf_.lastv, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @slarf_.i__, align 4
  br label %61

60:                                               ; preds = %49
  store i32 1, i32* @slarf_.i__, align 4
  br label %61

61:                                               ; preds = %60, %53
  br label %62

62:                                               ; preds = %74, %61
  %63 = load i32, i32* @slarf_.lastv, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load float*, float** %13, align 8
  %67 = load i32, i32* @slarf_.i__, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fcmp oeq float %70, 0.000000e+00
  br label %72

72:                                               ; preds = %65, %62
  %73 = phi i1 [ false, %62 ], [ %71, %65 ]
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = load i32, i32* @slarf_.lastv, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* @slarf_.lastv, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @slarf_.i__, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* @slarf_.i__, align 4
  br label %62

81:                                               ; preds = %72
  %82 = load i64, i64* @slarf_.applyleft, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i32*, i32** %12, align 8
  %86 = load float*, float** %16, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @ilaslc_(i32* @slarf_.lastv, i32* %85, float* %89, i32* %90)
  store i32 %91, i32* @slarf_.lastc, align 4
  br label %100

92:                                               ; preds = %81
  %93 = load i32*, i32** %11, align 8
  %94 = load float*, float** %16, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @ilaslr_(i32* %93, i32* @slarf_.lastv, float* %97, i32* %98)
  store i32 %99, i32* @slarf_.lastc, align 4
  br label %100

100:                                              ; preds = %92, %84
  br label %101

101:                                              ; preds = %100, %9
  %102 = load i64, i64* @slarf_.applyleft, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %101
  %105 = load i32, i32* @slarf_.lastv, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %104
  %108 = load float*, float** %16, align 8
  %109 = load i32, i32* %20, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %108, i64 %110
  %112 = load i32*, i32** %17, align 8
  %113 = load float*, float** %13, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  %115 = load i32*, i32** %14, align 8
  %116 = load float*, float** %18, align 8
  %117 = getelementptr inbounds float, float* %116, i64 1
  %118 = call i32 @sgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* @slarf_.lastv, i32* @slarf_.lastc, float* @c_b15, float* %111, i32* %112, float* %114, i32* %115, float* @c_b29, float* %117, i32* @c__1)
  %119 = load float*, float** %15, align 8
  %120 = load float, float* %119, align 4
  %121 = fneg float %120
  store float %121, float* %21, align 4
  %122 = load float*, float** %13, align 8
  %123 = getelementptr inbounds float, float* %122, i64 1
  %124 = load i32*, i32** %14, align 8
  %125 = load float*, float** %18, align 8
  %126 = getelementptr inbounds float, float* %125, i64 1
  %127 = load float*, float** %16, align 8
  %128 = load i32, i32* %20, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load i32*, i32** %17, align 8
  %132 = call i32 @sger_(i32* @slarf_.lastv, i32* @slarf_.lastc, float* %21, float* %123, i32* %124, float* %126, i32* @c__1, float* %130, i32* %131)
  br label %133

133:                                              ; preds = %107, %104
  br label %164

134:                                              ; preds = %101
  %135 = load i32, i32* @slarf_.lastv, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  %138 = load float*, float** %16, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  %142 = load i32*, i32** %17, align 8
  %143 = load float*, float** %13, align 8
  %144 = getelementptr inbounds float, float* %143, i64 1
  %145 = load i32*, i32** %14, align 8
  %146 = load float*, float** %18, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  %148 = call i32 @sgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* @slarf_.lastc, i32* @slarf_.lastv, float* @c_b15, float* %141, i32* %142, float* %144, i32* %145, float* @c_b29, float* %147, i32* @c__1)
  %149 = load float*, float** %15, align 8
  %150 = load float, float* %149, align 4
  %151 = fneg float %150
  store float %151, float* %21, align 4
  %152 = load float*, float** %18, align 8
  %153 = getelementptr inbounds float, float* %152, i64 1
  %154 = load float*, float** %13, align 8
  %155 = getelementptr inbounds float, float* %154, i64 1
  %156 = load i32*, i32** %14, align 8
  %157 = load float*, float** %16, align 8
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  %161 = load i32*, i32** %17, align 8
  %162 = call i32 @sger_(i32* @slarf_.lastc, i32* @slarf_.lastv, float* %21, float* %153, i32* @c__1, float* %155, i32* %156, float* %160, i32* %161)
  br label %163

163:                                              ; preds = %137, %134
  br label %164

164:                                              ; preds = %163, %133
  ret i32 0
}

declare dso_local i64 @lsame_(i8*, i8*) #1

declare dso_local i32 @ilaslc_(i32*, i32*, float*, i32*) #1

declare dso_local i32 @ilaslr_(i32*, i32*, float*, i32*) #1

declare dso_local i32 @sgemv_(i8*, i32*, i32*, float*, float*, i32*, float*, i32*, float*, float*, i32*) #1

declare dso_local i32 @sger_(i32*, i32*, float*, float*, i32*, float*, i32*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
