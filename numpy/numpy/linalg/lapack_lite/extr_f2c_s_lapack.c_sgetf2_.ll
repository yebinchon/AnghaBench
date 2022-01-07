; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgetf2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgetf2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgetf2_.i__ = internal global i32 0, align 4
@sgetf2_.j = internal global i32 0, align 4
@sgetf2_.jp = internal global i32 0, align 4
@sgetf2_.sfmin = internal global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [7 x i8] c"SGETF2\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@c__1 = common dso_local global i32 0, align 4
@c_b151 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgetf2_(i32* %0, i32* %1, float* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store float* %2, float** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load float*, float** %10, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float* %28, float** %10, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 -1
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32*, i32** %13, align 8
  store i32 -1, i32* %36, align 4
  br label %54

37:                                               ; preds = %6
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  store i32 -2, i32* %42, align 4
  br label %53

43:                                               ; preds = %37
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @max(i32 1, i32 %47)
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32*, i32** %13, align 8
  store i32 -4, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  %62 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 0, i32* %7, align 4
  br label %280

63:                                               ; preds = %54
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  store i32 0, i32* %7, align 4
  br label %280

72:                                               ; preds = %67
  %73 = call float @slamch_(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store float %73, float* @sgetf2_.sfmin, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @min(i32 %75, i32 %77)
  store i32 %78, i32* %16, align 4
  store i32 1, i32* @sgetf2_.j, align 4
  br label %79

79:                                               ; preds = %276, %72
  %80 = load i32, i32* @sgetf2_.j, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %279

83:                                               ; preds = %79
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @sgetf2_.j, align 4
  %87 = sub nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* @sgetf2_.j, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load float*, float** %10, align 8
  %92 = load i32, i32* @sgetf2_.j, align 4
  %93 = load i32, i32* @sgetf2_.j, align 4
  %94 = load i32, i32* %14, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %92, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %91, i64 %97
  %99 = call i32 @isamax_(i32* %17, float* %98, i32* @c__1)
  %100 = add nsw i32 %90, %99
  store i32 %100, i32* @sgetf2_.jp, align 4
  %101 = load i32, i32* @sgetf2_.jp, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* @sgetf2_.j, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load float*, float** %10, align 8
  %107 = load i32, i32* @sgetf2_.jp, align 4
  %108 = load i32, i32* @sgetf2_.j, align 4
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %106, i64 %112
  %114 = load float, float* %113, align 4
  %115 = fcmp une float %114, 0.000000e+00
  br i1 %115, label %116, label %219

116:                                              ; preds = %83
  %117 = load i32, i32* @sgetf2_.jp, align 4
  %118 = load i32, i32* @sgetf2_.j, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load i32*, i32** %9, align 8
  %122 = load float*, float** %10, align 8
  %123 = load i32, i32* @sgetf2_.j, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %122, i64 %126
  %128 = load i32*, i32** %11, align 8
  %129 = load float*, float** %10, align 8
  %130 = load i32, i32* @sgetf2_.jp, align 4
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %129, i64 %133
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @sswap_(i32* %121, float* %127, i32* %128, float* %134, i32* %135)
  br label %137

137:                                              ; preds = %120, %116
  %138 = load i32, i32* @sgetf2_.j, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %218

142:                                              ; preds = %137
  %143 = load float*, float** %10, align 8
  %144 = load i32, i32* @sgetf2_.j, align 4
  %145 = load i32, i32* @sgetf2_.j, align 4
  %146 = load i32, i32* %14, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %143, i64 %149
  %151 = load float, float* %150, align 4
  store float %151, float* %19, align 4
  %152 = load float, float* %19, align 4
  %153 = call i32 @dabs(float %152)
  %154 = sitofp i32 %153 to float
  %155 = load float, float* @sgetf2_.sfmin, align 4
  %156 = fcmp oge float %154, %155
  br i1 %156, label %157, label %182

157:                                              ; preds = %142
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @sgetf2_.j, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %17, align 4
  %162 = load float*, float** %10, align 8
  %163 = load i32, i32* @sgetf2_.j, align 4
  %164 = load i32, i32* @sgetf2_.j, align 4
  %165 = load i32, i32* %14, align 4
  %166 = mul nsw i32 %164, %165
  %167 = add nsw i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %162, i64 %168
  %170 = load float, float* %169, align 4
  %171 = fdiv float 1.000000e+00, %170
  store float %171, float* %19, align 4
  %172 = load float*, float** %10, align 8
  %173 = load i32, i32* @sgetf2_.j, align 4
  %174 = add nsw i32 %173, 1
  %175 = load i32, i32* @sgetf2_.j, align 4
  %176 = load i32, i32* %14, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %172, i64 %179
  %181 = call i32 @sscal_(i32* %17, float* %19, float* %180, i32* @c__1)
  br label %217

182:                                              ; preds = %142
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @sgetf2_.j, align 4
  %186 = sub nsw i32 %184, %185
  store i32 %186, i32* %17, align 4
  store i32 1, i32* @sgetf2_.i__, align 4
  br label %187

187:                                              ; preds = %213, %182
  %188 = load i32, i32* @sgetf2_.i__, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %216

191:                                              ; preds = %187
  %192 = load float*, float** %10, align 8
  %193 = load i32, i32* @sgetf2_.j, align 4
  %194 = load i32, i32* @sgetf2_.j, align 4
  %195 = load i32, i32* %14, align 4
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %192, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float*, float** %10, align 8
  %202 = load i32, i32* @sgetf2_.j, align 4
  %203 = load i32, i32* @sgetf2_.i__, align 4
  %204 = add nsw i32 %202, %203
  %205 = load i32, i32* @sgetf2_.j, align 4
  %206 = load i32, i32* %14, align 4
  %207 = mul nsw i32 %205, %206
  %208 = add nsw i32 %204, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %201, i64 %209
  %211 = load float, float* %210, align 4
  %212 = fdiv float %211, %200
  store float %212, float* %210, align 4
  br label %213

213:                                              ; preds = %191
  %214 = load i32, i32* @sgetf2_.i__, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @sgetf2_.i__, align 4
  br label %187

216:                                              ; preds = %187
  br label %217

217:                                              ; preds = %216, %157
  br label %218

218:                                              ; preds = %217, %137
  br label %227

219:                                              ; preds = %83
  %220 = load i32*, i32** %13, align 8
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i32, i32* @sgetf2_.j, align 4
  %225 = load i32*, i32** %13, align 8
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %223, %219
  br label %227

227:                                              ; preds = %226, %218
  %228 = load i32, i32* @sgetf2_.j, align 4
  %229 = load i32*, i32** %8, align 8
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %9, align 8
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @min(i32 %230, i32 %232)
  %234 = icmp slt i32 %228, %233
  br i1 %234, label %235, label %275

235:                                              ; preds = %227
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @sgetf2_.j, align 4
  %239 = sub nsw i32 %237, %238
  store i32 %239, i32* %17, align 4
  %240 = load i32*, i32** %9, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @sgetf2_.j, align 4
  %243 = sub nsw i32 %241, %242
  store i32 %243, i32* %18, align 4
  %244 = load float*, float** %10, align 8
  %245 = load i32, i32* @sgetf2_.j, align 4
  %246 = add nsw i32 %245, 1
  %247 = load i32, i32* @sgetf2_.j, align 4
  %248 = load i32, i32* %14, align 4
  %249 = mul nsw i32 %247, %248
  %250 = add nsw i32 %246, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %244, i64 %251
  %253 = load float*, float** %10, align 8
  %254 = load i32, i32* @sgetf2_.j, align 4
  %255 = load i32, i32* @sgetf2_.j, align 4
  %256 = add nsw i32 %255, 1
  %257 = load i32, i32* %14, align 4
  %258 = mul nsw i32 %256, %257
  %259 = add nsw i32 %254, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %253, i64 %260
  %262 = load i32*, i32** %11, align 8
  %263 = load float*, float** %10, align 8
  %264 = load i32, i32* @sgetf2_.j, align 4
  %265 = add nsw i32 %264, 1
  %266 = load i32, i32* @sgetf2_.j, align 4
  %267 = add nsw i32 %266, 1
  %268 = load i32, i32* %14, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %265, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %263, i64 %271
  %273 = load i32*, i32** %11, align 8
  %274 = call i32 @sger_(i32* %17, i32* %18, float* @c_b151, float* %252, i32* @c__1, float* %261, i32* %262, float* %272, i32* %273)
  br label %275

275:                                              ; preds = %235, %227
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* @sgetf2_.j, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* @sgetf2_.j, align 4
  br label %79

279:                                              ; preds = %79
  store i32 0, i32* %7, align 4
  br label %280

280:                                              ; preds = %279, %71, %58
  %281 = load i32, i32* %7, align 4
  ret i32 %281
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local float @slamch_(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @isamax_(i32*, float*, i32*) #1

declare dso_local i32 @sswap_(i32*, float*, i32*, float*, i32*) #1

declare dso_local i32 @dabs(float) #1

declare dso_local i32 @sscal_(i32*, float*, float*, i32*) #1

declare dso_local i32 @sger_(i32*, i32*, float*, float*, i32*, float*, i32*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
