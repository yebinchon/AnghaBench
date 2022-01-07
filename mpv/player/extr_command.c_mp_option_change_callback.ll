; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_option_change_callback.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_option_change_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_option = type { i32 }
%struct.MPContext = type { i64, i32, i32, i32, %struct.MPOpts*, i32, %struct.track***, i32, %struct.command_ctx* }
%struct.MPOpts = type { i8*, i8* }
%struct.track = type { i64, %struct.dec_sub* }
%struct.dec_sub = type { i32 }
%struct.command_ctx = type { i8*, i8* }

@UPDATE_TERM = common dso_local global i32 0, align 4
@UPDATE_OSD = common dso_local global i32 0, align 4
@NUM_PTRACKS = common dso_local global i32 0, align 4
@STREAM_SUB = common dso_local global i64 0, align 8
@UPDATE_BUILTIN_SCRIPTS = common dso_local global i32 0, align 4
@UPDATE_IMGPAR = common dso_local global i32 0, align 4
@STREAM_VIDEO = common dso_local global i64 0, align 8
@UPDATE_INPUT = common dso_local global i32 0, align 4
@UPDATE_AUDIO = common dso_local global i32 0, align 4
@UPDATE_PRIORITY = common dso_local global i32 0, align 4
@UPDATE_SCREENSAVER = common dso_local global i32 0, align 4
@UPDATE_VOL = common dso_local global i32 0, align 4
@UPDATE_LAVFI_COMPLEX = common dso_local global i32 0, align 4
@UPDATE_VO_RESIZE = common dso_local global i32 0, align 4
@VOCTRL_EXTERNAL_RESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_option_change_callback(i8* %0, %struct.m_config_option* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.m_config_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca %struct.command_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.track*, align 8
  %11 = alloca %struct.dec_sub*, align 8
  %12 = alloca %struct.track*, align 8
  %13 = alloca %struct.MPOpts*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.m_config_option* %1, %struct.m_config_option** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.MPContext*
  store %struct.MPContext* %15, %struct.MPContext** %7, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 8
  %18 = load %struct.command_ctx*, %struct.command_ctx** %17, align 8
  store %struct.command_ctx* %18, %struct.command_ctx** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @UPDATE_TERM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %25 = call i32 @mp_update_logging(%struct.MPContext* %24, i32 0)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @UPDATE_OSD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @NUM_PTRACKS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 6
  %39 = load %struct.track***, %struct.track**** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.track**, %struct.track*** %39, i64 %41
  %43 = load %struct.track**, %struct.track*** %42, align 8
  %44 = load i64, i64* @STREAM_SUB, align 8
  %45 = getelementptr inbounds %struct.track*, %struct.track** %43, i64 %44
  %46 = load %struct.track*, %struct.track** %45, align 8
  store %struct.track* %46, %struct.track** %10, align 8
  %47 = load %struct.track*, %struct.track** %10, align 8
  %48 = icmp ne %struct.track* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.track*, %struct.track** %10, align 8
  %51 = getelementptr inbounds %struct.track, %struct.track* %50, i32 0, i32 1
  %52 = load %struct.dec_sub*, %struct.dec_sub** %51, align 8
  br label %54

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi %struct.dec_sub* [ %52, %49 ], [ null, %53 ]
  store %struct.dec_sub* %55, %struct.dec_sub** %11, align 8
  %56 = load %struct.dec_sub*, %struct.dec_sub** %11, align 8
  %57 = icmp ne %struct.dec_sub* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.track*, %struct.track** %10, align 8
  %60 = getelementptr inbounds %struct.track, %struct.track* %59, i32 0, i32 1
  %61 = load %struct.dec_sub*, %struct.dec_sub** %60, align 8
  %62 = call i32 @sub_update_opts(%struct.dec_sub* %61)
  br label %63

63:                                               ; preds = %58, %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %69 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @osd_changed(i32 %70)
  %72 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %73 = call i32 @mp_wakeup_core(%struct.MPContext* %72)
  br label %74

74:                                               ; preds = %67, %26
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @UPDATE_BUILTIN_SCRIPTS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %81 = call i32 @mp_load_builtin_scripts(%struct.MPContext* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @UPDATE_IMGPAR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %82
  %88 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %89 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %88, i32 0, i32 6
  %90 = load %struct.track***, %struct.track**** %89, align 8
  %91 = getelementptr inbounds %struct.track**, %struct.track*** %90, i64 0
  %92 = load %struct.track**, %struct.track*** %91, align 8
  %93 = load i64, i64* @STREAM_VIDEO, align 8
  %94 = getelementptr inbounds %struct.track*, %struct.track** %92, i64 %93
  %95 = load %struct.track*, %struct.track** %94, align 8
  store %struct.track* %95, %struct.track** %12, align 8
  %96 = load %struct.track*, %struct.track** %12, align 8
  %97 = icmp ne %struct.track* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %87
  %99 = load %struct.track*, %struct.track** %12, align 8
  %100 = getelementptr inbounds %struct.track, %struct.track* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.track*, %struct.track** %12, align 8
  %105 = getelementptr inbounds %struct.track, %struct.track* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @mp_decoder_wrapper_reset_params(i64 %106)
  %108 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %109 = call i32 @mp_force_video_refresh(%struct.MPContext* %108)
  br label %110

110:                                              ; preds = %103, %98, %87
  br label %111

111:                                              ; preds = %110, %82
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @UPDATE_INPUT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %182

116:                                              ; preds = %111
  %117 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %118 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @mp_input_update_opts(i32 %119)
  %121 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %122 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %121, i32 0, i32 4
  %123 = load %struct.MPOpts*, %struct.MPOpts** %122, align 8
  store %struct.MPOpts* %123, %struct.MPOpts** %13, align 8
  %124 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %125 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @bstr0(i8* %126)
  %128 = load %struct.MPOpts*, %struct.MPOpts** %13, align 8
  %129 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @bstr0(i8* %130)
  %132 = call i32 @bstr_equals(i32 %127, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %116
  %135 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %136 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @bstr0(i8* %137)
  %139 = load %struct.MPOpts*, %struct.MPOpts** %13, align 8
  %140 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @bstr0(i8* %141)
  %143 = call i32 @bstr_equals(i32 %138, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %181, label %145

145:                                              ; preds = %134, %116
  %146 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %147 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @talloc_free(i8* %148)
  %150 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %151 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @talloc_free(i8* %152)
  %154 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %155 = load %struct.MPOpts*, %struct.MPOpts** %13, align 8
  %156 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @talloc_strdup(%struct.command_ctx* %154, i8* %157)
  %159 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %160 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %162 = load %struct.MPOpts*, %struct.MPOpts** %13, align 8
  %163 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* @talloc_strdup(%struct.command_ctx* %161, i8* %164)
  %166 = load %struct.command_ctx*, %struct.command_ctx** %8, align 8
  %167 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %169 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @mp_uninit_ipc(i32 %170)
  %172 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %173 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %176 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @mp_init_ipc(i32 %174, i32 %177)
  %179 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %180 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %145, %134
  br label %182

182:                                              ; preds = %181, %111
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @UPDATE_AUDIO, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %189 = call i32 @reload_audio_output(%struct.MPContext* %188)
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @UPDATE_PRIORITY, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %197 = call i32 @update_priority(%struct.MPContext* %196)
  br label %198

198:                                              ; preds = %195, %190
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @UPDATE_SCREENSAVER, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %205 = call i32 @update_screensaver_state(%struct.MPContext* %204)
  br label %206

206:                                              ; preds = %203, %198
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @UPDATE_VOL, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %213 = call i32 @audio_update_volume(%struct.MPContext* %212)
  br label %214

214:                                              ; preds = %211, %206
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @UPDATE_LAVFI_COMPLEX, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %221 = call i32 @update_lavfi_complex(%struct.MPContext* %220)
  br label %222

222:                                              ; preds = %219, %214
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @UPDATE_VO_RESIZE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %229 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %234 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* @VOCTRL_EXTERNAL_RESIZE, align 4
  %237 = call i32 @vo_control(i64 %235, i32 %236, i32* null)
  br label %238

238:                                              ; preds = %232, %227
  br label %239

239:                                              ; preds = %238, %222
  ret void
}

declare dso_local i32 @mp_update_logging(%struct.MPContext*, i32) #1

declare dso_local i32 @sub_update_opts(%struct.dec_sub*) #1

declare dso_local i32 @osd_changed(i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_load_builtin_scripts(%struct.MPContext*) #1

declare dso_local i32 @mp_decoder_wrapper_reset_params(i64) #1

declare dso_local i32 @mp_force_video_refresh(%struct.MPContext*) #1

declare dso_local i32 @mp_input_update_opts(i32) #1

declare dso_local i32 @bstr_equals(i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @talloc_strdup(%struct.command_ctx*, i8*) #1

declare dso_local i32 @mp_uninit_ipc(i32) #1

declare dso_local i32 @mp_init_ipc(i32, i32) #1

declare dso_local i32 @reload_audio_output(%struct.MPContext*) #1

declare dso_local i32 @update_priority(%struct.MPContext*) #1

declare dso_local i32 @update_screensaver_state(%struct.MPContext*) #1

declare dso_local i32 @audio_update_volume(%struct.MPContext*) #1

declare dso_local i32 @update_lavfi_complex(%struct.MPContext*) #1

declare dso_local i32 @vo_control(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
