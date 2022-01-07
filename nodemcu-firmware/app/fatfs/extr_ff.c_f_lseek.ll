; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_lseek.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_f_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }

@FR_OK = common dso_local global i64 0, align 8
@FF_FS_READONLY = common dso_local global i64 0, align 8
@FA_WRITE = common dso_local global i32 0, align 4
@FR_INT_ERR = common dso_local global i32 0, align 4
@FR_DISK_ERR = common dso_local global i32 0, align 4
@FF_FS_EXFAT = common dso_local global i64 0, align 8
@FA_MODIFIED = common dso_local global i32 0, align 4
@FA_DIRTY = common dso_local global i32 0, align 4
@RES_OK = common dso_local global i64 0, align 8
@CREATE_LINKMAP = common dso_local global i32 0, align 4
@FR_NOT_ENOUGH_CORE = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @f_lseek(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 6
  %14 = call i64 @validate(%struct.TYPE_16__* %13, %struct.TYPE_15__** %7)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @FR_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @FR_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @LEAVE_FF(%struct.TYPE_15__* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i64, i64* @FF_FS_READONLY, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FA_WRITE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40, %37
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %40, %30
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %244

60:                                               ; preds = %52
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = call i32 @SS(%struct.TYPE_15__* %64)
  %66 = mul nsw i32 %63, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %9, align 4
  %77 = sdiv i32 %75, %76
  %78 = icmp sge i32 %73, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  %85 = and i32 %81, %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %8, align 4
  br label %129

96:                                               ; preds = %69, %60
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 6
  %106 = call i32 @create_chain(%struct.TYPE_16__* %105, i32 0)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = load i32, i32* @FR_INT_ERR, align 4
  %112 = call i32 @ABORT(%struct.TYPE_15__* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = load i32, i32* @FR_DISK_ERR, align 4
  %119 = call i32 @ABORT(%struct.TYPE_15__* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  br label %125

125:                                              ; preds = %120, %96
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %79
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %243

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %210, %132
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %214

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @FA_WRITE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %137
  %153 = load i64, i64* @FF_FS_EXFAT, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %152
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %158, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %155
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load i32, i32* @FA_MODIFIED, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %164, %155, %152
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 6
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @create_chain(%struct.TYPE_16__* %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 0, i32* %5, align 4
  br label %214

184:                                              ; preds = %176
  br label %190

185:                                              ; preds = %137
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @get_fat(%struct.TYPE_16__* %187, i32 %188)
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %185, %184
  %191 = load i32, i32* %8, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %195 = load i32, i32* @FR_DISK_ERR, align 4
  %196 = call i32 @ABORT(%struct.TYPE_15__* %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %190
  %198 = load i32, i32* %8, align 4
  %199 = icmp sle i32 %198, 1
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp sge i32 %201, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200, %197
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %208 = load i32, i32* @FR_INT_ERR, align 4
  %209 = call i32 @ABORT(%struct.TYPE_15__* %207, i32 %208)
  br label %210

210:                                              ; preds = %206, %200
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %133

214:                                              ; preds = %183, %133
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %222 = call i32 @SS(%struct.TYPE_15__* %221)
  %223 = srem i32 %220, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %242

225:                                              ; preds = %214
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @clst2sect(%struct.TYPE_15__* %226, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %233 = load i32, i32* @FR_INT_ERR, align 4
  %234 = call i32 @ABORT(%struct.TYPE_15__* %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %225
  %236 = load i32, i32* %5, align 4
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %238 = call i32 @SS(%struct.TYPE_15__* %237)
  %239 = sdiv i32 %236, %238
  %240 = load i32, i32* %10, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %235, %214
  br label %243

243:                                              ; preds = %242, %129
  br label %244

244:                                              ; preds = %243, %52
  %245 = load i64, i64* @FF_FS_READONLY, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %268, label %247

247:                                              ; preds = %244
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %250, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %247
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 6
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  store i32 %259, i32* %262, align 4
  %263 = load i32, i32* @FA_MODIFIED, align 4
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  br label %268

268:                                              ; preds = %256, %247, %244
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %273 = call i32 @SS(%struct.TYPE_15__* %272)
  %274 = srem i32 %271, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %332

276:                                              ; preds = %268
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %277, %280
  br i1 %281, label %282, label %332

282:                                              ; preds = %276
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @FA_DIRTY, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %313

289:                                              ; preds = %282
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = call i64 @disk_write(i32 %292, i32 %295, i32 %298, i32 1)
  %300 = load i64, i64* @RES_OK, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %289
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %304 = load i32, i32* @FR_DISK_ERR, align 4
  %305 = call i32 @ABORT(%struct.TYPE_15__* %303, i32 %304)
  br label %306

306:                                              ; preds = %302, %289
  %307 = load i32, i32* @FA_DIRTY, align 4
  %308 = xor i32 %307, -1
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 8
  br label %313

313:                                              ; preds = %306, %282
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %10, align 4
  %321 = call i64 @disk_read(i32 %316, i32 %319, i32 %320, i32 1)
  %322 = load i64, i64* @RES_OK, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %313
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %326 = load i32, i32* @FR_DISK_ERR, align 4
  %327 = call i32 @ABORT(%struct.TYPE_15__* %325, i32 %326)
  br label %328

328:                                              ; preds = %324, %313
  %329 = load i32, i32* %10, align 4
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 3
  store i32 %329, i32* %331, align 4
  br label %332

332:                                              ; preds = %328, %276, %268
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %334 = load i64, i64* %6, align 8
  %335 = call i32 @LEAVE_FF(%struct.TYPE_15__* %333, i64 %334)
  %336 = load i64, i64* %3, align 8
  ret i64 %336
}

declare dso_local i64 @validate(%struct.TYPE_16__*, %struct.TYPE_15__**) #1

declare dso_local i32 @LEAVE_FF(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @SS(%struct.TYPE_15__*) #1

declare dso_local i32 @create_chain(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ABORT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @clst2sect(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @disk_write(i32, i32, i32, i32) #1

declare dso_local i64 @disk_read(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
