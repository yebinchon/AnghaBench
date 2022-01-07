; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_fill_audio_out_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_fill_audio_out_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32, i64, i64, i64, double, i32, i64, i64, i64, i64, %struct.ao_chain*, %struct.MPOpts* }
%struct.ao_chain = type { i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.MPOpts = type { i32, i32, i64, double, i64 }
%struct.mp_chmap = type { i32 }

@STATUS_EOF = common dso_local global i64 0, align 8
@AO_EVENT_RELOAD = common dso_local global i32 0, align 4
@AO_EVENT_INITIAL_UNBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"audio EOF without any data\0A\00", align 1
@STREAM_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Reset playback due to audio timestamp reset.\0A\00", align 1
@STATUS_PLAYING = common dso_local global i64 0, align 8
@AO_EVENT_UNDERRUN = common dso_local global i32 0, align 4
@VS_DISP_ADROP = common dso_local global i64 0, align 8
@STATUS_DRAINING = common dso_local global i64 0, align 8
@AD_EOF = common dso_local global i32 0, align 4
@AD_OK = common dso_local global i32 0, align 4
@AD_WAIT = common dso_local global i32 0, align 4
@STATUS_SYNCING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"drop-audio\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"duplicate-audio\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"audio skip_duplicate=%d\0A\00", align 1
@STATUS_FILLING = common dso_local global i64 0, align 8
@STATUS_READY = common dso_local global i64 0, align 8
@AOPLAY_FINAL_CHUNK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"audio EOF reached\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_audio_out_buffers(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ao_chain*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_chmap, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32**, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %29 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 12
  %31 = load %struct.MPOpts*, %struct.MPOpts** %30, align 8
  store %struct.MPOpts* %31, %struct.MPOpts** %3, align 8
  %32 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %33 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STATUS_EOF, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %39 = call i32 @dump_audio_stats(%struct.MPContext* %38)
  %40 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %1
  %45 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @AO_EVENT_RELOAD, align 4
  %49 = call i64 @ao_query_and_reset_events(i64 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %53 = call i32 @reload_audio_output(%struct.MPContext* %52)
  br label %54

54:                                               ; preds = %51, %44, %1
  %55 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @AO_EVENT_INITIAL_UNBLOCK, align 4
  %64 = call i64 @ao_query_and_reset_events(i64 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ao_unblock(i64 %69)
  br label %71

71:                                               ; preds = %66, %59, %54
  %72 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %73 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %72, i32 0, i32 11
  %74 = load %struct.ao_chain*, %struct.ao_chain** %73, align 8
  store %struct.ao_chain* %74, %struct.ao_chain** %5, align 8
  %75 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %76 = icmp ne %struct.ao_chain* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %742

78:                                               ; preds = %71
  %79 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %80 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %79, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %87 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %88 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %87, i32 0, i32 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = call i32 @error_on_track(%struct.MPContext* %86, %struct.TYPE_8__* %89)
  br label %742

91:                                               ; preds = %78
  %92 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %145, label %96

96:                                               ; preds = %91
  %97 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %98 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %97, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mp_pin_out_request_data(i32 %105)
  %107 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %108 = call i32 @reinit_audio_filters_and_output(%struct.MPContext* %107)
  %109 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %110 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %109, i32 0, i32 11
  %111 = load %struct.ao_chain*, %struct.ao_chain** %110, align 8
  %112 = icmp ne %struct.ao_chain* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %96
  br label %742

114:                                              ; preds = %96
  %115 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %116 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %115, i32 0, i32 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %114
  %122 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %123 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @STATUS_EOF, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %121
  %128 = load i64, i64* @STATUS_EOF, align 8
  %129 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %130 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %132 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %133 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %134 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %133, i32 0, i32 3
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = call i32 @mp_filter_reset(%struct.TYPE_7__* %137)
  %139 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %140 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @STREAM_AUDIO, align 4
  %143 = call i32 @encode_lavc_stream_eof(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %127, %121, %114
  br label %742

145:                                              ; preds = %91
  %146 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %147 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i64 (...) @mp_time_sec()
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %153 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i64 (...) @mp_time_sec()
  %156 = sub nsw i64 %154, %155
  %157 = sitofp i64 %156 to double
  store double %157, double* %6, align 8
  %158 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %159 = load double, double* %6, align 8
  %160 = call i32 @mp_set_timeout(%struct.MPContext* %158, double %159)
  br label %742

161:                                              ; preds = %145
  %162 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %163 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %162, i32 0, i32 10
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %161
  %167 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %168 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %167, i32 0, i32 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = icmp ne %struct.TYPE_8__* %169, null
  br i1 %170, label %171, label %194

171:                                              ; preds = %166
  %172 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %173 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %172, i32 0, i32 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = icmp ne %struct.TYPE_6__* %176, null
  br i1 %177, label %178, label %194

178:                                              ; preds = %171
  %179 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %180 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %179, i32 0, i32 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %178
  %188 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %189 = call i32 @MP_WARN(%struct.MPContext* %188, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %190 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %191 = call i32 @reset_playback_state(%struct.MPContext* %190)
  %192 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %193 = call i32 @mp_wakeup_core(%struct.MPContext* %192)
  br label %742

194:                                              ; preds = %178, %171, %166, %161
  %195 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %196 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @ao_get_format(i64 %197, i32* %7, i32* %8, %struct.mp_chmap* %9)
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %201 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = sdiv i32 %199, %202
  %204 = sitofp i32 %203 to double
  store double %204, double* %10, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @af_format_sample_alignment(i32 %205)
  store i32 %206, i32* %11, align 4
  %207 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %208 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @STATUS_PLAYING, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %194
  %213 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %214 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @ao_untimed(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %212
  %219 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %220 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @STATUS_EOF, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %226 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  br label %742

230:                                              ; preds = %224, %218, %212, %194
  %231 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %232 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @ao_get_space(i64 %233)
  store i32 %234, i32* %12, align 4
  %235 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %236 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* @AO_EVENT_UNDERRUN, align 4
  %239 = call i64 @ao_query_and_reset_events(i64 %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %230
  %242 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %243 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %242, i32 0, i32 1
  store i32 1, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %230
  %245 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %246 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %742

250:                                              ; preds = %244
  store i32 0, i32* %13, align 4
  %251 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %252 = call i32 @get_sync_samples(%struct.MPContext* %251, i32* %13)
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, 1
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @MPMAX(i32 %258, i32 2500)
  %260 = call i32 @MPMIN(i32 %257, i32 %259)
  store i32 %260, i32* %12, align 4
  br label %270

261:                                              ; preds = %250
  %262 = load i32, i32* %13, align 4
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %265, %266
  %268 = call i32 @MPMAX(i32 1, i32 %267)
  store i32 %268, i32* %12, align 4
  br label %269

269:                                              ; preds = %264, %261
  br label %270

270:                                              ; preds = %269, %255
  store i32 0, i32* %15, align 4
  %271 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %272 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %275 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %273, %276
  %278 = sdiv i32 %277, 100
  %279 = sitofp i32 %278 to double
  store double %279, double* %16, align 8
  %280 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %281 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %280, i32 0, i32 9
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %351

284:                                              ; preds = %270
  %285 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %286 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @VS_DISP_ADROP, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %351

290:                                              ; preds = %284
  %291 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %292 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = call double @fabs(i64 %293)
  %295 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %296 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %295, i32 0, i32 3
  %297 = load double, double* %296, align 8
  %298 = fcmp oge double %294, %297
  br i1 %298, label %299, label %351

299:                                              ; preds = %290
  %300 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %301 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %300, i32 0, i32 5
  %302 = load double, double* %301, align 8
  %303 = load double, double* %16, align 8
  %304 = fcmp olt double %302, %303
  br i1 %304, label %305, label %351

305:                                              ; preds = %299
  %306 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %307 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @STATUS_PLAYING, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %351

311:                                              ; preds = %305
  %312 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %313 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %312, i32 0, i32 3
  %314 = load double, double* %313, align 8
  %315 = load double, double* %10, align 8
  %316 = fmul double %314, %315
  %317 = call i32 @ceil(double %316)
  store i32 %317, i32* %17, align 4
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %11, align 4
  %320 = sdiv i32 %319, 2
  %321 = add nsw i32 %318, %320
  %322 = load i32, i32* %11, align 4
  %323 = sdiv i32 %321, %322
  %324 = load i32, i32* %11, align 4
  %325 = mul nsw i32 %323, %324
  store i32 %325, i32* %17, align 4
  %326 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %327 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %326, i32 0, i32 4
  %328 = load i64, i64* %327, align 8
  %329 = icmp sge i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %311
  %331 = load i32, i32* %17, align 4
  %332 = sub nsw i32 0, %331
  br label %335

333:                                              ; preds = %311
  %334 = load i32, i32* %17, align 4
  br label %335

335:                                              ; preds = %333, %330
  %336 = phi i32 [ %332, %330 ], [ %334, %333 ]
  store i32 %336, i32* %15, align 4
  %337 = load i32, i32* %12, align 4
  %338 = load i32, i32* %17, align 4
  %339 = call i32 @MPMAX(i32 %337, i32 %338)
  store i32 %339, i32* %12, align 4
  %340 = load double, double* %16, align 8
  %341 = fsub double 1.000000e+00, %340
  %342 = load i32, i32* %17, align 4
  %343 = sitofp i32 %342 to double
  %344 = load double, double* %10, align 8
  %345 = fdiv double %343, %344
  %346 = fsub double %341, %345
  %347 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %348 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %347, i32 0, i32 5
  %349 = load double, double* %348, align 8
  %350 = fadd double %349, %346
  store double %350, double* %348, align 8
  br label %351

351:                                              ; preds = %335, %305, %299, %290, %284, %270
  %352 = load i32, i32* %12, align 4
  %353 = load i32, i32* %11, align 4
  %354 = sdiv i32 %352, %353
  %355 = load i32, i32* %11, align 4
  %356 = mul nsw i32 %354, %355
  store i32 %356, i32* %12, align 4
  %357 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %358 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @STATUS_DRAINING, align 8
  %361 = icmp sge i64 %359, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %351
  %363 = load i32, i32* @AD_EOF, align 4
  br label %366

364:                                              ; preds = %351
  %365 = load i32, i32* @AD_OK, align 4
  br label %366

366:                                              ; preds = %364, %362
  %367 = phi i32 [ %363, %362 ], [ %365, %364 ]
  store i32 %367, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %368 = load i32, i32* %12, align 4
  %369 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %370 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @mp_audio_buffer_samples(i32 %371)
  %373 = icmp sgt i32 %368, %372
  br i1 %373, label %374, label %398

374:                                              ; preds = %366
  %375 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %376 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %377 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %12, align 4
  %380 = call i32 @filter_audio(%struct.MPContext* %375, i32 %378, i32 %379)
  store i32 %380, i32* %18, align 4
  %381 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %382 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %381, i32 0, i32 3
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %374
  %388 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %389 = call i32 @reinit_audio_filters_and_output(%struct.MPContext* %388)
  %390 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %391 = call i32 @mp_wakeup_core(%struct.MPContext* %390)
  br label %742

392:                                              ; preds = %374
  %393 = load i32, i32* %18, align 4
  %394 = load i32, i32* @AD_WAIT, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  br label %742

397:                                              ; preds = %392
  store i32 1, i32* %19, align 4
  br label %398

398:                                              ; preds = %397, %366
  %399 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %400 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @STATUS_DRAINING, align 8
  %403 = icmp sge i64 %401, %402
  br i1 %403, label %404, label %414

404:                                              ; preds = %398
  %405 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %406 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @mp_audio_buffer_samples(i32 %407)
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %404
  %411 = load i64, i64* @STATUS_SYNCING, align 8
  %412 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %413 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %412, i32 0, i32 0
  store i64 %411, i64* %413, align 8
  br label %742

414:                                              ; preds = %404, %398
  store i32 0, i32* %20, align 4
  %415 = load i32, i32* %13, align 4
  %416 = icmp sge i32 %415, 0
  br i1 %416, label %417, label %445

417:                                              ; preds = %414
  %418 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %419 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 4
  %421 = call i32 @mp_audio_buffer_samples(i32 %420)
  store i32 %421, i32* %21, align 4
  %422 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %423 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* %13, align 4
  %426 = load i32, i32* %21, align 4
  %427 = call i32 @MPMIN(i32 %425, i32 %426)
  %428 = call i32 @mp_audio_buffer_skip(i32 %424, i32 %427)
  %429 = load i32, i32* %14, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %417
  %432 = load i32, i32* %13, align 4
  %433 = load i32, i32* %21, align 4
  %434 = icmp slt i32 %432, %433
  br label %435

435:                                              ; preds = %431, %417
  %436 = phi i1 [ false, %417 ], [ %434, %431 ]
  %437 = zext i1 %436 to i32
  %438 = load i32, i32* %20, align 4
  %439 = or i32 %438, %437
  store i32 %439, i32* %20, align 4
  %440 = load i32, i32* %13, align 4
  %441 = icmp sgt i32 %440, 0
  %442 = zext i1 %441 to i32
  %443 = load i32, i32* %19, align 4
  %444 = or i32 %443, %442
  store i32 %444, i32* %19, align 4
  br label %471

445:                                              ; preds = %414
  %446 = load i32, i32* %13, align 4
  %447 = icmp slt i32 %446, 0
  br i1 %447, label %448, label %470

448:                                              ; preds = %445
  %449 = load i32, i32* %13, align 4
  %450 = sub nsw i32 0, %449
  %451 = load i32, i32* %12, align 4
  %452 = icmp sgt i32 %450, %451
  br i1 %452, label %453, label %463

453:                                              ; preds = %448
  %454 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %455 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %454, i32 0, i32 7
  %456 = load i64, i64* %455, align 8
  %457 = call i32 @ao_reset(i64 %456)
  %458 = load i64, i64* @STATUS_DRAINING, align 8
  %459 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %460 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %459, i32 0, i32 0
  store i64 %458, i64* %460, align 8
  %461 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %462 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %461, i32 0, i32 3
  store i64 0, i64* %462, align 8
  br label %742

463:                                              ; preds = %448
  %464 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %465 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %13, align 4
  %468 = sub nsw i32 0, %467
  %469 = call i32 @mp_audio_buffer_prepend_silence(i32 %466, i32 %468)
  store i32 1, i32* %20, align 4
  br label %470

470:                                              ; preds = %463, %445
  br label %471

471:                                              ; preds = %470, %435
  %472 = load i32, i32* %15, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %527

474:                                              ; preds = %471
  %475 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %476 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @mp_audio_buffer_samples(i32 %477)
  store i32 %478, i32* %22, align 4
  %479 = load i32, i32* %15, align 4
  %480 = call i32 @abs(i32 %479) #3
  %481 = load i32, i32* %22, align 4
  %482 = icmp sgt i32 %480, %481
  br i1 %482, label %483, label %493

483:                                              ; preds = %474
  %484 = load i32, i32* %15, align 4
  %485 = icmp sge i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %483
  %487 = load i32, i32* %22, align 4
  br label %491

488:                                              ; preds = %483
  %489 = load i32, i32* %22, align 4
  %490 = sub nsw i32 0, %489
  br label %491

491:                                              ; preds = %488, %486
  %492 = phi i32 [ %487, %486 ], [ %490, %488 ]
  store i32 %492, i32* %15, align 4
  br label %493

493:                                              ; preds = %491, %474
  %494 = load i32, i32* %15, align 4
  %495 = sitofp i32 %494 to double
  %496 = load double, double* %10, align 8
  %497 = fdiv double %495, %496
  %498 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %499 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %498, i32 0, i32 4
  %500 = load i64, i64* %499, align 8
  %501 = sitofp i64 %500 to double
  %502 = fadd double %501, %497
  %503 = fptosi double %502 to i64
  store i64 %503, i64* %499, align 8
  %504 = load i32, i32* %15, align 4
  %505 = icmp sge i32 %504, 0
  br i1 %505, label %506, label %514

506:                                              ; preds = %493
  %507 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %508 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* %15, align 4
  %511 = call i32 @mp_audio_buffer_skip(i32 %509, i32 %510)
  %512 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %513 = call i32 @MP_STATS(%struct.MPContext* %512, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %523

514:                                              ; preds = %493
  %515 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %516 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* %15, align 4
  %519 = sub nsw i32 0, %518
  %520 = call i32 @mp_audio_buffer_duplicate(i32 %517, i32 %519)
  %521 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %522 = call i32 @MP_STATS(%struct.MPContext* %521, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %523

523:                                              ; preds = %514, %506
  %524 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %525 = load i32, i32* %15, align 4
  %526 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %524, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %525)
  br label %527

527:                                              ; preds = %523, %471
  %528 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %529 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @STATUS_SYNCING, align 8
  %532 = icmp eq i64 %530, %531
  br i1 %532, label %533, label %564

533:                                              ; preds = %527
  %534 = load i32, i32* %20, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %533
  %537 = load i64, i64* @STATUS_FILLING, align 8
  %538 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %539 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %538, i32 0, i32 0
  store i64 %537, i64* %539, align 8
  br label %540

540:                                              ; preds = %536, %533
  %541 = load i32, i32* %18, align 4
  %542 = load i32, i32* @AD_OK, align 4
  %543 = icmp ne i32 %541, %542
  br i1 %543, label %544, label %554

544:                                              ; preds = %540
  %545 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %546 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @mp_audio_buffer_samples(i32 %547)
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %554, label %550

550:                                              ; preds = %544
  %551 = load i64, i64* @STATUS_EOF, align 8
  %552 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %553 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %552, i32 0, i32 0
  store i64 %551, i64* %553, align 8
  br label %554

554:                                              ; preds = %550, %544, %540
  %555 = load i32, i32* %19, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %560, label %557

557:                                              ; preds = %554
  %558 = load i32, i32* %20, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %557, %554
  %561 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %562 = call i32 @mp_wakeup_core(%struct.MPContext* %561)
  br label %563

563:                                              ; preds = %560, %557
  br label %742

564:                                              ; preds = %527
  %565 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %566 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %565, i32 0, i32 0
  %567 = load i64, i64* %566, align 8
  %568 = load i64, i64* @STATUS_FILLING, align 8
  %569 = icmp sge i64 %567, %568
  %570 = zext i1 %569 to i32
  %571 = call i32 @assert(i32 %570)
  %572 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %573 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %572, i32 0, i32 0
  %574 = load i64, i64* %573, align 8
  %575 = load i64, i64* @STATUS_FILLING, align 8
  %576 = icmp eq i64 %574, %575
  br i1 %576, label %577, label %581

577:                                              ; preds = %564
  %578 = load i64, i64* @STATUS_READY, align 8
  %579 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %580 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %579, i32 0, i32 0
  store i64 %578, i64* %580, align 8
  br label %581

581:                                              ; preds = %577, %564
  %582 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %583 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %582, i32 0, i32 0
  %584 = load i64, i64* %583, align 8
  %585 = load i64, i64* @STATUS_READY, align 8
  %586 = icmp eq i64 %584, %585
  br i1 %586, label %587, label %588

587:                                              ; preds = %581
  br label %742

588:                                              ; preds = %581
  %589 = load i32, i32* %18, align 4
  %590 = load i32, i32* @AD_EOF, align 4
  %591 = icmp eq i32 %589, %590
  %592 = zext i1 %591 to i32
  store i32 %592, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %593 = load i32, i32* %12, align 4
  %594 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %595 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %594, i32 0, i32 2
  %596 = load i32, i32* %595, align 4
  %597 = call i32 @mp_audio_buffer_samples(i32 %596)
  %598 = icmp sgt i32 %593, %597
  br i1 %598, label %599, label %604

599:                                              ; preds = %588
  %600 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %601 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %600, i32 0, i32 2
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @mp_audio_buffer_samples(i32 %602)
  store i32 %603, i32* %12, align 4
  store i32 1, i32* %24, align 4
  br label %604

604:                                              ; preds = %599, %588
  %605 = load i32, i32* %24, align 4
  %606 = load i32, i32* %23, align 4
  %607 = and i32 %606, %605
  store i32 %607, i32* %23, align 4
  %608 = load i32, i32* %23, align 4
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %615

610:                                              ; preds = %604
  %611 = load i32, i32* %12, align 4
  %612 = load i32, i32* %11, align 4
  %613 = icmp slt i32 %611, %612
  br i1 %613, label %614, label %615

614:                                              ; preds = %610
  store i32 0, i32* %12, align 4
  br label %615

615:                                              ; preds = %614, %610, %604
  %616 = load i32, i32* %23, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %638

618:                                              ; preds = %615
  %619 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %620 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %619, i32 0, i32 4
  %621 = load i64, i64* %620, align 8
  %622 = icmp ne i64 %621, 0
  br i1 %622, label %623, label %634

623:                                              ; preds = %618
  %624 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %625 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %624, i32 0, i32 4
  %626 = load i64, i64* %625, align 8
  %627 = icmp sle i64 %626, 0
  br i1 %627, label %628, label %638

628:                                              ; preds = %623
  %629 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %630 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %629, i32 0, i32 2
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @STATUS_EOF, align 8
  %633 = icmp ne i64 %631, %632
  br i1 %633, label %634, label %638

634:                                              ; preds = %628, %618
  %635 = load i32, i32* @AOPLAY_FINAL_CHUNK, align 4
  %636 = load i32, i32* %25, align 4
  %637 = or i32 %636, %635
  store i32 %637, i32* %25, align 4
  br label %638

638:                                              ; preds = %634, %628, %623, %615
  %639 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %640 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @mp_audio_buffer_peek(i32 %641, i32*** %26, i32* %27)
  %643 = load i32, i32* %23, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %649, label %645

645:                                              ; preds = %638
  %646 = load i32, i32* %27, align 4
  %647 = load i32, i32* %11, align 4
  %648 = icmp sge i32 %646, %647
  br i1 %648, label %649, label %655

649:                                              ; preds = %645, %638
  %650 = load i32, i32* %27, align 4
  %651 = load i32, i32* %11, align 4
  %652 = sdiv i32 %650, %651
  %653 = load i32, i32* %11, align 4
  %654 = mul nsw i32 %652, %653
  store i32 %654, i32* %27, align 4
  br label %655

655:                                              ; preds = %649, %645
  %656 = load i32, i32* %27, align 4
  %657 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %658 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %657, i32 0, i32 8
  %659 = load i64, i64* %658, align 8
  %660 = icmp ne i64 %659, 0
  br i1 %660, label %661, label %662

661:                                              ; preds = %655
  br label %664

662:                                              ; preds = %655
  %663 = load i32, i32* %12, align 4
  br label %664

664:                                              ; preds = %662, %661
  %665 = phi i32 [ 0, %661 ], [ %663, %662 ]
  %666 = call i32 @MPMIN(i32 %656, i32 %665)
  store i32 %666, i32* %27, align 4
  %667 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %668 = load i32**, i32*** %26, align 8
  %669 = load i32, i32* %27, align 4
  %670 = load i32, i32* %25, align 4
  %671 = call i32 @write_to_ao(%struct.MPContext* %667, i32** %668, i32 %669, i32 %670)
  store i32 %671, i32* %28, align 4
  %672 = load i32, i32* %28, align 4
  %673 = icmp sge i32 %672, 0
  br i1 %673, label %674, label %678

674:                                              ; preds = %664
  %675 = load i32, i32* %28, align 4
  %676 = load i32, i32* %27, align 4
  %677 = icmp sle i32 %675, %676
  br label %678

678:                                              ; preds = %674, %664
  %679 = phi i1 [ false, %664 ], [ %677, %674 ]
  %680 = zext i1 %679 to i32
  %681 = call i32 @assert(i32 %680)
  %682 = load %struct.ao_chain*, %struct.ao_chain** %5, align 8
  %683 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %682, i32 0, i32 2
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* %28, align 4
  %686 = call i32 @mp_audio_buffer_skip(i32 %684, i32 %685)
  %687 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %688 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %687, i32 0, i32 5
  %689 = load double, double* %688, align 8
  %690 = load i32, i32* %28, align 4
  %691 = sitofp i32 %690 to double
  %692 = load double, double* %10, align 8
  %693 = fdiv double %691, %692
  %694 = fsub double %689, %693
  %695 = fptosi double %694 to i32
  %696 = call i32 @MPMAX(i32 0, i32 %695)
  %697 = sitofp i32 %696 to double
  %698 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %699 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %698, i32 0, i32 5
  store double %697, double* %699, align 8
  %700 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %701 = call i32 @dump_audio_stats(%struct.MPContext* %700)
  %702 = load i64, i64* @STATUS_PLAYING, align 8
  %703 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %704 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %703, i32 0, i32 0
  store i64 %702, i64* %704, align 8
  %705 = load i32, i32* %23, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %742

707:                                              ; preds = %678
  %708 = load i32, i32* %12, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %742, label %710

710:                                              ; preds = %707
  %711 = load i64, i64* @STATUS_DRAINING, align 8
  %712 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %713 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %712, i32 0, i32 0
  store i64 %711, i64* %713, align 8
  %714 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %715 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %714, i32 0, i32 7
  %716 = load i64, i64* %715, align 8
  %717 = call i64 @ao_eof_reached(i64 %716)
  %718 = icmp ne i64 %717, 0
  br i1 %718, label %724, label %719

719:                                              ; preds = %710
  %720 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %721 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %720, i32 0, i32 4
  %722 = load i64, i64* %721, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %741

724:                                              ; preds = %719, %710
  %725 = load i64, i64* @STATUS_EOF, align 8
  %726 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %727 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %726, i32 0, i32 0
  store i64 %725, i64* %727, align 8
  %728 = load i32, i32* %4, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %740, label %730

730:                                              ; preds = %724
  %731 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %732 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %731, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %733 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %734 = call i32 @mp_wakeup_core(%struct.MPContext* %733)
  %735 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %736 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %735, i32 0, i32 6
  %737 = load i32, i32* %736, align 8
  %738 = load i32, i32* @STREAM_AUDIO, align 4
  %739 = call i32 @encode_lavc_stream_eof(i32 %737, i32 %738)
  br label %740

740:                                              ; preds = %730, %724
  br label %741

741:                                              ; preds = %740, %719
  br label %742

742:                                              ; preds = %77, %85, %113, %144, %151, %187, %229, %249, %387, %396, %410, %453, %563, %587, %741, %707, %678
  ret void
}

declare dso_local i32 @dump_audio_stats(%struct.MPContext*) #1

declare dso_local i64 @ao_query_and_reset_events(i64, i32) #1

declare dso_local i32 @reload_audio_output(%struct.MPContext*) #1

declare dso_local i32 @ao_unblock(i64) #1

declare dso_local i32 @error_on_track(%struct.MPContext*, %struct.TYPE_8__*) #1

declare dso_local i32 @mp_pin_out_request_data(i32) #1

declare dso_local i32 @reinit_audio_filters_and_output(%struct.MPContext*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, ...) #1

declare dso_local i32 @mp_filter_reset(%struct.TYPE_7__*) #1

declare dso_local i32 @encode_lavc_stream_eof(i32, i32) #1

declare dso_local i64 @mp_time_sec(...) #1

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #1

declare dso_local i32 @MP_WARN(%struct.MPContext*, i8*) #1

declare dso_local i32 @reset_playback_state(%struct.MPContext*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @ao_get_format(i64, i32*, i32*, %struct.mp_chmap*) #1

declare dso_local i32 @af_format_sample_alignment(i32) #1

declare dso_local i64 @ao_untimed(i64) #1

declare dso_local i32 @ao_get_space(i64) #1

declare dso_local i32 @get_sync_samples(%struct.MPContext*, i32*) #1

declare dso_local i32 @MPMIN(i32, i32) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local double @fabs(i64) #1

declare dso_local i32 @ceil(double) #1

declare dso_local i32 @mp_audio_buffer_samples(i32) #1

declare dso_local i32 @filter_audio(%struct.MPContext*, i32, i32) #1

declare dso_local i32 @mp_audio_buffer_skip(i32, i32) #1

declare dso_local i32 @ao_reset(i64) #1

declare dso_local i32 @mp_audio_buffer_prepend_silence(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @MP_STATS(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_audio_buffer_duplicate(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_audio_buffer_peek(i32, i32***, i32*) #1

declare dso_local i32 @write_to_ao(%struct.MPContext*, i32**, i32, i32) #1

declare dso_local i64 @ao_eof_reached(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
