; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorm2l_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorm2l_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sorm2l_.i__ = internal global i32 0, align 4
@sorm2l_.i1 = internal global i32 0, align 4
@sorm2l_.i2 = internal global i32 0, align 4
@sorm2l_.i3 = internal global i32 0, align 4
@sorm2l_.mi = internal global i32 0, align 4
@sorm2l_.ni = internal global i32 0, align 4
@sorm2l_.nq = internal global i32 0, align 4
@sorm2l_.aii = internal global float 0.000000e+00, align 4
@sorm2l_.left = internal global i8* null, align 8
@sorm2l_.notran = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SORM2L\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sorm2l_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, float* %5, i32* %6, float* %7, float* %8, i32* %9, float* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca float*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i8* %0, i8** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store float* %5, float** %19, align 8
  store i32* %6, i32** %20, align 8
  store float* %7, float** %21, align 8
  store float* %8, float** %22, align 8
  store i32* %9, i32** %23, align 8
  store float* %10, float** %24, align 8
  store i32* %11, i32** %25, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %26, align 4
  %34 = load i32, i32* %26, align 4
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %27, align 4
  %36 = load i32, i32* %27, align 4
  %37 = load float*, float** %19, align 8
  %38 = sext i32 %36 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds float, float* %37, i64 %39
  store float* %40, float** %19, align 8
  %41 = load float*, float** %21, align 8
  %42 = getelementptr inbounds float, float* %41, i32 -1
  store float* %42, float** %21, align 8
  %43 = load i32*, i32** %23, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %28, align 4
  %45 = load i32, i32* %28, align 4
  %46 = add nsw i32 1, %45
  store i32 %46, i32* %29, align 4
  %47 = load i32, i32* %29, align 4
  %48 = load float*, float** %22, align 8
  %49 = sext i32 %47 to i64
  %50 = sub i64 0, %49
  %51 = getelementptr inbounds float, float* %48, i64 %50
  store float* %51, float** %22, align 8
  %52 = load float*, float** %24, align 8
  %53 = getelementptr inbounds float, float* %52, i32 -1
  store float* %53, float** %24, align 8
  %54 = load i32*, i32** %25, align 8
  store i32 0, i32* %54, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = call i8* @lsame_(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %56, i8** @sorm2l_.left, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = call i8* @lsame_(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** @sorm2l_.notran, align 8
  %59 = load i8*, i8** @sorm2l_.left, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %12
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @sorm2l_.nq, align 4
  br label %67

64:                                               ; preds = %12
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* @sorm2l_.nq, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** @sorm2l_.left, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %14, align 8
  %72 = call i8* @lsame_(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %25, align 8
  store i32 -1, i32* %75, align 4
  br label %131

76:                                               ; preds = %70, %67
  %77 = load i8*, i8** @sorm2l_.notran, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %15, align 8
  %81 = call i8* @lsame_(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp ne i8* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %25, align 8
  store i32 -2, i32* %84, align 4
  br label %130

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32*, i32** %25, align 8
  store i32 -3, i32* %90, align 4
  br label %129

91:                                               ; preds = %85
  %92 = load i32*, i32** %17, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32*, i32** %25, align 8
  store i32 -4, i32* %96, align 4
  br label %128

97:                                               ; preds = %91
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @sorm2l_.nq, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101, %97
  %107 = load i32*, i32** %25, align 8
  store i32 -5, i32* %107, align 4
  br label %127

108:                                              ; preds = %101
  %109 = load i32*, i32** %20, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @sorm2l_.nq, align 4
  %112 = call i32 @max(i32 1, i32 %111)
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32*, i32** %25, align 8
  store i32 -7, i32* %115, align 4
  br label %126

116:                                              ; preds = %108
  %117 = load i32*, i32** %23, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @max(i32 1, i32 %120)
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32*, i32** %25, align 8
  store i32 -10, i32* %124, align 4
  br label %125

125:                                              ; preds = %123, %116
  br label %126

126:                                              ; preds = %125, %114
  br label %127

127:                                              ; preds = %126, %106
  br label %128

128:                                              ; preds = %127, %95
  br label %129

129:                                              ; preds = %128, %89
  br label %130

130:                                              ; preds = %129, %83
  br label %131

131:                                              ; preds = %130, %74
  %132 = load i32*, i32** %25, align 8
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32*, i32** %25, align 8
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %30, align 4
  %139 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  store i32 0, i32* %13, align 4
  br label %286

140:                                              ; preds = %131
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = load i32*, i32** %17, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = load i32*, i32** %18, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148, %144, %140
  store i32 0, i32* %13, align 4
  br label %286

153:                                              ; preds = %148
  %154 = load i8*, i8** @sorm2l_.left, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** @sorm2l_.notran, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156, %153
  %160 = load i8*, i8** @sorm2l_.left, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %168, label %162

162:                                              ; preds = %159
  %163 = load i8*, i8** @sorm2l_.notran, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %162, %156
  store i32 1, i32* @sorm2l_.i1, align 4
  %166 = load i32*, i32** %18, align 8
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* @sorm2l_.i2, align 4
  store i32 1, i32* @sorm2l_.i3, align 4
  br label %171

168:                                              ; preds = %162, %159
  %169 = load i32*, i32** %18, align 8
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* @sorm2l_.i1, align 4
  store i32 1, i32* @sorm2l_.i2, align 4
  store i32 -1, i32* @sorm2l_.i3, align 4
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i8*, i8** @sorm2l_.left, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** %17, align 8
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* @sorm2l_.ni, align 4
  br label %180

177:                                              ; preds = %171
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* @sorm2l_.mi, align 4
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* @sorm2l_.i2, align 4
  store i32 %181, i32* %30, align 4
  %182 = load i32, i32* @sorm2l_.i3, align 4
  store i32 %182, i32* %31, align 4
  %183 = load i32, i32* @sorm2l_.i1, align 4
  store i32 %183, i32* @sorm2l_.i__, align 4
  br label %184

184:                                              ; preds = %281, %180
  %185 = load i32, i32* %31, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load i32, i32* @sorm2l_.i__, align 4
  %189 = load i32, i32* %30, align 4
  %190 = icmp sge i32 %188, %189
  %191 = zext i1 %190 to i32
  br label %197

192:                                              ; preds = %184
  %193 = load i32, i32* @sorm2l_.i__, align 4
  %194 = load i32, i32* %30, align 4
  %195 = icmp sle i32 %193, %194
  %196 = zext i1 %195 to i32
  br label %197

197:                                              ; preds = %192, %187
  %198 = phi i32 [ %191, %187 ], [ %196, %192 ]
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %285

200:                                              ; preds = %197
  %201 = load i8*, i8** @sorm2l_.left, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load i32*, i32** %16, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %18, align 8
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %205, %207
  %209 = load i32, i32* @sorm2l_.i__, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* @sorm2l_.mi, align 4
  br label %219

211:                                              ; preds = %200
  %212 = load i32*, i32** %17, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %18, align 8
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %213, %215
  %217 = load i32, i32* @sorm2l_.i__, align 4
  %218 = add nsw i32 %216, %217
  store i32 %218, i32* @sorm2l_.ni, align 4
  br label %219

219:                                              ; preds = %211, %203
  %220 = load float*, float** %19, align 8
  %221 = load i32, i32* @sorm2l_.nq, align 4
  %222 = load i32*, i32** %18, align 8
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %221, %223
  %225 = load i32, i32* @sorm2l_.i__, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* @sorm2l_.i__, align 4
  %228 = load i32, i32* %26, align 4
  %229 = mul nsw i32 %227, %228
  %230 = add nsw i32 %226, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %220, i64 %231
  %233 = load float, float* %232, align 4
  store float %233, float* @sorm2l_.aii, align 4
  %234 = load float*, float** %19, align 8
  %235 = load i32, i32* @sorm2l_.nq, align 4
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %235, %237
  %239 = load i32, i32* @sorm2l_.i__, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* @sorm2l_.i__, align 4
  %242 = load i32, i32* %26, align 4
  %243 = mul nsw i32 %241, %242
  %244 = add nsw i32 %240, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %234, i64 %245
  store float 1.000000e+00, float* %246, align 4
  %247 = load i8*, i8** %14, align 8
  %248 = load float*, float** %19, align 8
  %249 = load i32, i32* @sorm2l_.i__, align 4
  %250 = load i32, i32* %26, align 4
  %251 = mul nsw i32 %249, %250
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %248, i64 %253
  %255 = load float*, float** %21, align 8
  %256 = load i32, i32* @sorm2l_.i__, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %255, i64 %257
  %259 = load float*, float** %22, align 8
  %260 = load i32, i32* %29, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  %263 = load i32*, i32** %23, align 8
  %264 = load float*, float** %24, align 8
  %265 = getelementptr inbounds float, float* %264, i64 1
  %266 = call i32 @slarf_(i8* %247, i32* @sorm2l_.mi, i32* @sorm2l_.ni, float* %254, i32* @c__1, float* %258, float* %262, i32* %263, float* %265)
  %267 = load float, float* @sorm2l_.aii, align 4
  %268 = load float*, float** %19, align 8
  %269 = load i32, i32* @sorm2l_.nq, align 4
  %270 = load i32*, i32** %18, align 8
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %269, %271
  %273 = load i32, i32* @sorm2l_.i__, align 4
  %274 = add nsw i32 %272, %273
  %275 = load i32, i32* @sorm2l_.i__, align 4
  %276 = load i32, i32* %26, align 4
  %277 = mul nsw i32 %275, %276
  %278 = add nsw i32 %274, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %268, i64 %279
  store float %267, float* %280, align 4
  br label %281

281:                                              ; preds = %219
  %282 = load i32, i32* %31, align 4
  %283 = load i32, i32* @sorm2l_.i__, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* @sorm2l_.i__, align 4
  br label %184

285:                                              ; preds = %197
  store i32 0, i32* %13, align 4
  br label %286

286:                                              ; preds = %285, %152, %135
  %287 = load i32, i32* %13, align 4
  ret i32 %287
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @slarf_(i8*, i32*, i32*, float*, i32*, float*, float*, i32*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
