; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorgl2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorgl2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sorgl2_.i__ = internal global i32 0, align 4
@sorgl2_.j = internal global i32 0, align 4
@sorgl2_.l = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SORGL2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sorgl2_(i32* %0, i32* %1, i32* %2, float* %3, i32* %4, float* %5, float* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store float* %3, float** %13, align 8
  store i32* %4, i32** %14, align 8
  store float* %5, float** %15, align 8
  store float* %6, float** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %19, align 4
  %28 = load float*, float** %13, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds float, float* %28, i64 %30
  store float* %31, float** %13, align 8
  %32 = load float*, float** %15, align 8
  %33 = getelementptr inbounds float, float* %32, i32 -1
  store float* %33, float** %15, align 8
  %34 = load float*, float** %16, align 8
  %35 = getelementptr inbounds float, float* %34, i32 -1
  store float* %35, float** %16, align 8
  %36 = load i32*, i32** %17, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i32*, i32** %17, align 8
  store i32 -1, i32* %41, align 4
  br label %74

42:                                               ; preds = %8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32*, i32** %17, align 8
  store i32 -2, i32* %49, align 4
  br label %73

50:                                               ; preds = %42
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %50
  %61 = load i32*, i32** %17, align 8
  store i32 -3, i32* %61, align 4
  br label %72

62:                                               ; preds = %54
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @max(i32 1, i32 %66)
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32*, i32** %17, align 8
  store i32 -5, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %20, align 4
  %82 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %267

83:                                               ; preds = %74
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %267

88:                                               ; preds = %83
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %88
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %20, align 4
  store i32 1, i32* @sorgl2_.j, align 4
  br label %97

97:                                               ; preds = %143, %94
  %98 = load i32, i32* @sorgl2_.j, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %146

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %21, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* @sorgl2_.l, align 4
  br label %107

107:                                              ; preds = %120, %101
  %108 = load i32, i32* @sorgl2_.l, align 4
  %109 = load i32, i32* %21, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load float*, float** %13, align 8
  %113 = load i32, i32* @sorgl2_.l, align 4
  %114 = load i32, i32* @sorgl2_.j, align 4
  %115 = load i32, i32* %18, align 4
  %116 = mul nsw i32 %114, %115
  %117 = add nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %112, i64 %118
  store float 0.000000e+00, float* %119, align 4
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* @sorgl2_.l, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @sorgl2_.l, align 4
  br label %107

123:                                              ; preds = %107
  %124 = load i32, i32* @sorgl2_.j, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %124, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  %129 = load i32, i32* @sorgl2_.j, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %129, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load float*, float** %13, align 8
  %135 = load i32, i32* @sorgl2_.j, align 4
  %136 = load i32, i32* @sorgl2_.j, align 4
  %137 = load i32, i32* %18, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %134, i64 %140
  store float 1.000000e+00, float* %141, align 4
  br label %142

142:                                              ; preds = %133, %128, %123
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* @sorgl2_.j, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* @sorgl2_.j, align 4
  br label %97

146:                                              ; preds = %97
  br label %147

147:                                              ; preds = %146, %88
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* @sorgl2_.i__, align 4
  br label %150

150:                                              ; preds = %263, %147
  %151 = load i32, i32* @sorgl2_.i__, align 4
  %152 = icmp sge i32 %151, 1
  br i1 %152, label %153, label %266

153:                                              ; preds = %150
  %154 = load i32, i32* @sorgl2_.i__, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %229

158:                                              ; preds = %153
  %159 = load i32, i32* @sorgl2_.i__, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %207

163:                                              ; preds = %158
  %164 = load float*, float** %13, align 8
  %165 = load i32, i32* @sorgl2_.i__, align 4
  %166 = load i32, i32* @sorgl2_.i__, align 4
  %167 = load i32, i32* %18, align 4
  %168 = mul nsw i32 %166, %167
  %169 = add nsw i32 %165, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %164, i64 %170
  store float 1.000000e+00, float* %171, align 4
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @sorgl2_.i__, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %20, align 4
  %176 = load i32*, i32** %11, align 8
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @sorgl2_.i__, align 4
  %179 = sub nsw i32 %177, %178
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %21, align 4
  %181 = load float*, float** %13, align 8
  %182 = load i32, i32* @sorgl2_.i__, align 4
  %183 = load i32, i32* @sorgl2_.i__, align 4
  %184 = load i32, i32* %18, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %181, i64 %187
  %189 = load i32*, i32** %14, align 8
  %190 = load float*, float** %15, align 8
  %191 = load i32, i32* @sorgl2_.i__, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  %194 = load float*, float** %13, align 8
  %195 = load i32, i32* @sorgl2_.i__, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* @sorgl2_.i__, align 4
  %198 = load i32, i32* %18, align 4
  %199 = mul nsw i32 %197, %198
  %200 = add nsw i32 %196, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %194, i64 %201
  %203 = load i32*, i32** %14, align 8
  %204 = load float*, float** %16, align 8
  %205 = getelementptr inbounds float, float* %204, i64 1
  %206 = call i32 @slarf_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32* %21, float* %188, i32* %189, float* %193, float* %202, i32* %203, float* %205)
  br label %207

207:                                              ; preds = %163, %158
  %208 = load i32*, i32** %11, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @sorgl2_.i__, align 4
  %211 = sub nsw i32 %209, %210
  store i32 %211, i32* %20, align 4
  %212 = load float*, float** %15, align 8
  %213 = load i32, i32* @sorgl2_.i__, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fneg float %216
  store float %217, float* %22, align 4
  %218 = load float*, float** %13, align 8
  %219 = load i32, i32* @sorgl2_.i__, align 4
  %220 = load i32, i32* @sorgl2_.i__, align 4
  %221 = add nsw i32 %220, 1
  %222 = load i32, i32* %18, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %219, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %218, i64 %225
  %227 = load i32*, i32** %14, align 8
  %228 = call i32 @sscal_(i32* %20, float* %22, float* %226, i32* %227)
  br label %229

229:                                              ; preds = %207, %153
  %230 = load float*, float** %15, align 8
  %231 = load i32, i32* @sorgl2_.i__, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  %234 = load float, float* %233, align 4
  %235 = fsub float 1.000000e+00, %234
  %236 = load float*, float** %13, align 8
  %237 = load i32, i32* @sorgl2_.i__, align 4
  %238 = load i32, i32* @sorgl2_.i__, align 4
  %239 = load i32, i32* %18, align 4
  %240 = mul nsw i32 %238, %239
  %241 = add nsw i32 %237, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %236, i64 %242
  store float %235, float* %243, align 4
  %244 = load i32, i32* @sorgl2_.i__, align 4
  %245 = sub nsw i32 %244, 1
  store i32 %245, i32* %20, align 4
  store i32 1, i32* @sorgl2_.l, align 4
  br label %246

246:                                              ; preds = %259, %229
  %247 = load i32, i32* @sorgl2_.l, align 4
  %248 = load i32, i32* %20, align 4
  %249 = icmp sle i32 %247, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %246
  %251 = load float*, float** %13, align 8
  %252 = load i32, i32* @sorgl2_.i__, align 4
  %253 = load i32, i32* @sorgl2_.l, align 4
  %254 = load i32, i32* %18, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %252, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %251, i64 %257
  store float 0.000000e+00, float* %258, align 4
  br label %259

259:                                              ; preds = %250
  %260 = load i32, i32* @sorgl2_.l, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* @sorgl2_.l, align 4
  br label %246

262:                                              ; preds = %246
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* @sorgl2_.i__, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* @sorgl2_.i__, align 4
  br label %150

266:                                              ; preds = %150
  store i32 0, i32* %9, align 4
  br label %267

267:                                              ; preds = %266, %87, %78
  %268 = load i32, i32* %9, align 4
  ret i32 %268
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @slarf_(i8*, i32*, i32*, float*, i32*, float*, float*, i32*, float*) #1

declare dso_local i32 @sscal_(i32*, float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
