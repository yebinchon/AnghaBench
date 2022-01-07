; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sdot_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sdot_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdot_.i__ = internal global i32 0, align 4
@sdot_.m = internal global i32 0, align 4
@sdot_.ix = internal global i32 0, align 4
@sdot_.iy = internal global i32 0, align 4
@sdot_.mp1 = internal global i32 0, align 4
@sdot_.stemp = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @sdot_(i32* %0, float* %1, i32* %2, float* %3, i32* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store float* %1, float** %8, align 8
  store i32* %2, i32** %9, align 8
  store float* %3, float** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load float*, float** %10, align 8
  %15 = getelementptr inbounds float, float* %14, i32 -1
  store float* %15, float** %10, align 8
  %16 = load float*, float** %8, align 8
  %17 = getelementptr inbounds float, float* %16, i32 -1
  store float* %17, float** %8, align 8
  store float 0.000000e+00, float* @sdot_.stemp, align 4
  store float 0.000000e+00, float* %13, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load float, float* %13, align 4
  store float %22, float* %6, align 4
  br label %216

23:                                               ; preds = %5
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %93

32:                                               ; preds = %27, %23
  store i32 1, i32* @sdot_.ix, align 4
  store i32 1, i32* @sdot_.iy, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 0, %38
  %40 = add nsw i32 %39, 1
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @sdot_.ix, align 4
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 0, %51
  %53 = add nsw i32 %52, 1
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @sdot_.iy, align 4
  br label %58

58:                                               ; preds = %49, %45
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  store i32 1, i32* @sdot_.i__, align 4
  br label %61

61:                                               ; preds = %87, %58
  %62 = load i32, i32* @sdot_.i__, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load float*, float** %8, align 8
  %67 = load i32, i32* @sdot_.ix, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  %71 = load float*, float** %10, align 8
  %72 = load i32, i32* @sdot_.iy, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fmul float %70, %75
  %77 = load float, float* @sdot_.stemp, align 4
  %78 = fadd float %77, %76
  store float %78, float* @sdot_.stemp, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @sdot_.ix, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* @sdot_.ix, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @sdot_.iy, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* @sdot_.iy, align 4
  br label %87

87:                                               ; preds = %65
  %88 = load i32, i32* @sdot_.i__, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @sdot_.i__, align 4
  br label %61

90:                                               ; preds = %61
  %91 = load float, float* @sdot_.stemp, align 4
  store float %91, float* %13, align 4
  %92 = load float, float* %13, align 4
  store float %92, float* %6, align 4
  br label %216

93:                                               ; preds = %31
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %95, 5
  store i32 %96, i32* @sdot_.m, align 4
  %97 = load i32, i32* @sdot_.m, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %129

100:                                              ; preds = %93
  %101 = load i32, i32* @sdot_.m, align 4
  store i32 %101, i32* %12, align 4
  store i32 1, i32* @sdot_.i__, align 4
  br label %102

102:                                              ; preds = %120, %100
  %103 = load i32, i32* @sdot_.i__, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = load float*, float** %8, align 8
  %108 = load i32, i32* @sdot_.i__, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  %111 = load float, float* %110, align 4
  %112 = load float*, float** %10, align 8
  %113 = load i32, i32* @sdot_.i__, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fmul float %111, %116
  %118 = load float, float* @sdot_.stemp, align 4
  %119 = fadd float %118, %117
  store float %119, float* @sdot_.stemp, align 4
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* @sdot_.i__, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @sdot_.i__, align 4
  br label %102

123:                                              ; preds = %102
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %125, 5
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %213

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %99
  %130 = load i32, i32* @sdot_.m, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @sdot_.mp1, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* @sdot_.mp1, align 4
  store i32 %134, i32* @sdot_.i__, align 4
  br label %135

135:                                              ; preds = %209, %129
  %136 = load i32, i32* @sdot_.i__, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %212

139:                                              ; preds = %135
  %140 = load float, float* @sdot_.stemp, align 4
  %141 = load float*, float** %8, align 8
  %142 = load i32, i32* @sdot_.i__, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %10, align 8
  %147 = load i32, i32* @sdot_.i__, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fmul float %145, %150
  %152 = fadd float %140, %151
  %153 = load float*, float** %8, align 8
  %154 = load i32, i32* @sdot_.i__, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float, float* %153, i64 %156
  %158 = load float, float* %157, align 4
  %159 = load float*, float** %10, align 8
  %160 = load i32, i32* @sdot_.i__, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %159, i64 %162
  %164 = load float, float* %163, align 4
  %165 = fmul float %158, %164
  %166 = fadd float %152, %165
  %167 = load float*, float** %8, align 8
  %168 = load i32, i32* @sdot_.i__, align 4
  %169 = add nsw i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %167, i64 %170
  %172 = load float, float* %171, align 4
  %173 = load float*, float** %10, align 8
  %174 = load i32, i32* @sdot_.i__, align 4
  %175 = add nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %173, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fmul float %172, %178
  %180 = fadd float %166, %179
  %181 = load float*, float** %8, align 8
  %182 = load i32, i32* @sdot_.i__, align 4
  %183 = add nsw i32 %182, 3
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %181, i64 %184
  %186 = load float, float* %185, align 4
  %187 = load float*, float** %10, align 8
  %188 = load i32, i32* @sdot_.i__, align 4
  %189 = add nsw i32 %188, 3
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %187, i64 %190
  %192 = load float, float* %191, align 4
  %193 = fmul float %186, %192
  %194 = fadd float %180, %193
  %195 = load float*, float** %8, align 8
  %196 = load i32, i32* @sdot_.i__, align 4
  %197 = add nsw i32 %196, 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %195, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float*, float** %10, align 8
  %202 = load i32, i32* @sdot_.i__, align 4
  %203 = add nsw i32 %202, 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %201, i64 %204
  %206 = load float, float* %205, align 4
  %207 = fmul float %200, %206
  %208 = fadd float %194, %207
  store float %208, float* @sdot_.stemp, align 4
  br label %209

209:                                              ; preds = %139
  %210 = load i32, i32* @sdot_.i__, align 4
  %211 = add nsw i32 %210, 5
  store i32 %211, i32* @sdot_.i__, align 4
  br label %135

212:                                              ; preds = %135
  br label %213

213:                                              ; preds = %212, %127
  %214 = load float, float* @sdot_.stemp, align 4
  store float %214, float* %13, align 4
  %215 = load float, float* %13, align 4
  store float %215, float* %6, align 4
  br label %216

216:                                              ; preds = %213, %90, %21
  %217 = load float, float* %6, align 4
  ret float %217
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
