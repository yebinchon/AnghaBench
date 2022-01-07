; ModuleID = '/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_f_read.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_f_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32, i32*, %struct.TYPE_15__, i64, i64 }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32, i64 }

@FR_OK = common dso_local global i64 0, align 8
@FA_READ = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@FA_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_read(%struct.TYPE_13__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %18, align 8
  %21 = load i64*, i64** %9, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 5
  %24 = call i64 @validate(%struct.TYPE_15__* %23, %struct.TYPE_14__** %11)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @FR_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @FR_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28, %4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @LEAVE_FF(%struct.TYPE_14__* %35, i64 %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FA_READ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = load i64, i64* @FR_DENIED, align 8
  %48 = call i32 @LEAVE_FF(%struct.TYPE_14__* %46, i64 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %61, %49
  br label %64

64:                                               ; preds = %313, %63
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %329

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %72 = call i32 @SS(%struct.TYPE_14__* %71)
  %73 = sext i32 %72 to i64
  %74 = srem i64 %70, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %281

76:                                               ; preds = %67
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %81 = call i32 @SS(%struct.TYPE_14__* %80)
  %82 = sext i32 %81 to i64
  %83 = sdiv i64 %79, %82
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = and i64 %83, %88
  store i64 %89, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %76
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %12, align 4
  br label %109

102:                                              ; preds = %92
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @get_fat(%struct.TYPE_15__* %104, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %102, %97
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %114 = load i32, i32* @FR_INT_ERR, align 4
  %115 = call i32 @ABORT(%struct.TYPE_14__* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %109
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %121 = load i32, i32* @FR_DISK_ERR, align 4
  %122 = call i32 @ABORT(%struct.TYPE_14__* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %76
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @clst2sect(%struct.TYPE_14__* %128, i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %137 = load i32, i32* @FR_INT_ERR, align 4
  %138 = call i32 @ABORT(%struct.TYPE_14__* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %127
  %140 = load i64, i64* %17, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %13, align 4
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %147 = call i32 @SS(%struct.TYPE_14__* %146)
  %148 = sext i32 %147 to i64
  %149 = sdiv i64 %145, %148
  store i64 %149, i64* %16, align 8
  %150 = load i64, i64* %16, align 8
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %224

152:                                              ; preds = %139
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* %16, align 8
  %155 = add nsw i64 %153, %154
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = icmp sgt i64 %155, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %152
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %17, align 8
  %167 = sub nsw i64 %165, %166
  store i64 %167, i64* %16, align 8
  br label %168

168:                                              ; preds = %161, %152
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = load i32*, i32** %18, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i64, i64* %16, align 8
  %175 = trunc i64 %174 to i32
  %176 = call i64 @disk_read(i32 %171, i32* %172, i32 %173, i32 %175)
  %177 = load i64, i64* @RES_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %168
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %181 = load i32, i32* @FR_DISK_ERR, align 4
  %182 = call i32 @ABORT(%struct.TYPE_14__* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %168
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @FA_DIRTY, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %218

190:                                              ; preds = %183
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %13, align 4
  %195 = sub nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %16, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %218

199:                                              ; preds = %190
  %200 = load i32*, i32** %18, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %13, align 4
  %205 = sub nsw i32 %203, %204
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %207 = call i32 @SS(%struct.TYPE_14__* %206)
  %208 = mul nsw i32 %205, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %200, i64 %209
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %215 = call i32 @SS(%struct.TYPE_14__* %214)
  %216 = sext i32 %215 to i64
  %217 = call i32 @mem_cpy(i32* %210, i32* %213, i64 %216)
  br label %218

218:                                              ; preds = %199, %190, %183
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %220 = call i32 @SS(%struct.TYPE_14__* %219)
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %16, align 8
  %223 = mul nsw i64 %221, %222
  store i64 %223, i64* %15, align 8
  br label %313

224:                                              ; preds = %139
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %277

230:                                              ; preds = %224
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @FA_DIRTY, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %261

237:                                              ; preds = %230
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @disk_write(i32 %240, i32* %243, i32 %246, i32 1)
  %248 = load i64, i64* @RES_OK, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %237
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %252 = load i32, i32* @FR_DISK_ERR, align 4
  %253 = call i32 @ABORT(%struct.TYPE_14__* %251, i32 %252)
  br label %254

254:                                              ; preds = %250, %237
  %255 = load i32, i32* @FA_DIRTY, align 4
  %256 = xor i32 %255, -1
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = and i32 %259, %256
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %254, %230
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = call i64 @disk_read(i32 %264, i32* %267, i32 %268, i32 1)
  %270 = load i64, i64* @RES_OK, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %261
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %274 = load i32, i32* @FR_DISK_ERR, align 4
  %275 = call i32 @ABORT(%struct.TYPE_14__* %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %261
  br label %277

277:                                              ; preds = %276, %224
  %278 = load i32, i32* %13, align 4
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 4
  br label %281

281:                                              ; preds = %277, %67
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %283 = call i32 @SS(%struct.TYPE_14__* %282)
  %284 = sext i32 %283 to i64
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %289 = call i32 @SS(%struct.TYPE_14__* %288)
  %290 = sext i32 %289 to i64
  %291 = srem i64 %287, %290
  %292 = sub nsw i64 %284, %291
  store i64 %292, i64* %15, align 8
  %293 = load i64, i64* %15, align 8
  %294 = load i64, i64* %8, align 8
  %295 = icmp sgt i64 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %281
  %297 = load i64, i64* %8, align 8
  store i64 %297, i64* %15, align 8
  br label %298

298:                                              ; preds = %296, %281
  %299 = load i32*, i32** %18, align 8
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 4
  %302 = load i32*, i32** %301, align 8
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %307 = call i32 @SS(%struct.TYPE_14__* %306)
  %308 = sext i32 %307 to i64
  %309 = srem i64 %305, %308
  %310 = getelementptr inbounds i32, i32* %302, i64 %309
  %311 = load i64, i64* %15, align 8
  %312 = call i32 @mem_cpy(i32* %299, i32* %310, i64 %311)
  br label %313

313:                                              ; preds = %298, %218
  %314 = load i64, i64* %15, align 8
  %315 = load i64, i64* %8, align 8
  %316 = sub nsw i64 %315, %314
  store i64 %316, i64* %8, align 8
  %317 = load i64, i64* %15, align 8
  %318 = load i64*, i64** %9, align 8
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, %317
  store i64 %320, i64* %318, align 8
  %321 = load i64, i64* %15, align 8
  %322 = load i32*, i32** %18, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 %321
  store i32* %323, i32** %18, align 8
  %324 = load i64, i64* %15, align 8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %327, %324
  store i64 %328, i64* %326, align 8
  br label %64

329:                                              ; preds = %64
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %331 = load i64, i64* @FR_OK, align 8
  %332 = call i32 @LEAVE_FF(%struct.TYPE_14__* %330, i64 %331)
  %333 = load i64, i64* %5, align 8
  ret i64 %333
}

declare dso_local i64 @validate(%struct.TYPE_15__*, %struct.TYPE_14__**) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @SS(%struct.TYPE_14__*) #1

declare dso_local i32 @get_fat(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ABORT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @clst2sect(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @disk_read(i32, i32*, i32, i32) #1

declare dso_local i32 @mem_cpy(i32*, i32*, i64) #1

declare dso_local i64 @disk_write(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
