; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_reinit_audio_filters_and_output.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_reinit_audio_filters_and_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32*, i32, i32, i32, %struct.mp_aframe*, %struct.ao_chain*, %struct.MPOpts* }
%struct.mp_aframe = type { i32 }
%struct.ao_chain = type { i32, i32, i64, %struct.TYPE_6__*, i32, %struct.track*, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.track = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.MPOpts = type { i64, i64, %struct.TYPE_5__, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32*, i64, i32 }
%struct.mp_chmap = type { i32 }

@AO_INIT_NULL_FALLBACK = common dso_local global i32 0, align 4
@AO_INIT_STREAM_SILENCE = common dso_local global i32 0, align 4
@AO_INIT_EXCLUSIVE = common dso_local global i32 0, align 4
@AO_INIT_SAFE_MULTICHANNEL_ONLY = common dso_local global i32 0, align 4
@mp_wakeup_core_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Passthrough format unsupported.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Falling back to PCM output.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Could not open/initialize audio device -> no sound.\0A\00", align 1
@MPV_ERROR_AO_INIT_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"AO: [%s] %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"AO: Description: %s\0A\00", align 1
@MPV_EVENT_AUDIO_RECONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @reinit_audio_filters_and_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinit_audio_filters_and_output(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca %struct.ao_chain*, align 8
  %5 = alloca %struct.track*, align 8
  %6 = alloca %struct.mp_aframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_chmap, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mp_chmap, align 4
  %15 = alloca [192 x i8], align 16
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 6
  %18 = load %struct.MPOpts*, %struct.MPOpts** %17, align 8
  store %struct.MPOpts* %18, %struct.MPOpts** %3, align 8
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 5
  %21 = load %struct.ao_chain*, %struct.ao_chain** %20, align 8
  store %struct.ao_chain* %21, %struct.ao_chain** %4, align 8
  %22 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %23 = call i32 @assert(%struct.ao_chain* %22)
  %24 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %25 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %24, i32 0, i32 5
  %26 = load %struct.track*, %struct.track** %25, align 8
  store %struct.track* %26, %struct.track** %5, align 8
  %27 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %28 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  br label %404

34:                                               ; preds = %1
  %35 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %36 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %35, i32 0, i32 7
  %37 = call i32 @TA_FREEP(i32* %36)
  %38 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %39 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.mp_aframe* @mp_aframe_new_ref(i32 %42)
  store %struct.mp_aframe* %43, %struct.mp_aframe** %6, align 8
  %44 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %45 = icmp ne %struct.mp_aframe* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = call i32 (...) @abort() #4
  unreachable

48:                                               ; preds = %34
  %49 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %50 = call i32 @mp_aframe_config_is_valid(%struct.mp_aframe* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %54 = call i32 @talloc_free(%struct.mp_aframe* %53)
  br label %396

55:                                               ; preds = %48
  %56 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %57 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %56)
  %58 = call i64 @af_fmt_is_pcm(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %55
  %61 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %62 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %67 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %68 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @mp_aframe_set_rate(%struct.mp_aframe* %66, i64 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %73 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %78 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %79 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @mp_aframe_set_format(%struct.mp_aframe* %77, i64 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %84 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %90 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %91 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = call i32 @mp_aframe_set_chmap(%struct.mp_aframe* %89, i32* %94)
  br label %96

96:                                               ; preds = %88, %82
  br label %97

97:                                               ; preds = %96, %55
  %98 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %99 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %98, i32 0, i32 4
  %100 = load %struct.mp_aframe*, %struct.mp_aframe** %99, align 8
  %101 = icmp ne %struct.mp_aframe* %100, null
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %109 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %114 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %113, i32 0, i32 4
  %115 = load %struct.mp_aframe*, %struct.mp_aframe** %114, align 8
  %116 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %117 = call i64 @keep_weak_gapless_format(%struct.mp_aframe* %115, %struct.mp_aframe* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %112, %107, %102, %97
  %120 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %121 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %126 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %124, %112
  %130 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %131 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %130, i32 0, i32 3
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %134 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @mp_output_chain_set_ao(%struct.TYPE_6__* %132, i32* %135)
  %137 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %138 = call i32 @talloc_free(%struct.mp_aframe* %137)
  br label %404

139:                                              ; preds = %124, %119
  %140 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %141 = call i32 @uninit_audio_out(%struct.MPContext* %140)
  %142 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %143 = call i32 @mp_aframe_get_rate(%struct.mp_aframe* %142)
  store i32 %143, i32* %7, align 4
  %144 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %145 = call i32 @mp_aframe_get_format(%struct.mp_aframe* %144)
  store i32 %145, i32* %8, align 4
  %146 = bitcast %struct.mp_chmap* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %146, i8 0, i64 4, i1 false)
  %147 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %148 = call i32 @mp_aframe_get_chmap(%struct.mp_aframe* %147, %struct.mp_chmap* %9)
  store i32 0, i32* %10, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i64 @af_fmt_is_spdif(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %139
  %153 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %154 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %152, %139
  %158 = phi i1 [ false, %139 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %11, align 4
  %160 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %161 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* @AO_INIT_NULL_FALLBACK, align 4
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %167, %164, %157
  %172 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %173 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @AO_INIT_STREAM_SILENCE, align 4
  %178 = load i32, i32* %10, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %182 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @AO_INIT_EXCLUSIVE, align 4
  %187 = load i32, i32* %10, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load i32, i32* %8, align 4
  %191 = call i64 @af_fmt_is_pcm(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %219

193:                                              ; preds = %189
  %194 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %195 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %201 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %199, %193
  %206 = load i32, i32* @AO_INIT_SAFE_MULTICHANNEL_ONLY, align 4
  %207 = load i32, i32* %10, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %205, %199
  %210 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %211 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %215 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @mp_chmap_sel_list(%struct.mp_chmap* %9, i32* %213, i32 %217)
  br label %219

219:                                              ; preds = %209, %189
  %220 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %221 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %222 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %221, i32 0, i32 4
  store %struct.mp_aframe* %220, %struct.mp_aframe** %222, align 8
  %223 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %224 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @mp_wakeup_core_cb, align 4
  %228 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %229 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %230 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %8, align 4
  %234 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %9, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32* @ao_init_best(i32 %225, i32 %226, i32 %227, %struct.MPContext* %228, i32 %231, i32 %232, i32 %233, i32 %235)
  %237 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %238 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %237, i32 0, i32 0
  store i32* %236, i32** %238, align 8
  %239 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %240 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %243 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %242, i32 0, i32 6
  store i32* %241, i32** %243, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %244 = bitcast %struct.mp_chmap* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %244, i8 0, i64 4, i1 false)
  %245 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %246 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %219
  %250 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %251 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @ao_get_format(i32* %252, i32* %12, i32* %13, %struct.mp_chmap* %14)
  br label %254

254:                                              ; preds = %249, %219
  %255 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %256 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %286

259:                                              ; preds = %254
  %260 = load i32, i32* %8, align 4
  %261 = call i64 @af_fmt_is_spdif(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %286

263:                                              ; preds = %259
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %274, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = call i32 @mp_chmap_equals(%struct.mp_chmap* %9, %struct.mp_chmap* %14)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %271, %267, %263
  %275 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %276 = call i32 @MP_ERR(%struct.MPContext* %275, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %277 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %278 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @ao_uninit(i32* %279)
  %281 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %282 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %281, i32 0, i32 0
  store i32* null, i32** %282, align 8
  %283 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %284 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %283, i32 0, i32 6
  store i32* null, i32** %284, align 8
  br label %285

285:                                              ; preds = %274, %271
  br label %286

286:                                              ; preds = %285, %259, %254
  %287 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %288 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %342, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %336

294:                                              ; preds = %291
  %295 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %296 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %295, i32 0, i32 5
  %297 = load %struct.track*, %struct.track** %296, align 8
  %298 = icmp ne %struct.track* %297, null
  br i1 %298, label %299, label %336

299:                                              ; preds = %294
  %300 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %301 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %300, i32 0, i32 5
  %302 = load %struct.track*, %struct.track** %301, align 8
  %303 = getelementptr inbounds %struct.track, %struct.track* %302, i32 0, i32 0
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = icmp ne %struct.TYPE_7__* %304, null
  br i1 %305, label %306, label %336

306:                                              ; preds = %299
  %307 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %308 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %307, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %309 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %310 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %309, i32 0, i32 0
  store i32 0, i32* %310, align 8
  %311 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %312 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %311, i32 0, i32 1
  store i32 1, i32* %312, align 4
  %313 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %314 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %313, i32 0, i32 5
  %315 = load %struct.track*, %struct.track** %314, align 8
  %316 = getelementptr inbounds %struct.track, %struct.track* %315, i32 0, i32 0
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  store i32 0, i32* %318, align 4
  %319 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %320 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %319, i32 0, i32 5
  %321 = load %struct.track*, %struct.track** %320, align 8
  %322 = getelementptr inbounds %struct.track, %struct.track* %321, i32 0, i32 0
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = call i32 @mp_decoder_wrapper_reinit(%struct.TYPE_7__* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %327, label %326

326:                                              ; preds = %306
  br label %396

327:                                              ; preds = %306
  %328 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %329 = call i32 @reset_audio_state(%struct.MPContext* %328)
  %330 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %331 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %330, i32 0, i32 3
  %332 = load %struct.TYPE_6__*, %struct.TYPE_6__** %331, align 8
  %333 = call i32 @mp_output_chain_reset_harder(%struct.TYPE_6__* %332)
  %334 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %335 = call i32 @mp_wakeup_core(%struct.MPContext* %334)
  br label %404

336:                                              ; preds = %299, %294, %291
  %337 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %338 = call i32 @MP_ERR(%struct.MPContext* %337, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %339 = load i32, i32* @MPV_ERROR_AO_INIT_FAILED, align 4
  %340 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %341 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 8
  br label %396

342:                                              ; preds = %286
  %343 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %344 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = load i32, i32* %12, align 4
  %348 = call i32 @mp_audio_buffer_reinit_fmt(i32 %345, i32 %346, %struct.mp_chmap* %14, i32 %347)
  %349 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %350 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %351 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @ao_get_name(i32* %352)
  %354 = getelementptr inbounds [192 x i8], [192 x i8]* %15, i64 0, i64 0
  %355 = load i32, i32* %12, align 4
  %356 = load i32, i32* %13, align 4
  %357 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %14, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @audio_config_to_str_buf(i8* %354, i32 192, i32 %355, i32 %356, i32 %358)
  %360 = call i32 @MP_INFO(%struct.MPContext* %349, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %353, i32 %359)
  %361 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %362 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %363 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = call i32 @ao_get_description(i32* %364)
  %366 = call i32 (%struct.MPContext*, i8*, ...) @MP_VERBOSE(%struct.MPContext* %361, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %365)
  %367 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %368 = call i32 @update_window_title(%struct.MPContext* %367, i32 1)
  %369 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %370 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = icmp sgt i64 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %342
  %374 = call i64 (...) @mp_time_sec()
  %375 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %376 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = add nsw i64 %374, %377
  br label %380

379:                                              ; preds = %342
  br label %380

380:                                              ; preds = %379, %373
  %381 = phi i64 [ %378, %373 ], [ 0, %379 ]
  %382 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %383 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %382, i32 0, i32 2
  store i64 %381, i64* %383, align 8
  %384 = load %struct.ao_chain*, %struct.ao_chain** %4, align 8
  %385 = getelementptr inbounds %struct.ao_chain, %struct.ao_chain* %384, i32 0, i32 3
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %385, align 8
  %387 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %388 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  %390 = call i32 @mp_output_chain_set_ao(%struct.TYPE_6__* %386, i32* %389)
  %391 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %392 = call i32 @audio_update_volume(%struct.MPContext* %391)
  %393 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %394 = load i32, i32* @MPV_EVENT_AUDIO_RECONFIG, align 4
  %395 = call i32 @mp_notify(%struct.MPContext* %393, i32 %394, i32* null)
  br label %404

396:                                              ; preds = %336, %326, %52
  %397 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %398 = call i32 @uninit_audio_chain(%struct.MPContext* %397)
  %399 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %400 = call i32 @uninit_audio_out(%struct.MPContext* %399)
  %401 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %402 = load %struct.track*, %struct.track** %5, align 8
  %403 = call i32 @error_on_track(%struct.MPContext* %401, %struct.track* %402)
  br label %404

404:                                              ; preds = %396, %380, %327, %129, %33
  ret void
}

declare dso_local i32 @assert(%struct.ao_chain*) #1

declare dso_local i32 @TA_FREEP(i32*) #1

declare dso_local %struct.mp_aframe* @mp_aframe_new_ref(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @mp_aframe_config_is_valid(%struct.mp_aframe*) #1

declare dso_local i32 @talloc_free(%struct.mp_aframe*) #1

declare dso_local i64 @af_fmt_is_pcm(i32) #1

declare dso_local i32 @mp_aframe_get_format(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_set_rate(%struct.mp_aframe*, i64) #1

declare dso_local i32 @mp_aframe_set_format(%struct.mp_aframe*, i64) #1

declare dso_local i32 @mp_aframe_set_chmap(%struct.mp_aframe*, i32*) #1

declare dso_local i64 @keep_weak_gapless_format(%struct.mp_aframe*, %struct.mp_aframe*) #1

declare dso_local i32 @mp_output_chain_set_ao(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @uninit_audio_out(%struct.MPContext*) #1

declare dso_local i32 @mp_aframe_get_rate(%struct.mp_aframe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @mp_aframe_get_chmap(%struct.mp_aframe*, %struct.mp_chmap*) #1

declare dso_local i64 @af_fmt_is_spdif(i32) #1

declare dso_local i32 @mp_chmap_sel_list(%struct.mp_chmap*, i32*, i32) #1

declare dso_local i32* @ao_init_best(i32, i32, i32, %struct.MPContext*, i32, i32, i32, i32) #1

declare dso_local i32 @ao_get_format(i32*, i32*, i32*, %struct.mp_chmap*) #1

declare dso_local i32 @mp_chmap_equals(%struct.mp_chmap*, %struct.mp_chmap*) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*) #1

declare dso_local i32 @ao_uninit(i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, ...) #1

declare dso_local i32 @mp_decoder_wrapper_reinit(%struct.TYPE_7__*) #1

declare dso_local i32 @reset_audio_state(%struct.MPContext*) #1

declare dso_local i32 @mp_output_chain_reset_harder(%struct.TYPE_6__*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_audio_buffer_reinit_fmt(i32, i32, %struct.mp_chmap*, i32) #1

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*, i32, i32) #1

declare dso_local i32 @ao_get_name(i32*) #1

declare dso_local i32 @audio_config_to_str_buf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ao_get_description(i32*) #1

declare dso_local i32 @update_window_title(%struct.MPContext*, i32) #1

declare dso_local i64 @mp_time_sec(...) #1

declare dso_local i32 @audio_update_volume(%struct.MPContext*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @uninit_audio_chain(%struct.MPContext*) #1

declare dso_local i32 @error_on_track(%struct.MPContext*, %struct.track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
