; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_switch_track_n.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_switch_track_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.track***, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32** }
%struct.track = type { i32, i32, i32, i64, i64 }

@NUM_PTRACKS = common dso_local global i32 0, align 4
@FLAG_MARK_SELECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't disable input to complex filter.\0A\00", align 1
@STREAM_VIDEO = common dso_local global i32 0, align 4
@STREAM_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Can't switch away from complex filter output.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Track %d is already selected.\0A\00", align 1
@STREAM_SUB = common dso_local global i32 0, align 4
@MPV_EVENT_TRACK_SWITCHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_switch_track_n(%struct.MPContext* %0, i32 %1, i32 %2, %struct.track* %3, i32 %4) #0 {
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.track*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.track* %3, %struct.track** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.track*, %struct.track** %9, align 8
  %13 = icmp ne %struct.track* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.track*, %struct.track** %9, align 8
  %16 = getelementptr inbounds %struct.track, %struct.track* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %14, %5
  %21 = phi i1 [ true, %5 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NUM_PTRACKS, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i1 [ false, %20 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @FLAG_MARK_SELECTION, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %30
  %39 = load %struct.track*, %struct.track** %9, align 8
  %40 = icmp ne %struct.track* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.track*, %struct.track** %9, align 8
  %43 = getelementptr inbounds %struct.track, %struct.track* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ -2, %45 ]
  %48 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %49 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %48, i32 0, i32 5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %47, i32* %59, align 4
  br label %60

60:                                               ; preds = %46, %30
  %61 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %62 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %268

66:                                               ; preds = %60
  %67 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %68 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %67, i32 0, i32 1
  %69 = load %struct.track***, %struct.track**** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.track**, %struct.track*** %69, i64 %71
  %73 = load %struct.track**, %struct.track*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.track*, %struct.track** %73, i64 %75
  %77 = load %struct.track*, %struct.track** %76, align 8
  store %struct.track* %77, %struct.track** %11, align 8
  %78 = load %struct.track*, %struct.track** %9, align 8
  %79 = load %struct.track*, %struct.track** %11, align 8
  %80 = icmp eq %struct.track* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %268

82:                                               ; preds = %66
  %83 = load %struct.track*, %struct.track** %11, align 8
  %84 = icmp ne %struct.track* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.track*, %struct.track** %11, align 8
  %87 = getelementptr inbounds %struct.track, %struct.track* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %92 = call i32 (%struct.MPContext*, i8*, ...) @MP_ERR(%struct.MPContext* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %268

93:                                               ; preds = %85, %82
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @STREAM_VIDEO, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %99 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %98, i32 0, i32 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = icmp ne %struct.TYPE_5__* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %104 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %102, %97, %93
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @STREAM_AUDIO, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %115 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = icmp ne %struct.TYPE_6__* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %120 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %119, i32 0, i32 2
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %118, %102
  %126 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %127 = call i32 (%struct.MPContext*, i8*, ...) @MP_ERR(%struct.MPContext* %126, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %268

128:                                              ; preds = %118, %113, %109
  %129 = load %struct.track*, %struct.track** %9, align 8
  %130 = icmp ne %struct.track* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load %struct.track*, %struct.track** %9, align 8
  %133 = getelementptr inbounds %struct.track, %struct.track* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %138 = load %struct.track*, %struct.track** %9, align 8
  %139 = getelementptr inbounds %struct.track, %struct.track* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.MPContext*, i8*, ...) @MP_ERR(%struct.MPContext* %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  br label %268

142:                                              ; preds = %131, %128
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %171

145:                                              ; preds = %142
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @STREAM_VIDEO, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %151 = call i32 @uninit_video_chain(%struct.MPContext* %150)
  %152 = load %struct.track*, %struct.track** %9, align 8
  %153 = icmp ne %struct.track* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %156 = call i32 @handle_force_window(%struct.MPContext* %155, i32 1)
  br label %157

157:                                              ; preds = %154, %149
  br label %170

158:                                              ; preds = %145
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @STREAM_AUDIO, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %164 = call i32 @clear_audio_output_buffers(%struct.MPContext* %163)
  %165 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %166 = call i32 @uninit_audio_chain(%struct.MPContext* %165)
  %167 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %168 = call i32 @uninit_audio_out(%struct.MPContext* %167)
  br label %169

169:                                              ; preds = %162, %158
  br label %170

170:                                              ; preds = %169, %157
  br label %171

171:                                              ; preds = %170, %142
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @STREAM_SUB, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %177 = load %struct.track*, %struct.track** %11, align 8
  %178 = call i32 @uninit_sub(%struct.MPContext* %176, %struct.track* %177)
  br label %179

179:                                              ; preds = %175, %171
  %180 = load %struct.track*, %struct.track** %11, align 8
  %181 = icmp ne %struct.track* %180, null
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load %struct.track*, %struct.track** %11, align 8
  %184 = getelementptr inbounds %struct.track, %struct.track* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %189 = call i32 @close_recorder_and_error(%struct.MPContext* %188)
  br label %190

190:                                              ; preds = %187, %182
  %191 = load %struct.track*, %struct.track** %11, align 8
  %192 = getelementptr inbounds %struct.track, %struct.track* %191, i32 0, i32 2
  store i32 0, i32* %192, align 8
  %193 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %194 = load %struct.track*, %struct.track** %11, align 8
  %195 = call i32 @reselect_demux_stream(%struct.MPContext* %193, %struct.track* %194)
  br label %196

196:                                              ; preds = %190, %179
  %197 = load %struct.track*, %struct.track** %9, align 8
  %198 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %199 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %198, i32 0, i32 1
  %200 = load %struct.track***, %struct.track**** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.track**, %struct.track*** %200, i64 %202
  %204 = load %struct.track**, %struct.track*** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.track*, %struct.track** %204, i64 %206
  store %struct.track* %197, %struct.track** %207, align 8
  %208 = load %struct.track*, %struct.track** %9, align 8
  %209 = icmp ne %struct.track* %208, null
  br i1 %209, label %210, label %216

210:                                              ; preds = %196
  %211 = load %struct.track*, %struct.track** %9, align 8
  %212 = getelementptr inbounds %struct.track, %struct.track* %211, i32 0, i32 2
  store i32 1, i32* %212, align 8
  %213 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %214 = load %struct.track*, %struct.track** %9, align 8
  %215 = call i32 @reselect_demux_stream(%struct.MPContext* %213, %struct.track* %214)
  br label %216

216:                                              ; preds = %210, %196
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @STREAM_VIDEO, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i32, i32* %7, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %225 = call i32 @reinit_video_chain(%struct.MPContext* %224)
  br label %252

226:                                              ; preds = %220, %216
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @STREAM_AUDIO, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i32, i32* %7, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %235 = call i32 @reinit_audio_chain(%struct.MPContext* %234)
  br label %251

236:                                              ; preds = %230, %226
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @STREAM_SUB, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %236
  %241 = load i32, i32* %7, align 4
  %242 = icmp sge i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load i32, i32* %7, align 4
  %245 = icmp sle i32 %244, 2
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %248 = load %struct.track*, %struct.track** %9, align 8
  %249 = call i32 @reinit_sub(%struct.MPContext* %247, %struct.track* %248)
  br label %250

250:                                              ; preds = %246, %243, %240, %236
  br label %251

251:                                              ; preds = %250, %233
  br label %252

252:                                              ; preds = %251, %223
  %253 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %254 = load i32, i32* @MPV_EVENT_TRACK_SWITCHED, align 4
  %255 = call i32 @mp_notify(%struct.MPContext* %253, i32 %254, i32* null)
  %256 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %257 = call i32 @mp_wakeup_core(%struct.MPContext* %256)
  %258 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %259 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @talloc_free(i32 %260)
  %262 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %263 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %264 = call i32 @track_layout_hash(%struct.MPContext* %263)
  %265 = call i32 @talloc_steal(%struct.MPContext* %262, i32 %264)
  %266 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %267 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %252, %136, %125, %90, %81, %65
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_ERR(%struct.MPContext*, i8*, ...) #1

declare dso_local i32 @uninit_video_chain(%struct.MPContext*) #1

declare dso_local i32 @handle_force_window(%struct.MPContext*, i32) #1

declare dso_local i32 @clear_audio_output_buffers(%struct.MPContext*) #1

declare dso_local i32 @uninit_audio_chain(%struct.MPContext*) #1

declare dso_local i32 @uninit_audio_out(%struct.MPContext*) #1

declare dso_local i32 @uninit_sub(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @close_recorder_and_error(%struct.MPContext*) #1

declare dso_local i32 @reselect_demux_stream(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @reinit_video_chain(%struct.MPContext*) #1

declare dso_local i32 @reinit_audio_chain(%struct.MPContext*) #1

declare dso_local i32 @reinit_sub(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @talloc_steal(%struct.MPContext*, i32) #1

declare dso_local i32 @track_layout_hash(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
