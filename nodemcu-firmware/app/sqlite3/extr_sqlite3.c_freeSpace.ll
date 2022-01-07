; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_freeSpace.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_freeSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CORRUPT_DB = common dso_local global i64 0, align 8
@BTS_SECURE_DELETE = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @freeSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freeSpace(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %15, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sqlite3PagerIswriteable(i32 %38)
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* @CORRUPT_DB, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 6
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = icmp sge i32 %44, %52
  br label %54

54:                                               ; preds = %43, %3
  %55 = phi i1 [ true, %3 ], [ %53, %43 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i64, i64* @CORRUPT_DB, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %61, %66
  br label %68

68:                                               ; preds = %60, %54
  %69 = phi i1 [ true, %54 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sqlite3_mutex_held(i32 %76)
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = icmp sge i32 %79, 4
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp sle i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %68
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @memset(i8* %100, i32 0, i32 %101)
  br label %103

103:                                              ; preds = %96, %68
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = load i8*, i8** %15, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %103
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %266

126:                                              ; preds = %117, %103
  br label %127

127:                                              ; preds = %146, %126
  %128 = load i8*, i8** %15, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = call i32 @get2byte(i8* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %127
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 4
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %148

144:                                              ; preds = %140
  %145 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %145, i32* %4, align 4
  br label %324

146:                                              ; preds = %135
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %8, align 4
  br label %127

148:                                              ; preds = %143, %127
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %153, i32* %4, align 4
  br label %324

154:                                              ; preds = %148
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 0
  br label %161

161:                                              ; preds = %158, %154
  %162 = phi i1 [ true, %154 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %208

167:                                              ; preds = %161
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 3
  %170 = load i32, i32* %9, align 4
  %171 = icmp sge i32 %169, %170
  br i1 %171, label %172, label %208

172:                                              ; preds = %167
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %14, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %180, i32* %4, align 4
  br label %324

181:                                              ; preds = %172
  %182 = load i32, i32* %9, align 4
  %183 = load i8*, i8** %15, align 8
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = call i32 @get2byte(i8* %187)
  %189 = add nsw i32 %182, %188
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %190, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %181
  %198 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %198, i32* %4, align 4
  br label %324

199:                                              ; preds = %181
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %6, align 4
  %202 = sub nsw i32 %200, %201
  store i32 %202, i32* %7, align 4
  %203 = load i8*, i8** %15, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = call i32 @get2byte(i8* %206)
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %199, %167, %161
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  %212 = icmp sgt i32 %209, %211
  br i1 %212, label %213, label %243

213:                                              ; preds = %208
  %214 = load i32, i32* %8, align 4
  %215 = load i8*, i8** %15, align 8
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  %220 = call i32 @get2byte(i8* %219)
  %221 = add nsw i32 %214, %220
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 3
  %224 = load i32, i32* %6, align 4
  %225 = icmp sge i32 %223, %224
  br i1 %225, label %226, label %242

226:                                              ; preds = %213
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp sgt i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %231, i32* %4, align 4
  br label %324

232:                                              ; preds = %226
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %16, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %8, align 4
  %240 = sub nsw i32 %238, %239
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %8, align 4
  store i32 %241, i32* %6, align 4
  br label %242

242:                                              ; preds = %232, %213
  br label %243

243:                                              ; preds = %242, %208
  %244 = load i32, i32* %11, align 4
  %245 = load i8*, i8** %15, align 8
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 7
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp sgt i32 %244, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %243
  %254 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %254, i32* %4, align 4
  br label %324

255:                                              ; preds = %243
  %256 = load i32, i32* %11, align 4
  %257 = load i8*, i8** %15, align 8
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 7
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = sub nsw i32 %263, %256
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %261, align 1
  br label %266

266:                                              ; preds = %255, %125
  %267 = load i32, i32* %6, align 4
  %268 = load i8*, i8** %15, align 8
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 5
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %268, i64 %271
  %273 = call i32 @get2byte(i8* %272)
  %274 = icmp eq i32 %267, %273
  br i1 %274, label %275, label %297

275:                                              ; preds = %266
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  %279 = icmp ne i32 %276, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %281, i32* %4, align 4
  br label %324

282:                                              ; preds = %275
  %283 = load i8*, i8** %15, align 8
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %283, i64 %286
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @put2byte(i8* %287, i32 %288)
  %290 = load i8*, i8** %15, align 8
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 5
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %290, i64 %293
  %295 = load i32, i32* %14, align 4
  %296 = call i32 @put2byte(i8* %294, i32 %295)
  br label %317

297:                                              ; preds = %266
  %298 = load i8*, i8** %15, align 8
  %299 = load i32, i32* %8, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = load i32, i32* %6, align 4
  %303 = call i32 @put2byte(i8* %301, i32 %302)
  %304 = load i8*, i8** %15, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %304, i64 %306
  %308 = load i32, i32* %9, align 4
  %309 = call i32 @put2byte(i8* %307, i32 %308)
  %310 = load i8*, i8** %15, align 8
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 2
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %310, i64 %313
  %315 = load i32, i32* %7, align 4
  %316 = call i32 @put2byte(i8* %314, i32 %315)
  br label %317

317:                                              ; preds = %297, %282
  %318 = load i32, i32* %12, align 4
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = load i32, i32* @SQLITE_OK, align 4
  store i32 %323, i32* %4, align 4
  br label %324

324:                                              ; preds = %317, %280, %253, %230, %197, %179, %152, %144
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @put2byte(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
