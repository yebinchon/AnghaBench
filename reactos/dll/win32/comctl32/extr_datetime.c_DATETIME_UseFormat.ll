; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_UseFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_UseFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i8*, i32, i64* }

@FALSE = common dso_local global i32 0, align 4
@allowedformatchars = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"\0A%d %c:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%c[%d,%x]\00", align 1
@maxrepetition = common dso_local global i32* null, align 8
@DT_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"out of memory; should reallocate. crash ahead.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @DATETIME_UseFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DATETIME_UseFormat(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32 0, i32* %21, align 4
  %22 = load i8*, i8** @allowedformatchars, align 8
  %23 = call i32 @strlenW(i8* %22)
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %293, %2
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %296

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %174, label %42

42:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %170, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %173

47:                                               ; preds = %43
  %48 = load i8*, i8** @allowedformatchars, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %53, %59
  br i1 %60, label %61, label %169

61:                                               ; preds = %47
  %62 = load i8*, i8** @allowedformatchars, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69, i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %61
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %82
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %95, i32* %102, align 4
  br label %173

103:                                              ; preds = %82, %61
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %103
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %6, align 4
  %120 = shl i32 %119, 4
  %121 = add nsw i32 %120, 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %121, i32* %128, align 4
  br label %173

129:                                              ; preds = %103
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 15
  %139 = load i32*, i32** @maxrepetition, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %138, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %129
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* %6, align 4
  %150 = shl i32 %149, 4
  %151 = add nsw i32 %150, 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %151, i32* %158, align 4
  br label %173

159:                                              ; preds = %129
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %173

169:                                              ; preds = %47
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %43

173:                                              ; preds = %159, %145, %115, %92, %43
  br label %176

174:                                              ; preds = %31
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %174, %173
  %177 = load i8*, i8** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 39
  br i1 %183, label %184, label %189

184:                                              ; preds = %176
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %9, align 4
  br label %293

189:                                              ; preds = %176
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %283

193:                                              ; preds = %189
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %225

197:                                              ; preds = %193
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %225

207:                                              ; preds = %197
  %208 = load i32, i32* @DT_STRING, align 4
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %208, %209
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 %210, i32* %217, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 4
  %220 = load i64*, i64** %219, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %220, i64 %223
  store i64 0, i64* %224, align 8
  br label %260

225:                                              ; preds = %197, %193
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @DT_STRING, align 4
  %235 = and i32 %233, %234
  %236 = load i32, i32* @DT_STRING, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %259

238:                                              ; preds = %225
  %239 = load i32*, i32** %10, align 8
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* @DT_STRING, align 4
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %242, %243
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %244, i32* %251, align 4
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 4
  %254 = load i64*, i64** %253, align 8
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %254, i64 %257
  store i64 0, i64* %258, align 8
  br label %259

259:                                              ; preds = %238, %225
  br label %260

260:                                              ; preds = %259, %207
  %261 = load i8*, i8** %4, align 8
  %262 = load i32, i32* %5, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  store i8 %265, i8* %271, align 1
  %272 = load i32, i32* %7, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %7, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 4
  %276 = load i64*, i64** %275, align 8
  %277 = load i32*, i32** %10, align 8
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %276, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %281, 1
  store i64 %282, i64* %280, align 8
  br label %283

283:                                              ; preds = %260, %189
  %284 = load i32*, i32** %10, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %283
  %291 = call i32 @FIXME(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %292

292:                                              ; preds = %290, %283
  br label %293

293:                                              ; preds = %292, %184
  %294 = load i32, i32* %5, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %5, align 4
  br label %24

296:                                              ; preds = %24
  %297 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = load i32*, i32** %10, align 8
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %296
  %308 = load i32*, i32** %10, align 8
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %307, %296
  ret void
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
