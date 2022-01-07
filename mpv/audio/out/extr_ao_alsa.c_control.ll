; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { float, float }

@CONTROL_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Mixer open error\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Mixer attach error\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Mixer register error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Mixer load error\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Unable to find simple control '%s',%i.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Error setting left channel\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"left=%li, \00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Error setting right channel\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"right=%li, pmin=%li, pmax=%li, mult=%f\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"left=%f, right=%f\0A\00", align 1
@CONTROL_OK = common dso_local global i32 0, align 4
@CONTROL_UNKNOWN = common dso_local global i32 0, align 4
@CONTROL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.ao* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %23 = load %struct.ao*, %struct.ao** %5, align 8
  %24 = getelementptr inbounds %struct.ao, %struct.ao* %23, i32 0, i32 1
  %25 = load %struct.priv*, %struct.priv** %24, align 8
  store %struct.priv* %25, %struct.priv** %8, align 8
  store i32* null, i32** %9, align 8
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %224 [
    i32 131, label %27
    i32 129, label %27
    i32 130, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %3, %3, %3, %3
  %28 = load %struct.ao*, %struct.ao** %5, align 8
  %29 = getelementptr inbounds %struct.ao, %struct.ao* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @af_fmt_is_pcm(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @CONTROL_FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %234

35:                                               ; preds = %27
  %36 = call i32 @snd_mixer_selem_id_alloca(i32** %12)
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.priv*, %struct.priv** %8, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @snd_mixer_selem_id_set_index(i32* %37, i32 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = load %struct.priv*, %struct.priv** %8, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @snd_mixer_selem_id_set_name(i32* %44, i32 %49)
  %51 = call i32 @snd_mixer_open(i32** %9, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %9, align 8
  %54 = load %struct.priv*, %struct.priv** %8, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_mixer_attach(i32* %53, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @snd_mixer_selem_register(i32* %61, i32* null, i32* null)
  store i32 %62, i32* %10, align 4
  %63 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @snd_mixer_load(i32* %64)
  store i32 %65, i32* %10, align 4
  %66 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32* @snd_mixer_find_selem(i32* %67, i32* %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %35
  %73 = load %struct.ao*, %struct.ao** %5, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @snd_mixer_selem_id_get_name(i32* %74)
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @snd_mixer_selem_id_get_index(i32* %76)
  %78 = call i32 @MP_VERBOSE(%struct.ao* %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %77)
  br label %226

79:                                               ; preds = %35
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @snd_mixer_selem_get_playback_volume_range(i32* %80, i64* %13, i64* %14)
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %13, align 8
  %84 = sub nsw i64 %82, %83
  %85 = sitofp i64 %84 to float
  %86 = fdiv float 1.000000e+02, %85
  store float %86, float* %17, align 4
  %87 = load i32, i32* %6, align 4
  switch i32 %87, label %220 [
    i32 128, label %88
    i32 130, label %131
    i32 129, label %164
    i32 131, label %191
  ]

88:                                               ; preds = %79
  %89 = load i8*, i8** %7, align 8
  %90 = bitcast i8* %89 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %18, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load float, float* %92, align 4
  %94 = load float, float* %17, align 4
  %95 = fdiv float %93, %94
  %96 = load i64, i64* %13, align 8
  %97 = sitofp i64 %96 to float
  %98 = fadd float %95, %97
  %99 = fpext float %98 to double
  %100 = fadd double %99, 5.000000e-01
  %101 = fptosi double %100 to i64
  store i64 %101, i64* %16, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @snd_mixer_selem_set_playback_volume(i32* %102, i32 0, i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %106 = load %struct.ao*, %struct.ao** %5, align 8
  %107 = load i64, i64* %16, align 8
  %108 = call i32 (%struct.ao*, i8*, i64, ...) @MP_DBG(%struct.ao* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = load float, float* %17, align 4
  %113 = fdiv float %111, %112
  %114 = load i64, i64* %13, align 8
  %115 = sitofp i64 %114 to float
  %116 = fadd float %113, %115
  %117 = fpext float %116 to double
  %118 = fadd double %117, 5.000000e-01
  %119 = fptosi double %118 to i64
  store i64 %119, i64* %16, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i64, i64* %16, align 8
  %122 = call i32 @snd_mixer_selem_set_playback_volume(i32* %120, i32 1, i64 %121)
  store i32 %122, i32* %10, align 4
  %123 = call i32 @CHECK_ALSA_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.ao*, %struct.ao** %5, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load float, float* %17, align 4
  %129 = fpext float %128 to double
  %130 = call i32 (%struct.ao*, i8*, i64, ...) @MP_DBG(%struct.ao* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i64 %125, i64 %126, i64 %127, double %129)
  br label %220

131:                                              ; preds = %79
  %132 = load i8*, i8** %7, align 8
  %133 = bitcast i8* %132 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %133, %struct.TYPE_4__** %19, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @snd_mixer_selem_get_playback_volume(i32* %134, i32 0, i64* %15)
  %136 = load i64, i64* %15, align 8
  %137 = load i64, i64* %13, align 8
  %138 = sub nsw i64 %136, %137
  %139 = sitofp i64 %138 to float
  %140 = load float, float* %17, align 4
  %141 = fmul float %139, %140
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store float %141, float* %143, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 @snd_mixer_selem_get_playback_volume(i32* %144, i32 1, i64* %15)
  %146 = load i64, i64* %15, align 8
  %147 = load i64, i64* %13, align 8
  %148 = sub nsw i64 %146, %147
  %149 = sitofp i64 %148 to float
  %150 = load float, float* %17, align 4
  %151 = fmul float %149, %150
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store float %151, float* %153, align 4
  %154 = load %struct.ao*, %struct.ao** %5, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load float, float* %156, align 4
  %158 = fptosi float %157 to i64
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load float, float* %160, align 4
  %162 = fpext float %161 to double
  %163 = call i32 (%struct.ao*, i8*, i64, ...) @MP_DBG(%struct.ao* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %158, double %162)
  br label %220

164:                                              ; preds = %79
  %165 = load i8*, i8** %7, align 8
  %166 = bitcast i8* %165 to i32*
  store i32* %166, i32** %20, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = call i32 @snd_mixer_selem_has_playback_switch(i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %164
  br label %226

171:                                              ; preds = %164
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @snd_mixer_selem_has_playback_switch_joined(i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  %176 = load i32*, i32** %11, align 8
  %177 = load i32*, i32** %20, align 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i32 @snd_mixer_selem_set_playback_switch(i32* %176, i32 1, i32 %181)
  br label %183

183:                                              ; preds = %175, %171
  %184 = load i32*, i32** %11, align 8
  %185 = load i32*, i32** %20, align 8
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @snd_mixer_selem_set_playback_switch(i32* %184, i32 0, i32 %189)
  br label %220

191:                                              ; preds = %79
  %192 = load i8*, i8** %7, align 8
  %193 = bitcast i8* %192 to i32*
  store i32* %193, i32** %21, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call i32 @snd_mixer_selem_has_playback_switch(i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %191
  br label %226

198:                                              ; preds = %191
  store i32 1, i32* %22, align 4
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @snd_mixer_selem_get_playback_switch(i32* %199, i32 0, i32* %22)
  %201 = load i32, i32* %22, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = load i32*, i32** %21, align 8
  store i32 %204, i32* %205, align 4
  %206 = load i32*, i32** %11, align 8
  %207 = call i32 @snd_mixer_selem_has_playback_switch_joined(i32* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %198
  %210 = load i32*, i32** %11, align 8
  %211 = call i32 @snd_mixer_selem_get_playback_switch(i32* %210, i32 1, i32* %22)
  %212 = load i32, i32* %22, align 4
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = load i32*, i32** %21, align 8
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, %215
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %209, %198
  br label %220

220:                                              ; preds = %79, %219, %183, %131, %88
  %221 = load i32*, i32** %9, align 8
  %222 = call i32 @snd_mixer_close(i32* %221)
  %223 = load i32, i32* @CONTROL_OK, align 4
  store i32 %223, i32* %4, align 4
  br label %234

224:                                              ; preds = %3
  %225 = load i32, i32* @CONTROL_UNKNOWN, align 4
  store i32 %225, i32* %4, align 4
  br label %234

226:                                              ; preds = %197, %170, %72
  %227 = load i32*, i32** %9, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32*, i32** %9, align 8
  %231 = call i32 @snd_mixer_close(i32* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* @CONTROL_ERROR, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %232, %224, %220, %33
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i32 @af_fmt_is_pcm(i32) #1

declare dso_local i32 @snd_mixer_selem_id_alloca(i32**) #1

declare dso_local i32 @snd_mixer_selem_id_set_index(i32*, i32) #1

declare dso_local i32 @snd_mixer_selem_id_set_name(i32*, i32) #1

declare dso_local i32 @snd_mixer_open(i32**, i32) #1

declare dso_local i32 @CHECK_ALSA_ERROR(i8*) #1

declare dso_local i32 @snd_mixer_attach(i32*, i32) #1

declare dso_local i32 @snd_mixer_selem_register(i32*, i32*, i32*) #1

declare dso_local i32 @snd_mixer_load(i32*) #1

declare dso_local i32* @snd_mixer_find_selem(i32*, i32*) #1

declare dso_local i32 @MP_VERBOSE(%struct.ao*, i8*, i32, i32) #1

declare dso_local i32 @snd_mixer_selem_id_get_name(i32*) #1

declare dso_local i32 @snd_mixer_selem_id_get_index(i32*) #1

declare dso_local i32 @snd_mixer_selem_get_playback_volume_range(i32*, i64*, i64*) #1

declare dso_local i32 @snd_mixer_selem_set_playback_volume(i32*, i32, i64) #1

declare dso_local i32 @MP_DBG(%struct.ao*, i8*, i64, ...) #1

declare dso_local i32 @snd_mixer_selem_get_playback_volume(i32*, i32, i64*) #1

declare dso_local i32 @snd_mixer_selem_has_playback_switch(i32*) #1

declare dso_local i32 @snd_mixer_selem_has_playback_switch_joined(i32*) #1

declare dso_local i32 @snd_mixer_selem_set_playback_switch(i32*, i32, i32) #1

declare dso_local i32 @snd_mixer_selem_get_playback_switch(i32*, i32, i32*) #1

declare dso_local i32 @snd_mixer_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
