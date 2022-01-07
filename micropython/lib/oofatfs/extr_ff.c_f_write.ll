; ModuleID = '/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_f_write.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/oofatfs/extr_ff.c_f_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i32*, %struct.TYPE_16__, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64, i32, i64, i32*, i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FA_WRITE = common dso_local global i32 0, align 4
@FR_DENIED = common dso_local global i64 0, align 8
@FF_FS_EXFAT = common dso_local global i32 0, align 4
@FS_EXFAT = common dso_local global i64 0, align 8
@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@FA_DIRTY = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@FA_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_write(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %17, align 8
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = call i64 @validate(%struct.TYPE_16__* %22, %struct.TYPE_15__** %11)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @FR_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* @FR_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @LEAVE_FF(%struct.TYPE_15__* %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @FA_WRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = load i64, i64* @FR_DENIED, align 8
  %47 = call i32 @LEAVE_FF(%struct.TYPE_15__* %45, i64 %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32, i32* @FF_FS_EXFAT, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FS_EXFAT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %51, %48
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %63, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %57
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 4294967295, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %69, %57, %51
  br label %77

77:                                               ; preds = %382, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %387

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %85 = call i32 @SS(%struct.TYPE_15__* %84)
  %86 = srem i32 %83, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %313

88:                                               ; preds = %80
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = call i32 @SS(%struct.TYPE_15__* %92)
  %94 = sdiv i32 %91, %93
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %94, %98
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %159

102:                                              ; preds = %88
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %12, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 4
  %117 = call i64 @create_chain(%struct.TYPE_16__* %116, i64 0)
  store i64 %117, i64* %12, align 8
  br label %118

118:                                              ; preds = %114, %107
  br label %126

119:                                              ; preds = %102
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @create_chain(%struct.TYPE_16__* %121, i64 %124)
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %119, %118
  %127 = load i64, i64* %12, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %387

130:                                              ; preds = %126
  %131 = load i64, i64* %12, align 8
  %132 = icmp eq i64 %131, 1
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = load i32, i32* @FR_INT_ERR, align 4
  %136 = call i32 @ABORT(%struct.TYPE_15__* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i64, i64* %12, align 8
  %139 = icmp eq i64 %138, 4294967295
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %142 = load i32, i32* @FR_DISK_ERR, align 4
  %143 = call i32 @ABORT(%struct.TYPE_15__* %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i64, i64* %12, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 5
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  store i64 %154, i64* %157, align 8
  br label %158

158:                                              ; preds = %153, %144
  br label %159

159:                                              ; preds = %158, %88
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @FA_DIRTY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %159
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @disk_write(i32 %169, i32* %172, i64 %175, i32 1)
  %177 = load i64, i64* @RES_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %166
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %181 = load i32, i32* @FR_DISK_ERR, align 4
  %182 = call i32 @ABORT(%struct.TYPE_15__* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %166
  %184 = load i32, i32* @FA_DIRTY, align 4
  %185 = xor i32 %184, -1
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %183, %159
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = call i64 @clst2sect(%struct.TYPE_15__* %191, i64 %194)
  store i64 %195, i64* %13, align 8
  %196 = load i64, i64* %13, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %200 = load i32, i32* @FR_INT_ERR, align 4
  %201 = call i32 @ABORT(%struct.TYPE_15__* %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %190
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = load i64, i64* %13, align 8
  %206 = add nsw i64 %205, %204
  store i64 %206, i64* %13, align 8
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %209 = call i32 @SS(%struct.TYPE_15__* %208)
  %210 = sdiv i32 %207, %209
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %279

213:                                              ; preds = %202
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %214, %215
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = icmp sgt i32 %216, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %213
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %15, align 4
  br label %227

227:                                              ; preds = %221, %213
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %17, align 8
  %232 = load i64, i64* %13, align 8
  %233 = load i32, i32* %15, align 4
  %234 = call i64 @disk_write(i32 %230, i32* %231, i64 %232, i32 %233)
  %235 = load i64, i64* @RES_OK, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %227
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %239 = load i32, i32* @FR_DISK_ERR, align 4
  %240 = call i32 @ABORT(%struct.TYPE_15__* %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %227
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %13, align 8
  %246 = sub nsw i64 %244, %245
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = icmp slt i64 %246, %248
  br i1 %249, label %250, label %274

250:                                              ; preds = %241
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = load i32*, i32** %17, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %13, align 8
  %259 = sub nsw i64 %257, %258
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %261 = call i32 @SS(%struct.TYPE_15__* %260)
  %262 = sext i32 %261 to i64
  %263 = mul nsw i64 %259, %262
  %264 = getelementptr inbounds i32, i32* %254, i64 %263
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %266 = call i32 @SS(%struct.TYPE_15__* %265)
  %267 = call i32 @mem_cpy(i32* %253, i32* %264, i32 %266)
  %268 = load i32, i32* @FA_DIRTY, align 4
  %269 = xor i32 %268, -1
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = and i32 %272, %269
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %250, %241
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %276 = call i32 @SS(%struct.TYPE_15__* %275)
  %277 = load i32, i32* %15, align 4
  %278 = mul nsw i32 %276, %277
  store i32 %278, i32* %14, align 4
  br label %348

279:                                              ; preds = %202
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %13, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %309

285:                                              ; preds = %279
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp slt i32 %288, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %285
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* %13, align 8
  %302 = call i64 @disk_read(i32 %297, i32* %300, i64 %301, i32 1)
  %303 = load i64, i64* @RES_OK, align 8
  %304 = icmp ne i64 %302, %303
  br i1 %304, label %305, label %309

305:                                              ; preds = %294
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %307 = load i32, i32* @FR_DISK_ERR, align 4
  %308 = call i32 @ABORT(%struct.TYPE_15__* %306, i32 %307)
  br label %309

309:                                              ; preds = %305, %294, %285, %279
  %310 = load i64, i64* %13, align 8
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 2
  store i64 %310, i64* %312, align 8
  br label %313

313:                                              ; preds = %309, %80
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %315 = call i32 @SS(%struct.TYPE_15__* %314)
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %320 = call i32 @SS(%struct.TYPE_15__* %319)
  %321 = srem i32 %318, %320
  %322 = sub nsw i32 %315, %321
  store i32 %322, i32* %14, align 4
  %323 = load i32, i32* %14, align 4
  %324 = load i32, i32* %8, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %313
  %327 = load i32, i32* %8, align 4
  store i32 %327, i32* %14, align 4
  br label %328

328:                                              ; preds = %326, %313
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %336 = call i32 @SS(%struct.TYPE_15__* %335)
  %337 = srem i32 %334, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %331, i64 %338
  %340 = load i32*, i32** %17, align 8
  %341 = load i32, i32* %14, align 4
  %342 = call i32 @mem_cpy(i32* %339, i32* %340, i32 %341)
  %343 = load i32, i32* @FA_DIRTY, align 4
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %328, %274
  %349 = load i32, i32* %14, align 4
  %350 = load i32, i32* %8, align 4
  %351 = sub nsw i32 %350, %349
  store i32 %351, i32* %8, align 4
  %352 = load i32, i32* %14, align 4
  %353 = load i32*, i32** %9, align 8
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, %352
  store i32 %355, i32* %353, align 4
  %356 = load i32, i32* %14, align 4
  %357 = load i32*, i32** %17, align 8
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds i32, i32* %357, i64 %358
  store i32* %359, i32** %17, align 8
  %360 = load i32, i32* %14, align 4
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, %360
  store i32 %364, i32* %362, align 4
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 4
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp sgt i32 %367, %371
  br i1 %372, label %373, label %377

373:                                              ; preds = %348
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  br label %382

377:                                              ; preds = %348
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 4
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  br label %382

382:                                              ; preds = %377, %373
  %383 = phi i32 [ %376, %373 ], [ %381, %377 ]
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 4
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 0
  store i32 %383, i32* %386, align 8
  br label %77

387:                                              ; preds = %129, %77
  %388 = load i32, i32* @FA_MODIFIED, align 4
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = or i32 %391, %388
  store i32 %392, i32* %390, align 8
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %394 = load i64, i64* @FR_OK, align 8
  %395 = call i32 @LEAVE_FF(%struct.TYPE_15__* %393, i64 %394)
  %396 = load i64, i64* %5, align 8
  ret i64 %396
}

declare dso_local i64 @validate(%struct.TYPE_16__*, %struct.TYPE_15__**) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @SS(%struct.TYPE_15__*) #1

declare dso_local i64 @create_chain(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ABORT(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @disk_write(i32, i32*, i64, i32) #1

declare dso_local i64 @clst2sect(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @mem_cpy(i32*, i32*, i32) #1

declare dso_local i64 @disk_read(i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
