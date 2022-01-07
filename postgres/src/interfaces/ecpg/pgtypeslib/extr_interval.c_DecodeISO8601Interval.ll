; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_DecodeISO8601Interval.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_interval.c_DecodeISO8601Interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, double, i32, i32, i32, i32 }

@DTK_DELTA = common dso_local global i32 0, align 4
@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@DAYS_PER_MONTH = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.tm*, i32*)* @DecodeISO8601Interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeISO8601Interval(i8* %0, i32* %1, %struct.tm* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.tm* %2, %struct.tm** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @DTK_DELTA, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.tm*, %struct.tm** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ClearPgTm(%struct.tm* %19, i32* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 80
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %4
  %32 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %32, i32* %5, align 4
  br label %397

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %395, %243, %205, %175, %148, %45, %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %396

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 84
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %36

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @ParseISO8601Number(i8* %50, i8** %6, i32* %13, double* %14)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %5, align 4
  br label %397

56:                                               ; preds = %48
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  %59 = load i8, i8* %57, align 1
  store i8 %59, i8* %15, align 1
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %249

62:                                               ; preds = %56
  %63 = load i8, i8* %15, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %246 [
    i32 89, label %65
    i32 77, label %77
    i32 87, label %89
    i32 68, label %100
    i32 84, label %111
    i32 0, label %111
    i32 45, label %150
  ]

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.tm*, %struct.tm** %8, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load double, double* %14, align 8
  %72 = fmul double %71, 1.200000e+01
  %73 = load %struct.tm*, %struct.tm** %8, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 1
  %75 = load double, double* %74, align 8
  %76 = fadd double %75, %72
  store double %76, double* %74, align 8
  br label %248

77:                                               ; preds = %62
  %78 = load i32, i32* %13, align 4
  %79 = sitofp i32 %78 to double
  %80 = load %struct.tm*, %struct.tm** %8, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = fadd double %82, %79
  store double %83, double* %81, align 8
  %84 = load double, double* %14, align 8
  %85 = load %struct.tm*, %struct.tm** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* @DAYS_PER_MONTH, align 4
  %88 = call i32 @AdjustFractDays(double %84, %struct.tm* %85, i32* %86, i32 %87)
  br label %248

89:                                               ; preds = %62
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %90, 7
  %92 = load %struct.tm*, %struct.tm** %8, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load double, double* %14, align 8
  %97 = load %struct.tm*, %struct.tm** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @AdjustFractDays(double %96, %struct.tm* %97, i32* %98, i32 7)
  br label %248

100:                                              ; preds = %62
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.tm*, %struct.tm** %8, align 8
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load double, double* %14, align 8
  %107 = load %struct.tm*, %struct.tm** %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* @SECS_PER_DAY, align 4
  %110 = call i32 @AdjustFractSeconds(double %106, %struct.tm* %107, i32* %108, i32 %109)
  br label %248

111:                                              ; preds = %62, %62
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @ISO8601IntegerWidth(i8* %112)
  %114 = icmp eq i32 %113, 8
  br i1 %114, label %115, label %149

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %149, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = sdiv i32 %119, 10000
  %121 = load %struct.tm*, %struct.tm** %8, align 8
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sdiv i32 %125, 100
  %127 = srem i32 %126, 100
  %128 = sitofp i32 %127 to double
  %129 = load %struct.tm*, %struct.tm** %8, align 8
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %129, i32 0, i32 1
  %131 = load double, double* %130, align 8
  %132 = fadd double %131, %128
  store double %132, double* %130, align 8
  %133 = load i32, i32* %13, align 4
  %134 = srem i32 %133, 100
  %135 = load %struct.tm*, %struct.tm** %8, align 8
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load double, double* %14, align 8
  %140 = load %struct.tm*, %struct.tm** %8, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* @SECS_PER_DAY, align 4
  %143 = call i32 @AdjustFractSeconds(double %139, %struct.tm* %140, i32* %141, i32 %142)
  %144 = load i8, i8* %15, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %397

148:                                              ; preds = %118
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

149:                                              ; preds = %115, %111
  br label %150

150:                                              ; preds = %62, %149
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %154, i32* %5, align 4
  br label %397

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.tm*, %struct.tm** %8, align 8
  %158 = getelementptr inbounds %struct.tm, %struct.tm* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load double, double* %14, align 8
  %162 = fmul double %161, 1.200000e+01
  %163 = load %struct.tm*, %struct.tm** %8, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 1
  %165 = load double, double* %164, align 8
  %166 = fadd double %165, %162
  store double %166, double* %164, align 8
  %167 = load i8, i8* %15, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %397

171:                                              ; preds = %155
  %172 = load i8, i8* %15, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 84
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

176:                                              ; preds = %171
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @ParseISO8601Number(i8* %177, i8** %6, i32* %13, double* %14)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* %16, align 4
  store i32 %182, i32* %5, align 4
  br label %397

183:                                              ; preds = %176
  %184 = load i32, i32* %13, align 4
  %185 = sitofp i32 %184 to double
  %186 = load %struct.tm*, %struct.tm** %8, align 8
  %187 = getelementptr inbounds %struct.tm, %struct.tm* %186, i32 0, i32 1
  %188 = load double, double* %187, align 8
  %189 = fadd double %188, %185
  store double %189, double* %187, align 8
  %190 = load double, double* %14, align 8
  %191 = load %struct.tm*, %struct.tm** %8, align 8
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* @DAYS_PER_MONTH, align 4
  %194 = call i32 @AdjustFractDays(double %190, %struct.tm* %191, i32* %192, i32 %193)
  %195 = load i8*, i8** %6, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  br label %397

200:                                              ; preds = %183
  %201 = load i8*, i8** %6, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 84
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

206:                                              ; preds = %200
  %207 = load i8*, i8** %6, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 45
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %212, i32* %5, align 4
  br label %397

213:                                              ; preds = %206
  %214 = load i8*, i8** %6, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %6, align 8
  %216 = load i8*, i8** %6, align 8
  %217 = call i32 @ParseISO8601Number(i8* %216, i8** %6, i32* %13, double* %14)
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* %16, align 4
  store i32 %221, i32* %5, align 4
  br label %397

222:                                              ; preds = %213
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.tm*, %struct.tm** %8, align 8
  %225 = getelementptr inbounds %struct.tm, %struct.tm* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, %223
  store i32 %227, i32* %225, align 8
  %228 = load double, double* %14, align 8
  %229 = load %struct.tm*, %struct.tm** %8, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* @SECS_PER_DAY, align 4
  %232 = call i32 @AdjustFractSeconds(double %228, %struct.tm* %229, i32* %230, i32 %231)
  %233 = load i8*, i8** %6, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %222
  store i32 0, i32* %5, align 4
  br label %397

238:                                              ; preds = %222
  %239 = load i8*, i8** %6, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 84
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

244:                                              ; preds = %238
  %245 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %245, i32* %5, align 4
  br label %397

246:                                              ; preds = %62
  %247 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %247, i32* %5, align 4
  br label %397

248:                                              ; preds = %100, %89, %77, %65
  br label %395

249:                                              ; preds = %56
  %250 = load i8, i8* %15, align 1
  %251 = sext i8 %250 to i32
  switch i32 %251, label %392 [
    i32 72, label %252
    i32 77, label %263
    i32 83, label %274
    i32 0, label %284
    i32 58, label %316
  ]

252:                                              ; preds = %249
  %253 = load i32, i32* %13, align 4
  %254 = load %struct.tm*, %struct.tm** %8, align 8
  %255 = getelementptr inbounds %struct.tm, %struct.tm* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load double, double* %14, align 8
  %259 = load %struct.tm*, %struct.tm** %8, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* @SECS_PER_HOUR, align 4
  %262 = call i32 @AdjustFractSeconds(double %258, %struct.tm* %259, i32* %260, i32 %261)
  br label %394

263:                                              ; preds = %249
  %264 = load i32, i32* %13, align 4
  %265 = load %struct.tm*, %struct.tm** %8, align 8
  %266 = getelementptr inbounds %struct.tm, %struct.tm* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, %264
  store i32 %268, i32* %266, align 8
  %269 = load double, double* %14, align 8
  %270 = load %struct.tm*, %struct.tm** %8, align 8
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* @SECS_PER_MINUTE, align 4
  %273 = call i32 @AdjustFractSeconds(double %269, %struct.tm* %270, i32* %271, i32 %272)
  br label %394

274:                                              ; preds = %249
  %275 = load i32, i32* %13, align 4
  %276 = load %struct.tm*, %struct.tm** %8, align 8
  %277 = getelementptr inbounds %struct.tm, %struct.tm* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, %275
  store i32 %279, i32* %277, align 4
  %280 = load double, double* %14, align 8
  %281 = load %struct.tm*, %struct.tm** %8, align 8
  %282 = load i32*, i32** %9, align 8
  %283 = call i32 @AdjustFractSeconds(double %280, %struct.tm* %281, i32* %282, i32 1)
  br label %394

284:                                              ; preds = %249
  %285 = load i8*, i8** %12, align 8
  %286 = call i32 @ISO8601IntegerWidth(i8* %285)
  %287 = icmp eq i32 %286, 6
  br i1 %287, label %288, label %315

288:                                              ; preds = %284
  %289 = load i32, i32* %11, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %315, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* %13, align 4
  %293 = sdiv i32 %292, 10000
  %294 = load %struct.tm*, %struct.tm** %8, align 8
  %295 = getelementptr inbounds %struct.tm, %struct.tm* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, %293
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* %13, align 4
  %299 = sdiv i32 %298, 100
  %300 = srem i32 %299, 100
  %301 = load %struct.tm*, %struct.tm** %8, align 8
  %302 = getelementptr inbounds %struct.tm, %struct.tm* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 8
  %304 = add nsw i32 %303, %300
  store i32 %304, i32* %302, align 8
  %305 = load i32, i32* %13, align 4
  %306 = srem i32 %305, 100
  %307 = load %struct.tm*, %struct.tm** %8, align 8
  %308 = getelementptr inbounds %struct.tm, %struct.tm* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load double, double* %14, align 8
  %312 = load %struct.tm*, %struct.tm** %8, align 8
  %313 = load i32*, i32** %9, align 8
  %314 = call i32 @AdjustFractSeconds(double %311, %struct.tm* %312, i32* %313, i32 1)
  store i32 0, i32* %5, align 4
  br label %397

315:                                              ; preds = %288, %284
  br label %316

316:                                              ; preds = %249, %315
  %317 = load i32, i32* %11, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %316
  %320 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %320, i32* %5, align 4
  br label %397

321:                                              ; preds = %316
  %322 = load i32, i32* %13, align 4
  %323 = load %struct.tm*, %struct.tm** %8, align 8
  %324 = getelementptr inbounds %struct.tm, %struct.tm* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = add nsw i32 %325, %322
  store i32 %326, i32* %324, align 4
  %327 = load double, double* %14, align 8
  %328 = load %struct.tm*, %struct.tm** %8, align 8
  %329 = load i32*, i32** %9, align 8
  %330 = load i32, i32* @SECS_PER_HOUR, align 4
  %331 = call i32 @AdjustFractSeconds(double %327, %struct.tm* %328, i32* %329, i32 %330)
  %332 = load i8, i8* %15, align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %321
  store i32 0, i32* %5, align 4
  br label %397

336:                                              ; preds = %321
  %337 = load i8*, i8** %6, align 8
  %338 = call i32 @ParseISO8601Number(i8* %337, i8** %6, i32* %13, double* %14)
  store i32 %338, i32* %16, align 4
  %339 = load i32, i32* %16, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i32, i32* %16, align 4
  store i32 %342, i32* %5, align 4
  br label %397

343:                                              ; preds = %336
  %344 = load i32, i32* %13, align 4
  %345 = load %struct.tm*, %struct.tm** %8, align 8
  %346 = getelementptr inbounds %struct.tm, %struct.tm* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = add nsw i32 %347, %344
  store i32 %348, i32* %346, align 8
  %349 = load double, double* %14, align 8
  %350 = load %struct.tm*, %struct.tm** %8, align 8
  %351 = load i32*, i32** %9, align 8
  %352 = load i32, i32* @SECS_PER_MINUTE, align 4
  %353 = call i32 @AdjustFractSeconds(double %349, %struct.tm* %350, i32* %351, i32 %352)
  %354 = load i8*, i8** %6, align 8
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %343
  store i32 0, i32* %5, align 4
  br label %397

359:                                              ; preds = %343
  %360 = load i8*, i8** %6, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp ne i32 %362, 58
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %365, i32* %5, align 4
  br label %397

366:                                              ; preds = %359
  %367 = load i8*, i8** %6, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** %6, align 8
  %369 = load i8*, i8** %6, align 8
  %370 = call i32 @ParseISO8601Number(i8* %369, i8** %6, i32* %13, double* %14)
  store i32 %370, i32* %16, align 4
  %371 = load i32, i32* %16, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %366
  %374 = load i32, i32* %16, align 4
  store i32 %374, i32* %5, align 4
  br label %397

375:                                              ; preds = %366
  %376 = load i32, i32* %13, align 4
  %377 = load %struct.tm*, %struct.tm** %8, align 8
  %378 = getelementptr inbounds %struct.tm, %struct.tm* %377, i32 0, i32 5
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, %376
  store i32 %380, i32* %378, align 4
  %381 = load double, double* %14, align 8
  %382 = load %struct.tm*, %struct.tm** %8, align 8
  %383 = load i32*, i32** %9, align 8
  %384 = call i32 @AdjustFractSeconds(double %381, %struct.tm* %382, i32* %383, i32 1)
  %385 = load i8*, i8** %6, align 8
  %386 = load i8, i8* %385, align 1
  %387 = sext i8 %386 to i32
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %375
  store i32 0, i32* %5, align 4
  br label %397

390:                                              ; preds = %375
  %391 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %391, i32* %5, align 4
  br label %397

392:                                              ; preds = %249
  %393 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %393, i32* %5, align 4
  br label %397

394:                                              ; preds = %274, %263, %252
  br label %395

395:                                              ; preds = %394, %248
  store i32 1, i32* %11, align 4
  br label %36

396:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %397

397:                                              ; preds = %396, %392, %390, %389, %373, %364, %358, %341, %335, %319, %291, %246, %244, %237, %220, %211, %199, %181, %170, %153, %147, %54, %31
  %398 = load i32, i32* %5, align 4
  ret i32 %398
}

declare dso_local i32 @ClearPgTm(%struct.tm*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ParseISO8601Number(i8*, i8**, i32*, double*) #1

declare dso_local i32 @AdjustFractDays(double, %struct.tm*, i32*, i32) #1

declare dso_local i32 @AdjustFractSeconds(double, %struct.tm*, i32*, i32) #1

declare dso_local i32 @ISO8601IntegerWidth(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
