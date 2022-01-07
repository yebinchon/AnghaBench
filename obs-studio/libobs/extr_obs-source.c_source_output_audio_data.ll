; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_source_output_audio_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_source_output_audio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64 }
%struct.audio_data = type { i64, i32 }

@obs = common dso_local global %struct.TYPE_13__* null, align 8
@MAX_TS_VAR = common dso_local global i64 0, align 8
@TS_SMOOTHING_THRESHOLD = common dso_local global i64 0, align 8
@OBS_MONITORING_TYPE_MONITOR_ONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.audio_data*)* @source_output_audio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @source_output_audio_data(%struct.TYPE_12__* %0, %struct.audio_data* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.audio_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.audio_data, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.audio_data* %1, %struct.audio_data** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @obs, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @audio_output_get_sample_rate(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %18 = bitcast %struct.audio_data* %6 to i8*
  %19 = bitcast %struct.audio_data* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  %20 = call i64 (...) @os_gettime_ns()
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @uint64_diff(i64 %22, i64 %23)
  %25 = load i64, i64* @MAX_TS_VAR, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @reset_audio_timing(%struct.TYPE_12__* %38, i64 %40, i64 %41)
  br label %100

43:                                               ; preds = %32
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %99

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @uint64_diff(i64 %51, i64 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @MAX_TS_VAR, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @handle_ts_jump(%struct.TYPE_12__* %62, i64 %65, i64 %67, i64 %68, i64 %69)
  br label %98

71:                                               ; preds = %58, %48
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @TS_SMOOTHING_THRESHOLD, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 12
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %86, %88
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %80, %75
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  br label %97

97:                                               ; preds = %92, %71
  br label %98

98:                                               ; preds = %97, %61
  br label %99

99:                                               ; preds = %98, %43
  br label %100

100:                                              ; preds = %99, %37
  %101 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @conv_frames_to_time(i64 %107, i32 %109)
  %111 = add nsw i64 %106, %110
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %116
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 9
  %122 = call i32 @pthread_mutex_lock(i32* %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %100
  store i32 1, i32* %11, align 4
  br label %168

130:                                              ; preds = %100
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %130
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @uint64_diff(i64 %138, i64 %140)
  store i64 %141, i64* %7, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* @TS_SMOOTHING_THRESHOLD, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  store i32 1, i32* %11, align 4
  br label %166

146:                                              ; preds = %135
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @MAX_TS_VAR, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %153 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @reset_audio_timing(%struct.TYPE_12__* %151, i64 %154, i64 %155)
  %157 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %158 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %150, %146
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %130
  br label %168

168:                                              ; preds = %167, %129
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %9, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, %172
  store i64 %175, i64* %173, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, %178
  store i64 %181, i64* %179, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 4
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 7
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %9, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %168
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 7
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i32 0, i32* %11, align 4
  br label %202

202:                                              ; preds = %201, %196
  %203 = load i64, i64* %9, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 7
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %202, %168
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 8
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @OBS_MONITORING_TYPE_MONITOR_ONLY, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %206
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 10
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %222 = call i32 @source_output_audio_push_back(%struct.TYPE_12__* %221, %struct.audio_data* %6)
  br label %226

223:                                              ; preds = %215, %212
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %225 = call i32 @source_output_audio_place(%struct.TYPE_12__* %224, %struct.audio_data* %6)
  br label %226

226:                                              ; preds = %223, %220
  br label %227

227:                                              ; preds = %226, %206
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 9
  %230 = call i32 @pthread_mutex_unlock(i32* %229)
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %232 = load %struct.audio_data*, %struct.audio_data** %4, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %234 = load i64, i64* %8, align 8
  %235 = call i32 @source_muted(%struct.TYPE_12__* %233, i64 %234)
  %236 = call i32 @source_signal_audio_data(%struct.TYPE_12__* %231, %struct.audio_data* %232, i32 %235)
  ret void
}

declare dso_local i64 @audio_output_get_sample_rate(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @os_gettime_ns(...) #1

declare dso_local i64 @uint64_diff(i64, i64) #1

declare dso_local i32 @reset_audio_timing(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @handle_ts_jump(%struct.TYPE_12__*, i64, i64, i64, i64) #1

declare dso_local i64 @conv_frames_to_time(i64, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @source_output_audio_push_back(%struct.TYPE_12__*, %struct.audio_data*) #1

declare dso_local i32 @source_output_audio_place(%struct.TYPE_12__*, %struct.audio_data*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @source_signal_audio_data(%struct.TYPE_12__*, %struct.audio_data*, i32) #1

declare dso_local i32 @source_muted(%struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
