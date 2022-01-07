; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_saxpy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_saxpy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saxpy_.i__ = internal global i32 0, align 4
@saxpy_.m = internal global i32 0, align 4
@saxpy_.ix = internal global i32 0, align 4
@saxpy_.iy = internal global i32 0, align 4
@saxpy_.mp1 = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saxpy_(i32* %0, float* %1, float* %2, i32* %3, float* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i32* %3, i32** %11, align 8
  store float* %4, float** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load float*, float** %12, align 8
  %16 = getelementptr inbounds float, float* %15, i32 -1
  store float* %16, float** %12, align 8
  %17 = load float*, float** %10, align 8
  %18 = getelementptr inbounds float, float* %17, i32 -1
  store float* %18, float** %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %211

23:                                               ; preds = %6
  %24 = load float*, float** %9, align 8
  %25 = load float, float* %24, align 4
  %26 = fcmp oeq float %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %211

28:                                               ; preds = %23
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %97

37:                                               ; preds = %32, %28
  store i32 1, i32* @saxpy_.ix, align 4
  store i32 1, i32* @saxpy_.iy, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 0, %43
  %45 = add nsw i32 %44, 1
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %45, %47
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @saxpy_.ix, align 4
  br label %50

50:                                               ; preds = %41, %37
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 0, %56
  %58 = add nsw i32 %57, 1
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %58, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @saxpy_.iy, align 4
  br label %63

63:                                               ; preds = %54, %50
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  store i32 1, i32* @saxpy_.i__, align 4
  br label %66

66:                                               ; preds = %93, %63
  %67 = load i32, i32* @saxpy_.i__, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load float*, float** %9, align 8
  %72 = load float, float* %71, align 4
  %73 = load float*, float** %10, align 8
  %74 = load i32, i32* @saxpy_.ix, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fmul float %72, %77
  %79 = load float*, float** %12, align 8
  %80 = load i32, i32* @saxpy_.iy, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = fadd float %83, %78
  store float %84, float* %82, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @saxpy_.ix, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* @saxpy_.ix, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @saxpy_.iy, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* @saxpy_.iy, align 4
  br label %93

93:                                               ; preds = %70
  %94 = load i32, i32* @saxpy_.i__, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @saxpy_.i__, align 4
  br label %66

96:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %211

97:                                               ; preds = %36
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %98, align 4
  %100 = srem i32 %99, 4
  store i32 %100, i32* @saxpy_.m, align 4
  %101 = load i32, i32* @saxpy_.m, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %134

104:                                              ; preds = %97
  %105 = load i32, i32* @saxpy_.m, align 4
  store i32 %105, i32* %14, align 4
  store i32 1, i32* @saxpy_.i__, align 4
  br label %106

106:                                              ; preds = %125, %104
  %107 = load i32, i32* @saxpy_.i__, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = load float*, float** %9, align 8
  %112 = load float, float* %111, align 4
  %113 = load float*, float** %10, align 8
  %114 = load i32, i32* @saxpy_.i__, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fmul float %112, %117
  %119 = load float*, float** %12, align 8
  %120 = load i32, i32* @saxpy_.i__, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fadd float %123, %118
  store float %124, float* %122, align 4
  br label %125

125:                                              ; preds = %110
  %126 = load i32, i32* @saxpy_.i__, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @saxpy_.i__, align 4
  br label %106

128:                                              ; preds = %106
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %211

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133, %103
  %135 = load i32, i32* @saxpy_.m, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* @saxpy_.mp1, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* @saxpy_.mp1, align 4
  store i32 %139, i32* @saxpy_.i__, align 4
  br label %140

140:                                              ; preds = %207, %134
  %141 = load i32, i32* @saxpy_.i__, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %210

144:                                              ; preds = %140
  %145 = load float*, float** %9, align 8
  %146 = load float, float* %145, align 4
  %147 = load float*, float** %10, align 8
  %148 = load i32, i32* @saxpy_.i__, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  %151 = load float, float* %150, align 4
  %152 = fmul float %146, %151
  %153 = load float*, float** %12, align 8
  %154 = load i32, i32* @saxpy_.i__, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fadd float %157, %152
  store float %158, float* %156, align 4
  %159 = load float*, float** %9, align 8
  %160 = load float, float* %159, align 4
  %161 = load float*, float** %10, align 8
  %162 = load i32, i32* @saxpy_.i__, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %161, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fmul float %160, %166
  %168 = load float*, float** %12, align 8
  %169 = load i32, i32* @saxpy_.i__, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %168, i64 %171
  %173 = load float, float* %172, align 4
  %174 = fadd float %173, %167
  store float %174, float* %172, align 4
  %175 = load float*, float** %9, align 8
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %10, align 8
  %178 = load i32, i32* @saxpy_.i__, align 4
  %179 = add nsw i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %177, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fmul float %176, %182
  %184 = load float*, float** %12, align 8
  %185 = load i32, i32* @saxpy_.i__, align 4
  %186 = add nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %184, i64 %187
  %189 = load float, float* %188, align 4
  %190 = fadd float %189, %183
  store float %190, float* %188, align 4
  %191 = load float*, float** %9, align 8
  %192 = load float, float* %191, align 4
  %193 = load float*, float** %10, align 8
  %194 = load i32, i32* @saxpy_.i__, align 4
  %195 = add nsw i32 %194, 3
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %193, i64 %196
  %198 = load float, float* %197, align 4
  %199 = fmul float %192, %198
  %200 = load float*, float** %12, align 8
  %201 = load i32, i32* @saxpy_.i__, align 4
  %202 = add nsw i32 %201, 3
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %200, i64 %203
  %205 = load float, float* %204, align 4
  %206 = fadd float %205, %199
  store float %206, float* %204, align 4
  br label %207

207:                                              ; preds = %144
  %208 = load i32, i32* @saxpy_.i__, align 4
  %209 = add nsw i32 %208, 4
  store i32 %209, i32* @saxpy_.i__, align 4
  br label %140

210:                                              ; preds = %140
  store i32 0, i32* %7, align 4
  br label %211

211:                                              ; preds = %210, %132, %96, %27, %22
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
