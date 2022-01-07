; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeISO8601Interval.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_DecodeISO8601Interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, double, i32, i32, i32, i32 }

@DTK_DELTA = common dso_local global i32 0, align 4
@DTERR_BAD_FORMAT = common dso_local global i32 0, align 4
@MONTHS_PER_YEAR = common dso_local global double 0.000000e+00, align 8
@DAYS_PER_MONTH = common dso_local global i32 0, align 4
@SECS_PER_DAY = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@SECS_PER_MINUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeISO8601Interval(i8* %0, i32* %1, %struct.pg_tm* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pg_tm*, align 8
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
  store %struct.pg_tm* %2, %struct.pg_tm** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @DTK_DELTA, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ClearPgTm(%struct.pg_tm* %19, i32* %20)
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
  br label %399

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %397, %245, %207, %177, %149, %45, %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %398

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
  br label %399

56:                                               ; preds = %48
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  %59 = load i8, i8* %57, align 1
  store i8 %59, i8* %15, align 1
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %251

62:                                               ; preds = %56
  %63 = load i8, i8* %15, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %248 [
    i32 89, label %65
    i32 77, label %78
    i32 87, label %90
    i32 68, label %101
    i32 84, label %112
    i32 0, label %112
    i32 45, label %151
  ]

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %68 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load double, double* %14, align 8
  %72 = load double, double* @MONTHS_PER_YEAR, align 8
  %73 = fmul double %71, %72
  %74 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %75 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %74, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = fadd double %76, %73
  store double %77, double* %75, align 8
  br label %250

78:                                               ; preds = %62
  %79 = load i32, i32* %13, align 4
  %80 = sitofp i32 %79 to double
  %81 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %82 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %81, i32 0, i32 1
  %83 = load double, double* %82, align 8
  %84 = fadd double %83, %80
  store double %84, double* %82, align 8
  %85 = load double, double* %14, align 8
  %86 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* @DAYS_PER_MONTH, align 4
  %89 = call i32 @AdjustFractDays(double %85, %struct.pg_tm* %86, i32* %87, i32 %88)
  br label %250

90:                                               ; preds = %62
  %91 = load i32, i32* %13, align 4
  %92 = mul nsw i32 %91, 7
  %93 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %94 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load double, double* %14, align 8
  %98 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @AdjustFractDays(double %97, %struct.pg_tm* %98, i32* %99, i32 7)
  br label %250

101:                                              ; preds = %62
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %104 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load double, double* %14, align 8
  %108 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* @SECS_PER_DAY, align 4
  %111 = call i32 @AdjustFractSeconds(double %107, %struct.pg_tm* %108, i32* %109, i32 %110)
  br label %250

112:                                              ; preds = %62, %62
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @ISO8601IntegerWidth(i8* %113)
  %115 = icmp eq i32 %114, 8
  br i1 %115, label %116, label %150

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = sdiv i32 %120, 10000
  %122 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %123 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sdiv i32 %126, 100
  %128 = srem i32 %127, 100
  %129 = sitofp i32 %128 to double
  %130 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %131 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %130, i32 0, i32 1
  %132 = load double, double* %131, align 8
  %133 = fadd double %132, %129
  store double %133, double* %131, align 8
  %134 = load i32, i32* %13, align 4
  %135 = srem i32 %134, 100
  %136 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %137 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load double, double* %14, align 8
  %141 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* @SECS_PER_DAY, align 4
  %144 = call i32 @AdjustFractSeconds(double %140, %struct.pg_tm* %141, i32* %142, i32 %143)
  %145 = load i8, i8* %15, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %119
  store i32 0, i32* %5, align 4
  br label %399

149:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

150:                                              ; preds = %116, %112
  br label %151

151:                                              ; preds = %62, %150
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %155, i32* %5, align 4
  br label %399

156:                                              ; preds = %151
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %159 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load double, double* %14, align 8
  %163 = load double, double* @MONTHS_PER_YEAR, align 8
  %164 = fmul double %162, %163
  %165 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %166 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %165, i32 0, i32 1
  %167 = load double, double* %166, align 8
  %168 = fadd double %167, %164
  store double %168, double* %166, align 8
  %169 = load i8, i8* %15, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %156
  store i32 0, i32* %5, align 4
  br label %399

173:                                              ; preds = %156
  %174 = load i8, i8* %15, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 84
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

178:                                              ; preds = %173
  %179 = load i8*, i8** %6, align 8
  %180 = call i32 @ParseISO8601Number(i8* %179, i8** %6, i32* %13, double* %14)
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %5, align 4
  br label %399

185:                                              ; preds = %178
  %186 = load i32, i32* %13, align 4
  %187 = sitofp i32 %186 to double
  %188 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %189 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %188, i32 0, i32 1
  %190 = load double, double* %189, align 8
  %191 = fadd double %190, %187
  store double %191, double* %189, align 8
  %192 = load double, double* %14, align 8
  %193 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* @DAYS_PER_MONTH, align 4
  %196 = call i32 @AdjustFractDays(double %192, %struct.pg_tm* %193, i32* %194, i32 %195)
  %197 = load i8*, i8** %6, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %399

202:                                              ; preds = %185
  %203 = load i8*, i8** %6, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 84
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

208:                                              ; preds = %202
  %209 = load i8*, i8** %6, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 45
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %214, i32* %5, align 4
  br label %399

215:                                              ; preds = %208
  %216 = load i8*, i8** %6, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %6, align 8
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @ParseISO8601Number(i8* %218, i8** %6, i32* %13, double* %14)
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i32, i32* %16, align 4
  store i32 %223, i32* %5, align 4
  br label %399

224:                                              ; preds = %215
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %227 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, %225
  store i32 %229, i32* %227, align 8
  %230 = load double, double* %14, align 8
  %231 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %232 = load i32*, i32** %9, align 8
  %233 = load i32, i32* @SECS_PER_DAY, align 4
  %234 = call i32 @AdjustFractSeconds(double %230, %struct.pg_tm* %231, i32* %232, i32 %233)
  %235 = load i8*, i8** %6, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %224
  store i32 0, i32* %5, align 4
  br label %399

240:                                              ; preds = %224
  %241 = load i8*, i8** %6, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 84
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %36

246:                                              ; preds = %240
  %247 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %247, i32* %5, align 4
  br label %399

248:                                              ; preds = %62
  %249 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %249, i32* %5, align 4
  br label %399

250:                                              ; preds = %101, %90, %78, %65
  br label %397

251:                                              ; preds = %56
  %252 = load i8, i8* %15, align 1
  %253 = sext i8 %252 to i32
  switch i32 %253, label %394 [
    i32 72, label %254
    i32 77, label %265
    i32 83, label %276
    i32 0, label %286
    i32 58, label %318
  ]

254:                                              ; preds = %251
  %255 = load i32, i32* %13, align 4
  %256 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %257 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load double, double* %14, align 8
  %261 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %262 = load i32*, i32** %9, align 8
  %263 = load i32, i32* @SECS_PER_HOUR, align 4
  %264 = call i32 @AdjustFractSeconds(double %260, %struct.pg_tm* %261, i32* %262, i32 %263)
  br label %396

265:                                              ; preds = %251
  %266 = load i32, i32* %13, align 4
  %267 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %268 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load double, double* %14, align 8
  %272 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %273 = load i32*, i32** %9, align 8
  %274 = load i32, i32* @SECS_PER_MINUTE, align 4
  %275 = call i32 @AdjustFractSeconds(double %271, %struct.pg_tm* %272, i32* %273, i32 %274)
  br label %396

276:                                              ; preds = %251
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %279 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load double, double* %14, align 8
  %283 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %284 = load i32*, i32** %9, align 8
  %285 = call i32 @AdjustFractSeconds(double %282, %struct.pg_tm* %283, i32* %284, i32 1)
  br label %396

286:                                              ; preds = %251
  %287 = load i8*, i8** %12, align 8
  %288 = call i32 @ISO8601IntegerWidth(i8* %287)
  %289 = icmp eq i32 %288, 6
  br i1 %289, label %290, label %317

290:                                              ; preds = %286
  %291 = load i32, i32* %11, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %317, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* %13, align 4
  %295 = sdiv i32 %294, 10000
  %296 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %297 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, %295
  store i32 %299, i32* %297, align 4
  %300 = load i32, i32* %13, align 4
  %301 = sdiv i32 %300, 100
  %302 = srem i32 %301, 100
  %303 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %304 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, %302
  store i32 %306, i32* %304, align 8
  %307 = load i32, i32* %13, align 4
  %308 = srem i32 %307, 100
  %309 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %310 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load double, double* %14, align 8
  %314 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %315 = load i32*, i32** %9, align 8
  %316 = call i32 @AdjustFractSeconds(double %313, %struct.pg_tm* %314, i32* %315, i32 1)
  store i32 0, i32* %5, align 4
  br label %399

317:                                              ; preds = %290, %286
  br label %318

318:                                              ; preds = %251, %317
  %319 = load i32, i32* %11, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %318
  %322 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %322, i32* %5, align 4
  br label %399

323:                                              ; preds = %318
  %324 = load i32, i32* %13, align 4
  %325 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %326 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, %324
  store i32 %328, i32* %326, align 4
  %329 = load double, double* %14, align 8
  %330 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %331 = load i32*, i32** %9, align 8
  %332 = load i32, i32* @SECS_PER_HOUR, align 4
  %333 = call i32 @AdjustFractSeconds(double %329, %struct.pg_tm* %330, i32* %331, i32 %332)
  %334 = load i8, i8* %15, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %323
  store i32 0, i32* %5, align 4
  br label %399

338:                                              ; preds = %323
  %339 = load i8*, i8** %6, align 8
  %340 = call i32 @ParseISO8601Number(i8* %339, i8** %6, i32* %13, double* %14)
  store i32 %340, i32* %16, align 4
  %341 = load i32, i32* %16, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i32, i32* %16, align 4
  store i32 %344, i32* %5, align 4
  br label %399

345:                                              ; preds = %338
  %346 = load i32, i32* %13, align 4
  %347 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %348 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = add nsw i32 %349, %346
  store i32 %350, i32* %348, align 8
  %351 = load double, double* %14, align 8
  %352 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %353 = load i32*, i32** %9, align 8
  %354 = load i32, i32* @SECS_PER_MINUTE, align 4
  %355 = call i32 @AdjustFractSeconds(double %351, %struct.pg_tm* %352, i32* %353, i32 %354)
  %356 = load i8*, i8** %6, align 8
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %345
  store i32 0, i32* %5, align 4
  br label %399

361:                                              ; preds = %345
  %362 = load i8*, i8** %6, align 8
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp ne i32 %364, 58
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  %367 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %367, i32* %5, align 4
  br label %399

368:                                              ; preds = %361
  %369 = load i8*, i8** %6, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %6, align 8
  %371 = load i8*, i8** %6, align 8
  %372 = call i32 @ParseISO8601Number(i8* %371, i8** %6, i32* %13, double* %14)
  store i32 %372, i32* %16, align 4
  %373 = load i32, i32* %16, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %368
  %376 = load i32, i32* %16, align 4
  store i32 %376, i32* %5, align 4
  br label %399

377:                                              ; preds = %368
  %378 = load i32, i32* %13, align 4
  %379 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %380 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %379, i32 0, i32 5
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %381, %378
  store i32 %382, i32* %380, align 4
  %383 = load double, double* %14, align 8
  %384 = load %struct.pg_tm*, %struct.pg_tm** %8, align 8
  %385 = load i32*, i32** %9, align 8
  %386 = call i32 @AdjustFractSeconds(double %383, %struct.pg_tm* %384, i32* %385, i32 1)
  %387 = load i8*, i8** %6, align 8
  %388 = load i8, i8* %387, align 1
  %389 = sext i8 %388 to i32
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %377
  store i32 0, i32* %5, align 4
  br label %399

392:                                              ; preds = %377
  %393 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %393, i32* %5, align 4
  br label %399

394:                                              ; preds = %251
  %395 = load i32, i32* @DTERR_BAD_FORMAT, align 4
  store i32 %395, i32* %5, align 4
  br label %399

396:                                              ; preds = %276, %265, %254
  br label %397

397:                                              ; preds = %396, %250
  store i32 1, i32* %11, align 4
  br label %36

398:                                              ; preds = %36
  store i32 0, i32* %5, align 4
  br label %399

399:                                              ; preds = %398, %394, %392, %391, %375, %366, %360, %343, %337, %321, %293, %248, %246, %239, %222, %213, %201, %183, %172, %154, %148, %54, %31
  %400 = load i32, i32* %5, align 4
  ret i32 %400
}

declare dso_local i32 @ClearPgTm(%struct.pg_tm*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ParseISO8601Number(i8*, i8**, i32*, double*) #1

declare dso_local i32 @AdjustFractDays(double, %struct.pg_tm*, i32*, i32) #1

declare dso_local i32 @AdjustFractSeconds(double, %struct.pg_tm*, i32*, i32) #1

declare dso_local i32 @ISO8601IntegerWidth(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
