; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdlib.c_strtod.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdlib.c_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@powersOf10 = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @strtod(i8* %0, i8** %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 511, i32* %6, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %28, %2
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 zeroext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %12, align 8
  br label %23

31:                                               ; preds = %23
  %32 = load i8*, i8** %12, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %12, align 8
  br label %50

40:                                               ; preds = %31
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %48, %36
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = trunc i32 %55 to i8
  %57 = call i64 @isdigit(i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 46
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %17, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %59
  br label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %17, align 4
  br label %68

68:                                               ; preds = %66, %51
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %12, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %51

74:                                               ; preds = %65
  %75 = load i8*, i8** %12, align 8
  store i8* %75, i8** %18, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = sext i32 %76 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8* %80, i8** %12, align 8
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %17, align 4
  br label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %16, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %85, %83
  %89 = load i32, i32* %16, align 4
  %90 = icmp sgt i32 %89, 18
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %92, 18
  store i32 %93, i32* %15, align 4
  store i32 18, i32* %16, align 4
  br label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %16, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  store double 0.000000e+00, double* %9, align 8
  %102 = load i8*, i8** %4, align 8
  store i8* %102, i8** %12, align 8
  br label %278

103:                                              ; preds = %98
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %127, %103
  %105 = load i32, i32* %16, align 4
  %106 = icmp sgt i32 %105, 9
  br i1 %106, label %107, label %130

107:                                              ; preds = %104
  %108 = load i8*, i8** %12, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  store i32 %110, i32* %13, align 4
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, 46
  br i1 %114, label %115, label %121

115:                                              ; preds = %107
  %116 = load i8*, i8** %12, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  store i32 %118, i32* %13, align 4
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** %12, align 8
  br label %121

121:                                              ; preds = %115, %107
  %122 = load i32, i32* %19, align 4
  %123 = mul nsw i32 10, %122
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %124, 48
  %126 = add nsw i32 %123, %125
  store i32 %126, i32* %19, align 4
  br label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %16, align 4
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %104

130:                                              ; preds = %104
  store i32 0, i32* %20, align 4
  br label %131

131:                                              ; preds = %154, %130
  %132 = load i32, i32* %16, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %131
  %135 = load i8*, i8** %12, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = load i8*, i8** %12, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8* %139, i8** %12, align 8
  %140 = load i32, i32* %13, align 4
  %141 = icmp eq i32 %140, 46
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i8*, i8** %12, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  store i32 %145, i32* %13, align 4
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 1
  store i8* %147, i8** %12, align 8
  br label %148

148:                                              ; preds = %142, %134
  %149 = load i32, i32* %20, align 4
  %150 = mul nsw i32 10, %149
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 %151, 48
  %153 = add nsw i32 %150, %152
  store i32 %153, i32* %20, align 4
  br label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %16, align 4
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %16, align 4
  br label %131

157:                                              ; preds = %131
  %158 = load i32, i32* %19, align 4
  %159 = sitofp i32 %158 to double
  %160 = fmul double 1.000000e+09, %159
  %161 = load i32, i32* %20, align 4
  %162 = sitofp i32 %161 to double
  %163 = fadd double %160, %162
  store double %163, double* %9, align 8
  br label %164

164:                                              ; preds = %157
  %165 = load i8*, i8** %18, align 8
  store i8* %165, i8** %12, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 69
  br i1 %169, label %175, label %170

170:                                              ; preds = %164
  %171 = load i8*, i8** %12, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 101
  br i1 %174, label %175, label %220

175:                                              ; preds = %170, %164
  %176 = load i8*, i8** %12, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  store i8* %177, i8** %12, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 45
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %8, align 4
  %184 = load i8*, i8** %12, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8* %185, i8** %12, align 8
  br label %196

186:                                              ; preds = %175
  %187 = load i8*, i8** %12, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 43
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i8*, i8** %12, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  store i8* %193, i8** %12, align 8
  br label %194

194:                                              ; preds = %191, %186
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %194, %182
  %197 = load i8*, i8** %12, align 8
  %198 = load i8, i8* %197, align 1
  %199 = call i64 @isdigit(i8 zeroext %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %196
  %202 = load i8*, i8** %18, align 8
  store i8* %202, i8** %12, align 8
  br label %278

203:                                              ; preds = %196
  br label %204

204:                                              ; preds = %209, %203
  %205 = load i8*, i8** %12, align 8
  %206 = load i8, i8* %205, align 1
  %207 = call i64 @isdigit(i8 zeroext %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  %210 = load i32, i32* %14, align 4
  %211 = mul nsw i32 %210, 10
  %212 = load i8*, i8** %12, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = sub nsw i32 %214, 48
  %216 = add nsw i32 %211, %215
  store i32 %216, i32* %14, align 4
  %217 = load i8*, i8** %12, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8* %218, i8** %12, align 8
  br label %204

219:                                              ; preds = %204
  br label %220

220:                                              ; preds = %219, %170
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %14, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %14, align 4
  br label %231

227:                                              ; preds = %220
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %14, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %14, align 4
  br label %231

231:                                              ; preds = %227, %223
  %232 = load i32, i32* %14, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load i32, i32* @TRUE, align 4
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %14, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %14, align 4
  br label %240

238:                                              ; preds = %231
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %238, %234
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load i32, i32* %6, align 4
  store i32 %245, i32* %14, align 4
  br label %246

246:                                              ; preds = %244, %240
  store double 1.000000e+00, double* %10, align 8
  %247 = load double*, double** @powersOf10, align 8
  store double* %247, double** %11, align 8
  br label %248

248:                                              ; preds = %261, %246
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load i32, i32* %14, align 4
  %253 = and i32 %252, 1
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %251
  %256 = load double*, double** %11, align 8
  %257 = load double, double* %256, align 8
  %258 = load double, double* %10, align 8
  %259 = fmul double %258, %257
  store double %259, double* %10, align 8
  br label %260

260:                                              ; preds = %255, %251
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %14, align 4
  %263 = ashr i32 %262, 1
  store i32 %263, i32* %14, align 4
  %264 = load double*, double** %11, align 8
  %265 = getelementptr inbounds double, double* %264, i64 1
  store double* %265, double** %11, align 8
  br label %248

266:                                              ; preds = %248
  %267 = load i32, i32* %8, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load double, double* %10, align 8
  %271 = load double, double* %9, align 8
  %272 = fdiv double %271, %270
  store double %272, double* %9, align 8
  br label %277

273:                                              ; preds = %266
  %274 = load double, double* %10, align 8
  %275 = load double, double* %9, align 8
  %276 = fmul double %275, %274
  store double %276, double* %9, align 8
  br label %277

277:                                              ; preds = %273, %269
  br label %278

278:                                              ; preds = %277, %201, %101
  %279 = load i8**, i8*** %5, align 8
  %280 = icmp ne i8** %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i8*, i8** %12, align 8
  %283 = load i8**, i8*** %5, align 8
  store i8* %282, i8** %283, align 8
  br label %284

284:                                              ; preds = %281, %278
  %285 = load i32, i32* %7, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load double, double* %9, align 8
  %289 = fneg double %288
  store double %289, double* %3, align 8
  br label %292

290:                                              ; preds = %284
  %291 = load double, double* %9, align 8
  store double %291, double* %3, align 8
  br label %292

292:                                              ; preds = %290, %287
  %293 = load double, double* %3, align 8
  ret double %293
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
