; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_dsoundrender.c_DSoundRender_GetWritePos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_dsoundrender.c_DSoundRender_GetWritePos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i64, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Continuing from old position\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"Delta too big %i/%i, overwriting old data or even skipping\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Skipping %u bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Advancing %u bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Delta too big %i/%i, too far ahead\0A\00", align 1
@DSoundRenderer_Max_Fill = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Blocked: too full %i / %i\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i64*, i32, i64*, i64*)* @DSoundRender_GetWritePos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DSoundRender_GetWritePos(%struct.TYPE_18__* %0, i64* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %12, align 8
  store i32 500000, i32* %16, align 4
  store i32 250000, i32* %17, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = call i32 @DSoundRender_UpdatePositions(%struct.TYPE_18__* %35, i64* %13, i64* %14)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 4
  %47 = icmp eq i32* %44, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %5
  %49 = load i32, i32* %17, align 4
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @time_from_pos(%struct.TYPE_18__* %53, i64 %54)
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %18, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %18, align 4
  br label %87

64:                                               ; preds = %5
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @IReferenceClock_GetTime(i32* %76, i32* %18)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %18, align 4
  br label %86

85:                                               ; preds = %64
  store i32 -1, i32* %9, align 4
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = load i64*, i64** %11, align 8
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i64, i64* %13, align 8
  %98 = load i64*, i64** %8, align 8
  store i64 %97, i64* %98, align 8
  br label %232

99:                                               ; preds = %92
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32, i32* %18, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %15, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i32 @time_from_pos(%struct.TYPE_18__* %105, i64 %108)
  %110 = add nsw i32 %104, %109
  store i32 %110, i32* %19, align 4
  br label %123

111:                                              ; preds = %99
  %112 = load i32, i32* %18, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %13, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i64, i64* %15, align 8
  %120 = sub nsw i64 %118, %119
  %121 = call i32 @time_from_pos(%struct.TYPE_18__* %113, i64 %120)
  %122 = add nsw i32 %112, %121
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %111, %103
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %19, align 4
  %126 = sub nsw i32 %124, %125
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %16, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp sge i32 %127, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %137 = load i64, i64* %13, align 8
  %138 = load i64*, i64** %8, align 8
  store i64 %137, i64* %138, align 8
  br label %231

139:                                              ; preds = %131, %123
  %140 = load i32, i32* %20, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %204

142:                                              ; preds = %139
  %143 = load i32, i32* %20, align 4
  %144 = sdiv i32 %143, 10000
  %145 = sext i32 %144 to i64
  %146 = load i32, i32* %16, align 4
  %147 = sdiv i32 %146, 10000
  %148 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %145, i32 %147)
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %15, align 8
  %151 = icmp sge i64 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %142
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %15, align 8
  %157 = sub nsw i64 %155, %156
  %158 = call i32 @time_from_pos(%struct.TYPE_18__* %154, i64 %157)
  %159 = add nsw i32 %153, %158
  store i32 %159, i32* %22, align 4
  br label %172

160:                                              ; preds = %142
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %15, align 8
  %167 = sub nsw i64 %165, %166
  %168 = load i64, i64* %14, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @time_from_pos(%struct.TYPE_18__* %162, i64 %169)
  %171 = add nsw i32 %161, %170
  store i32 %171, i32* %22, align 4
  br label %172

172:                                              ; preds = %160, %152
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %21, align 4
  %176 = load i32, i32* %21, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %172
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %180 = load i32, i32* %21, align 4
  %181 = call i64 @pos_from_time(%struct.TYPE_18__* %179, i32 %180)
  store i64 %181, i64* %23, align 8
  %182 = load i64, i64* %23, align 8
  %183 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %182)
  %184 = load i64, i64* %23, align 8
  %185 = load i64*, i64** %11, align 8
  store i64 %184, i64* %185, align 8
  %186 = load i64, i64* %14, align 8
  %187 = load i64*, i64** %8, align 8
  store i64 %186, i64* %187, align 8
  br label %203

188:                                              ; preds = %172
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %190 = load i32, i32* %21, align 4
  %191 = sub nsw i32 0, %190
  %192 = call i64 @pos_from_time(%struct.TYPE_18__* %189, i32 %191)
  store i64 %192, i64* %24, align 8
  %193 = load i64, i64* %24, align 8
  %194 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %193)
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %24, align 8
  %197 = add nsw i64 %195, %196
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = srem i64 %197, %200
  %202 = load i64*, i64** %8, align 8
  store i64 %201, i64* %202, align 8
  br label %203

203:                                              ; preds = %188, %178
  br label %230

204:                                              ; preds = %139
  %205 = load i32, i32* %20, align 4
  %206 = sdiv i32 %205, 10000
  %207 = sext i32 %206 to i64
  %208 = load i32, i32* %16, align 4
  %209 = sdiv i32 %208, 10000
  %210 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %207, i32 %209)
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %212 = load i32, i32* %20, align 4
  %213 = call i64 @pos_from_time(%struct.TYPE_18__* %211, i32 %212)
  store i64 %213, i64* %25, align 8
  %214 = load i64, i64* %25, align 8
  %215 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %214)
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* @DSoundRenderer_Max_Fill, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %204
  %220 = load i32, i32* @S_FALSE, align 4
  store i32 %220, i32* %6, align 4
  br label %295

221:                                              ; preds = %204
  %222 = load i64, i64* %14, align 8
  %223 = load i64, i64* %25, align 8
  %224 = add nsw i64 %222, %223
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = srem i64 %224, %227
  %229 = load i64*, i64** %8, align 8
  store i64 %228, i64* %229, align 8
  br label %230

230:                                              ; preds = %221, %203
  br label %231

231:                                              ; preds = %230, %135
  br label %232

232:                                              ; preds = %231, %96
  %233 = load i64, i64* %15, align 8
  %234 = load i64*, i64** %8, align 8
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %233, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %232
  %238 = load i64, i64* %15, align 8
  %239 = load i64*, i64** %8, align 8
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %238, %240
  %242 = load i64*, i64** %10, align 8
  store i64 %241, i64* %242, align 8
  br label %268

243:                                              ; preds = %232
  %244 = load i64, i64* %15, align 8
  %245 = load i64*, i64** %8, align 8
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %244, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %243
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = sub nsw i64 %251, %254
  %256 = load i64*, i64** %10, align 8
  store i64 %255, i64* %256, align 8
  br label %267

257:                                              ; preds = %243
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* %15, align 8
  %262 = add nsw i64 %260, %261
  %263 = load i64*, i64** %8, align 8
  %264 = load i64, i64* %263, align 8
  %265 = sub nsw i64 %262, %264
  %266 = load i64*, i64** %10, align 8
  store i64 %265, i64* %266, align 8
  br label %267

267:                                              ; preds = %257, %248
  br label %268

268:                                              ; preds = %267, %237
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64*, i64** %10, align 8
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %272, %274
  %276 = call i32 @time_from_pos(%struct.TYPE_18__* %269, i64 %275)
  %277 = load i32, i32* @DSoundRenderer_Max_Fill, align 4
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %293

279:                                              ; preds = %268
  %280 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load i64*, i64** %10, align 8
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 %283, %285
  %287 = call i32 @time_from_pos(%struct.TYPE_18__* %280, i64 %286)
  %288 = sdiv i32 %287, 10000
  %289 = load i32, i32* @DSoundRenderer_Max_Fill, align 4
  %290 = sdiv i32 %289, 10000
  %291 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %288, i32 %290)
  %292 = load i32, i32* @S_FALSE, align 4
  store i32 %292, i32* %6, align 4
  br label %295

293:                                              ; preds = %268
  %294 = load i32, i32* @S_OK, align 4
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %293, %279, %219
  %296 = load i32, i32* %6, align 4
  ret i32 %296
}

declare dso_local i32 @DSoundRender_UpdatePositions(%struct.TYPE_18__*, i64*, i64*) #1

declare dso_local i32 @time_from_pos(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @IReferenceClock_GetTime(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WARN(i8*, i64, ...) #1

declare dso_local i64 @pos_from_time(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
