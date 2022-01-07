; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor_data = type { float, float, i64, i64, float, i8*, i64, i32, i64, i32*, i32, i8*, i8* }

@S_ATTACK_TIME = common dso_local global i32 0, align 4
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@S_OUTPUT_GAIN = common dso_local global i32 0, align 4
@S_SIDECHAIN_SOURCE = common dso_local global i32 0, align 4
@S_RATIO = common dso_local global i32 0, align 4
@S_THRESHOLD = common dso_local global i32 0, align 4
@MS_IN_S_F = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@sidechain_capture = common dso_local global i32 0, align 4
@DEFAULT_AUDIO_BUF_MS = common dso_local global i64 0, align 8
@MS_IN_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @compressor_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressor_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.compressor_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = bitcast i8* %16 to %struct.compressor_data*
  store %struct.compressor_data* %17, %struct.compressor_data** %5, align 8
  %18 = call i32 (...) @obs_get_audio()
  %19 = call i64 @audio_output_get_sample_rate(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = call i32 (...) @obs_get_audio()
  %21 = call i64 @audio_output_get_channels(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @S_ATTACK_TIME, align 4
  %24 = call i64 @obs_data_get_int(i32* %22, i32 %23)
  %25 = sitofp i64 %24 to float
  store float %25, float* %8, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @S_RELEASE_TIME, align 4
  %28 = call i64 @obs_data_get_int(i32* %26, i32 %27)
  %29 = sitofp i64 %28 to float
  store float %29, float* %9, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @S_OUTPUT_GAIN, align 4
  %32 = call i64 @obs_data_get_double(i32* %30, i32 %31)
  %33 = sitofp i64 %32 to float
  store float %33, float* %10, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @S_SIDECHAIN_SOURCE, align 4
  %36 = call i8* @obs_data_get_string(i32* %34, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @S_RATIO, align 4
  %39 = call i64 @obs_data_get_double(i32* %37, i32 %38)
  %40 = sitofp i64 %39 to float
  %41 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %42 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %41, i32 0, i32 0
  store float %40, float* %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @S_THRESHOLD, align 4
  %45 = call i64 @obs_data_get_double(i32* %43, i32 %44)
  %46 = sitofp i64 %45 to float
  %47 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %48 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %47, i32 0, i32 1
  store float %46, float* %48, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load float, float* %8, align 4
  %51 = load float, float* @MS_IN_S_F, align 4
  %52 = fdiv float %50, %51
  %53 = call i8* @gain_coefficient(i64 %49, float %52)
  %54 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %55 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %54, i32 0, i32 12
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load float, float* %9, align 4
  %58 = load float, float* @MS_IN_S_F, align 4
  %59 = fdiv float %57, %58
  %60 = call i8* @gain_coefficient(i64 %56, float %59)
  %61 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %62 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %61, i32 0, i32 11
  store i8* %60, i8** %62, align 8
  %63 = load float, float* %10, align 4
  %64 = call i32 @db_to_mul(float %63)
  %65 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %66 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %69 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %72 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %74 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %73, i32 0, i32 0
  %75 = load float, float* %74, align 8
  %76 = fdiv float 1.000000e+00, %75
  %77 = fsub float 1.000000e+00, %76
  %78 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %79 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %78, i32 0, i32 4
  store float %77, float* %79, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %2
  %85 = load i8*, i8** %11, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %2
  %89 = phi i1 [ false, %2 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %91 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %92 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %91, i32 0, i32 7
  %93 = call i32 @pthread_mutex_lock(i32* %92)
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %88
  %97 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %98 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %103 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %102, i32 0, i32 9
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %13, align 8
  %105 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %106 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %105, i32 0, i32 9
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %101, %96
  %108 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %109 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %108, i32 0, i32 5
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @bfree(i8* %110)
  %112 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %113 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %112, i32 0, i32 5
  store i8* null, i8** %113, align 8
  br label %151

114:                                              ; preds = %88
  %115 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %116 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %115, i32 0, i32 5
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %121 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i64 @strcmp(i8* %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %119, %114
  %127 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %128 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %133 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %13, align 8
  %135 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %136 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %135, i32 0, i32 9
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %131, %126
  %138 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %139 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %138, i32 0, i32 5
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @bfree(i8* %140)
  %142 = load i8*, i8** %11, align 8
  %143 = call i8* @bstrdup(i8* %142)
  %144 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %145 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = call i64 (...) @os_gettime_ns()
  %147 = sub nsw i64 %146, 3000000000
  %148 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %149 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %148, i32 0, i32 8
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %137, %119
  br label %151

151:                                              ; preds = %150, %107
  %152 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %153 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %152, i32 0, i32 7
  %154 = call i32 @pthread_mutex_unlock(i32* %153)
  %155 = load i32*, i32** %13, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %172

157:                                              ; preds = %151
  %158 = load i32*, i32** %13, align 8
  %159 = call i32* @obs_weak_source_get_source(i32* %158)
  store i32* %159, i32** %14, align 8
  %160 = load i32*, i32** %14, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* @sidechain_capture, align 4
  %165 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %166 = call i32 @obs_source_remove_audio_capture_callback(i32* %163, i32 %164, %struct.compressor_data* %165)
  %167 = load i32*, i32** %14, align 8
  %168 = call i32 @obs_source_release(i32* %167)
  br label %169

169:                                              ; preds = %162, %157
  %170 = load i32*, i32** %13, align 8
  %171 = call i32 @obs_weak_source_release(i32* %170)
  br label %172

172:                                              ; preds = %169, %151
  %173 = load i64, i64* %6, align 8
  %174 = load i64, i64* @DEFAULT_AUDIO_BUF_MS, align 8
  %175 = mul i64 %173, %174
  %176 = load i64, i64* @MS_IN_S, align 8
  %177 = udiv i64 %175, %176
  store i64 %177, i64* %15, align 8
  %178 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %179 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %172
  %183 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %184 = load i64, i64* %15, align 8
  %185 = call i32 @resize_env_buffer(%struct.compressor_data* %183, i64 %184)
  br label %186

186:                                              ; preds = %182, %172
  ret void
}

declare dso_local i64 @audio_output_get_sample_rate(i32) #1

declare dso_local i32 @obs_get_audio(...) #1

declare dso_local i64 @audio_output_get_channels(i32) #1

declare dso_local i64 @obs_data_get_int(i32*, i32) #1

declare dso_local i64 @obs_data_get_double(i32*, i32) #1

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i8* @gain_coefficient(i64, float) #1

declare dso_local i32 @db_to_mul(float) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i64 @os_gettime_ns(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32* @obs_weak_source_get_source(i32*) #1

declare dso_local i32 @obs_source_remove_audio_capture_callback(i32*, i32, %struct.compressor_data*) #1

declare dso_local i32 @obs_source_release(i32*) #1

declare dso_local i32 @obs_weak_source_release(i32*) #1

declare dso_local i32 @resize_env_buffer(%struct.compressor_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
