; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_push.c_ao_play_data.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_push.c_ao_play_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, i32, i32 (i32)*, %struct.TYPE_2__*, i64, %struct.ao_push_state* }
%struct.TYPE_2__ = type { i32 (%struct.ao*)*, i32 (%struct.ao*, i8**, i32, i32)* }
%struct.ao_push_state = type { i32, i32, i64, i32, i64, i32**, i64 }

@.str = private unnamed_addr constant [55 x i8] c"Audio device reports unaligned available buffer size.\0A\00", align 1
@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"start ao fill\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"end ao fill\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Audio device returned nonsense value.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error writing audio to device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [91 x i8] c"Audio device returned broken buffer state (sent %d samples, got %d samples, %d period%s)!\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" final\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"Audio output driver seems to ignore AOPLAY_FINAL_CHUNK.\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Audio output is reporting incorrect buffer status.\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"in=%d flags=%d space=%d r=%d wa/pl=%d/%d needed=%d more=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @ao_play_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ao_play_data(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_push_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %15 = load %struct.ao*, %struct.ao** %2, align 8
  %16 = getelementptr inbounds %struct.ao, %struct.ao* %15, i32 0, i32 6
  %17 = load %struct.ao_push_state*, %struct.ao_push_state** %16, align 8
  store %struct.ao_push_state* %17, %struct.ao_push_state** %3, align 8
  %18 = load %struct.ao*, %struct.ao** %2, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %21, align 8
  %23 = load %struct.ao*, %struct.ao** %2, align 8
  %24 = call i32 %22(%struct.ao* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %26 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %1
  %30 = load %struct.ao*, %struct.ao** %2, align 8
  %31 = getelementptr inbounds %struct.ao, %struct.ao* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %36 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i1 [ false, %29 ], [ %39, %34 ]
  br label %42

42:                                               ; preds = %40, %1
  %43 = phi i1 [ true, %1 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @MPMAX(i32 %45, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ao*, %struct.ao** %2, align 8
  %49 = getelementptr inbounds %struct.ao, %struct.ao* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = srem i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.ao*, %struct.ao** %2, align 8
  %55 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %42
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %61 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %60, i32 0, i32 5
  %62 = load i32**, i32*** %61, align 8
  store i32** %62, i32*** %6, align 8
  %63 = load %struct.ao*, %struct.ao** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @realloc_silence(%struct.ao* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  br label %70

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  store i32 %71, i32* %7, align 4
  br label %77

72:                                               ; preds = %56
  %73 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %74 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @mp_audio_buffer_peek(i32 %75, i32*** %6, i32* %7)
  br label %77

77:                                               ; preds = %72, %70
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %77
  store i32 0, i32* %9, align 4
  %85 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %86 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %107

97:                                               ; preds = %89, %84
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.ao*, %struct.ao** %2, align 8
  %100 = getelementptr inbounds %struct.ao, %struct.ao* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sdiv i32 %98, %101
  %103 = load %struct.ao*, %struct.ao** %2, align 8
  %104 = getelementptr inbounds %struct.ao, %struct.ao* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %97, %93
  %108 = load %struct.ao*, %struct.ao** %2, align 8
  %109 = call i32 @MP_STATS(%struct.ao* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.ao*, %struct.ao** %2, align 8
  %111 = load i32**, i32*** %6, align 8
  %112 = bitcast i32** %111 to i8**
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @ao_post_process_data(%struct.ao* %110, i8** %112, i32 %113)
  store i32 0, i32* %10, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %107
  %118 = load %struct.ao*, %struct.ao** %2, align 8
  %119 = getelementptr inbounds %struct.ao, %struct.ao* %118, i32 0, i32 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32 (%struct.ao*, i8**, i32, i32)*, i32 (%struct.ao*, i8**, i32, i32)** %121, align 8
  %123 = load %struct.ao*, %struct.ao** %2, align 8
  %124 = load i32**, i32*** %6, align 8
  %125 = bitcast i32** %124 to i8**
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 %122(%struct.ao* %123, i8** %125, i32 %126, i32 %127)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %117, %107
  %130 = load %struct.ao*, %struct.ao** %2, align 8
  %131 = call i32 @MP_STATS(%struct.ao* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.ao*, %struct.ao** %2, align 8
  %137 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %10, align 4
  br label %165

139:                                              ; preds = %129
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.ao*, %struct.ao** %2, align 8
  %144 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %164

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %145
  %150 = load %struct.ao*, %struct.ao** %2, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.ao*, %struct.ao** %2, align 8
  %154 = getelementptr inbounds %struct.ao, %struct.ao* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %162 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %150, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.5, i64 0, i64 0), i32 %151, i32 %152, i32 %155, i8* %161)
  br label %163

163:                                              ; preds = %149, %145
  br label %164

164:                                              ; preds = %163, %142
  br label %165

165:                                              ; preds = %164, %135
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @MPMAX(i32 %166, i32 0)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp sle i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = icmp sgt i32 %175, 0
  br label %177

177:                                              ; preds = %174, %170, %165
  %178 = phi i1 [ false, %170 ], [ false, %165 ], [ %176, %174 ]
  %179 = zext i1 %178 to i32
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load %struct.ao*, %struct.ao** %2, align 8
  %189 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %188, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %190 = load i32, i32* %8, align 4
  store i32 %190, i32* %10, align 4
  br label %191

191:                                              ; preds = %187, %184, %177
  %192 = load i32, i32* %5, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %196 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @mp_audio_buffer_skip(i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %191
  %201 = load i32, i32* %10, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %205 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %204, i32 0, i32 2
  store i64 0, i64* %205, align 8
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i32, i32* %10, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* %4, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, i32* %4, align 4
  %215 = icmp sgt i32 %214, 0
  br label %216

216:                                              ; preds = %213, %209, %206
  %217 = phi i1 [ false, %209 ], [ false, %206 ], [ %215, %213 ]
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.ao*, %struct.ao** %2, align 8
  %223 = call i32 (%struct.ao*, i8*, ...) @MP_ERR(%struct.ao* %222, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i32, i32* %4, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %10, align 4
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %230, %227, %224
  %234 = phi i1 [ true, %227 ], [ true, %224 ], [ %232, %230 ]
  %235 = zext i1 %234 to i32
  %236 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %237 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load i32, i32* %5, align 4
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  br label %244

244:                                              ; preds = %240, %233
  %245 = phi i1 [ false, %233 ], [ %243, %240 ]
  %246 = zext i1 %245 to i32
  %247 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %248 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  %251 = load %struct.ao*, %struct.ao** %2, align 8
  %252 = call i32 @unlocked_get_space(%struct.ao* %251)
  store i32 %252, i32* %13, align 4
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %4, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %244
  %258 = load %struct.ao*, %struct.ao** %2, align 8
  %259 = getelementptr inbounds %struct.ao, %struct.ao* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sdiv i32 %260, 4
  br label %263

262:                                              ; preds = %244
  br label %263

263:                                              ; preds = %262, %257
  %264 = phi i32 [ %261, %257 ], [ 1, %262 ]
  %265 = icmp sge i32 %253, %264
  br i1 %265, label %266, label %275

266:                                              ; preds = %263
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  %274 = xor i1 %273, true
  br label %275

275:                                              ; preds = %269, %266, %263
  %276 = phi i1 [ false, %266 ], [ false, %263 ], [ %274, %269 ]
  %277 = zext i1 %276 to i32
  store i32 %277, i32* %14, align 4
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %288

280:                                              ; preds = %275
  %281 = load %struct.ao*, %struct.ao** %2, align 8
  %282 = getelementptr inbounds %struct.ao, %struct.ao* %281, i32 0, i32 3
  %283 = load i32 (i32)*, i32 (i32)** %282, align 8
  %284 = load %struct.ao*, %struct.ao** %2, align 8
  %285 = getelementptr inbounds %struct.ao, %struct.ao* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 %283(i32 %286)
  br label %288

288:                                              ; preds = %280, %275
  %289 = load %struct.ao*, %struct.ao** %2, align 8
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* %10, align 4
  %294 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %295 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ao_push_state*, %struct.ao_push_state** %3, align 8
  %298 = getelementptr inbounds %struct.ao_push_state, %struct.ao_push_state* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @MP_TRACE(%struct.ao* %289, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %290, i32 %291, i32 %292, i32 %293, i32 %296, i32 %299, i32 %300, i32 %301)
  ret void
}

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, ...) #1

declare dso_local i64 @realloc_silence(%struct.ao*, i32) #1

declare dso_local i32 @mp_audio_buffer_peek(i32, i32***, i32*) #1

declare dso_local i32 @MP_STATS(%struct.ao*, i8*) #1

declare dso_local i32 @ao_post_process_data(%struct.ao*, i8**, i32) #1

declare dso_local i32 @mp_audio_buffer_skip(i32, i32) #1

declare dso_local i32 @unlocked_get_space(%struct.ao*) #1

declare dso_local i32 @MP_TRACE(%struct.ao*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
