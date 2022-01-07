; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { float, i32, i32, i32, float, float, i32, %struct.TYPE_2__, i32 (%struct.game_capture*)*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@WINDOW_PRIORITY_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"hook stop signal received\00", align 1
@EVENT_HOOK_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"inject process failed: %ld\00", align 1
@ERROR_RETRY_INTERVAL = common dso_local global float 0.000000e+00, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"capture initializing!\00", align 1
@CAPTURE_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"init_capture_data failed\00", align 1
@CAPTURE_RETRY = common dso_local global i32 0, align 4
@CAPTURE_MODE_ANY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"capture window no longer exists, terminating capture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @game_capture_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @game_capture_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.game_capture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.game_capture*
  store %struct.game_capture* %12, %struct.game_capture** %5, align 8
  %13 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %14 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %13, i32 0, i32 22
  %15 = call i32 @os_atomic_set_bool(i32* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %17 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %16, i32 0, i32 21
  %18 = call i32 @os_atomic_set_bool(i32* %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %2
  %22 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %23 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %22, i32 0, i32 20
  %24 = call i64 @os_atomic_load_long(i32* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @is_uwp_window(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @get_uwp_actual_window(i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %34 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %33, i32 0, i32 19
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @get_window_exe(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %40 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %39, i32 0, i32 18
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @get_window_title(i32* %40, i32 %41)
  %43 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %44 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %43, i32 0, i32 17
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @get_window_class(i32* %44, i32 %45)
  %47 = load i32, i32* @WINDOW_PRIORITY_CLASS, align 4
  %48 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %49 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %48, i32 0, i32 16
  store i32 %47, i32* %49, align 4
  %50 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %51 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call float @hook_rate_to_float(i32 %53)
  %55 = fmul float 1.000000e+01, %54
  %56 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %57 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %56, i32 0, i32 0
  store float %55, float* %57, align 8
  %58 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %59 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %61

60:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %38
  br label %69

62:                                               ; preds = %2
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %67 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %61
  %70 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %71 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %70, i32 0, i32 15
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @obs_source_showing(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %69
  %76 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %77 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %82 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %87 = call i32 @stop_capture(%struct.game_capture* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %90 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %89, i32 0, i32 2
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %75
  br label %352

92:                                               ; preds = %69
  %93 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %94 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  %98 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %99 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call float @hook_rate_to_float(i32 %101)
  %103 = fmul float 1.000000e+01, %102
  %104 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %105 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %104, i32 0, i32 0
  store float %103, float* %105, align 8
  br label %106

106:                                              ; preds = %97, %92
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %109 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %108, i32 0, i32 14
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %114 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %113, i32 0, i32 14
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @object_signalled(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %121 = call i32 @stop_capture(%struct.game_capture* %120)
  br label %122

122:                                              ; preds = %118, %112, %107
  %123 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %124 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %132 = call i32 @stop_capture(%struct.game_capture* %131)
  br label %133

133:                                              ; preds = %130, %127, %122
  %134 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %135 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %140 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %139, i32 0, i32 11
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %138
  %144 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %145 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %144, i32 0, i32 13
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %150 = load i32, i32* @EVENT_HOOK_READY, align 4
  %151 = call i64 @open_event_gc(%struct.game_capture* %149, i32 %150)
  %152 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %153 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %152, i32 0, i32 11
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %148, %143, %138, %133
  %155 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %156 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %155, i32 0, i32 12
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %199

159:                                              ; preds = %154
  %160 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %161 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %160, i32 0, i32 12
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @object_signalled(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %199

165:                                              ; preds = %159
  store i64 0, i64* %9, align 8
  %166 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %167 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %166, i32 0, i32 12
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @GetExitCodeProcess(i64 %168, i64* %9)
  %170 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %171 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %170, i32 0, i32 12
  %172 = call i32 @close_handle(i64* %171)
  %173 = load i64, i64* %9, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %165
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %176)
  %178 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %179 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %178, i32 0, i32 3
  store i32 1, i32* %179, align 4
  br label %198

180:                                              ; preds = %165
  %181 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %182 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %180
  %186 = load float, float* @ERROR_RETRY_INTERVAL, align 4
  %187 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %188 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call float @hook_rate_to_float(i32 %190)
  %192 = fmul float %186, %191
  %193 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %194 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %193, i32 0, i32 4
  store float %192, float* %194, align 8
  %195 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %196 = call i32 @stop_capture(%struct.game_capture* %195)
  br label %197

197:                                              ; preds = %185, %180
  br label %198

198:                                              ; preds = %197, %175
  br label %199

199:                                              ; preds = %198, %159, %154
  %200 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %201 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %200, i32 0, i32 11
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %246

204:                                              ; preds = %199
  %205 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %206 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %205, i32 0, i32 11
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @object_signalled(i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %246

210:                                              ; preds = %204
  %211 = call i32 @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %212 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %213 = call i32 @init_capture_data(%struct.game_capture* %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @CAPTURE_SUCCESS, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %219 = call i64 @start_capture(%struct.game_capture* %218)
  %220 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %221 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %220, i32 0, i32 10
  store i64 %219, i64* %221, align 8
  br label %224

222:                                              ; preds = %210
  %223 = call i32 @debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %217
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @CAPTURE_RETRY, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %245

228:                                              ; preds = %224
  %229 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %230 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %229, i32 0, i32 10
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %228
  %234 = load float, float* @ERROR_RETRY_INTERVAL, align 4
  %235 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %236 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call float @hook_rate_to_float(i32 %238)
  %240 = fmul float %234, %239
  %241 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %242 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %241, i32 0, i32 4
  store float %240, float* %242, align 8
  %243 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %244 = call i32 @stop_capture(%struct.game_capture* %243)
  br label %245

245:                                              ; preds = %233, %228, %224
  br label %246

246:                                              ; preds = %245, %204, %199
  %247 = load float, float* %4, align 4
  %248 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %249 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %248, i32 0, i32 0
  %250 = load float, float* %249, align 8
  %251 = fadd float %250, %247
  store float %251, float* %249, align 8
  %252 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %253 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %252, i32 0, i32 9
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %288, label %256

256:                                              ; preds = %246
  %257 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %258 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %287, label %261

261:                                              ; preds = %256
  %262 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %263 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %262, i32 0, i32 0
  %264 = load float, float* %263, align 8
  %265 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %266 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %265, i32 0, i32 4
  %267 = load float, float* %266, align 8
  %268 = fcmp ogt float %264, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %261
  %270 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %271 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @CAPTURE_MODE_ANY, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %281, label %276

276:                                              ; preds = %269
  %277 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %278 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276, %269
  %282 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %283 = call i32 @try_hook(%struct.game_capture* %282)
  %284 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %285 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %284, i32 0, i32 0
  store float 0.000000e+00, float* %285, align 8
  br label %286

286:                                              ; preds = %281, %276
  br label %287

287:                                              ; preds = %286, %261, %256
  br label %344

288:                                              ; preds = %246
  %289 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %290 = call i32 @capture_valid(%struct.game_capture* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %288
  %293 = call i32 @info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %294 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %295 = call i32 @stop_capture(%struct.game_capture* %294)
  br label %343

296:                                              ; preds = %288
  %297 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %298 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %297, i32 0, i32 8
  %299 = load i32 (%struct.game_capture*)*, i32 (%struct.game_capture*)** %298, align 8
  %300 = icmp ne i32 (%struct.game_capture*)* %299, null
  br i1 %300, label %301, label %309

301:                                              ; preds = %296
  %302 = call i32 (...) @obs_enter_graphics()
  %303 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %304 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %303, i32 0, i32 8
  %305 = load i32 (%struct.game_capture*)*, i32 (%struct.game_capture*)** %304, align 8
  %306 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %307 = call i32 %305(%struct.game_capture* %306)
  %308 = call i32 (...) @obs_leave_graphics()
  br label %309

309:                                              ; preds = %301, %296
  %310 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %311 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %310, i32 0, i32 7
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %309
  %316 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %317 = load float, float* %4, align 4
  %318 = call i32 @check_foreground_window(%struct.game_capture* %316, float %317)
  %319 = call i32 (...) @obs_enter_graphics()
  %320 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %321 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %320, i32 0, i32 6
  %322 = call i32 @cursor_capture(i32* %321)
  %323 = call i32 (...) @obs_leave_graphics()
  br label %324

324:                                              ; preds = %315, %309
  %325 = load float, float* %4, align 4
  %326 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %327 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %326, i32 0, i32 5
  %328 = load float, float* %327, align 4
  %329 = fadd float %328, %325
  store float %329, float* %327, align 4
  %330 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %331 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %330, i32 0, i32 5
  %332 = load float, float* %331, align 4
  %333 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %334 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %333, i32 0, i32 4
  %335 = load float, float* %334, align 8
  %336 = fcmp oge float %332, %335
  br i1 %336, label %337, label %342

337:                                              ; preds = %324
  %338 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %339 = call i32 @reset_frame_interval(%struct.game_capture* %338)
  %340 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %341 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %340, i32 0, i32 5
  store float 0.000000e+00, float* %341, align 4
  br label %342

342:                                              ; preds = %337, %324
  br label %343

343:                                              ; preds = %342, %292
  br label %344

344:                                              ; preds = %343, %287
  %345 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %346 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %344
  %350 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %351 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %350, i32 0, i32 2
  store i32 1, i32* %351, align 8
  br label %352

352:                                              ; preds = %91, %349, %344
  ret void
}

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i64 @os_atomic_load_long(i32*) #1

declare dso_local i64 @is_uwp_window(i32) #1

declare dso_local i32 @get_uwp_actual_window(i32) #1

declare dso_local i64 @get_window_exe(i32*, i32) #1

declare dso_local i32 @get_window_title(i32*, i32) #1

declare dso_local i32 @get_window_class(i32*, i32) #1

declare dso_local float @hook_rate_to_float(i32) #1

declare dso_local i32 @obs_source_showing(i32) #1

declare dso_local i32 @stop_capture(%struct.game_capture*) #1

declare dso_local i64 @object_signalled(i64) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i64 @open_event_gc(%struct.game_capture*, i32) #1

declare dso_local i32 @GetExitCodeProcess(i64, i64*) #1

declare dso_local i32 @close_handle(i64*) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i32 @init_capture_data(%struct.game_capture*) #1

declare dso_local i64 @start_capture(%struct.game_capture*) #1

declare dso_local i32 @try_hook(%struct.game_capture*) #1

declare dso_local i32 @capture_valid(%struct.game_capture*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @check_foreground_window(%struct.game_capture*, float) #1

declare dso_local i32 @cursor_capture(i32*) #1

declare dso_local i32 @reset_frame_interval(%struct.game_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
