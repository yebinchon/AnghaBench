; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expander_data = type { i32, float, float, i64, i64, float, i64, i64, i64, i64, i32, i32, i8*, i8* }

@S_PRESETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"expander\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gate\00", align 1
@S_ATTACK_TIME = common dso_local global i32 0, align 4
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@S_OUTPUT_GAIN = common dso_local global i32 0, align 4
@S_RATIO = common dso_local global i32 0, align 4
@S_THRESHOLD = common dso_local global i32 0, align 4
@MS_IN_S_F = common dso_local global float 0.000000e+00, align 4
@S_DETECTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@RMS_DETECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"peak\00", align 1
@PEAK_DETECT = common dso_local global i32 0, align 4
@DEFAULT_AUDIO_BUF_MS = common dso_local global i64 0, align 8
@MS_IN_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @expander_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expander_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.expander_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.expander_data*
  store %struct.expander_data* %15, %struct.expander_data** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @S_PRESETS, align 4
  %18 = call i8* @obs_data_get_string(i32* %16, i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %24 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @obs_data_clear(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @S_PRESETS, align 4
  %32 = call i32 @obs_data_set_string(i32* %30, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @expander_defaults(i32* %33)
  %35 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %36 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %27, %22, %2
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %43 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @obs_data_clear(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @S_PRESETS, align 4
  %51 = call i32 @obs_data_set_string(i32* %49, i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @expander_defaults(i32* %52)
  %54 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %55 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %46, %41, %37
  %57 = call i32 (...) @obs_get_audio()
  %58 = call i64 @audio_output_get_sample_rate(i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = call i32 (...) @obs_get_audio()
  %60 = call i64 @audio_output_get_channels(i32 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @S_ATTACK_TIME, align 4
  %63 = call i64 @obs_data_get_int(i32* %61, i32 %62)
  %64 = sitofp i64 %63 to float
  store float %64, float* %9, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @S_RELEASE_TIME, align 4
  %67 = call i64 @obs_data_get_int(i32* %65, i32 %66)
  %68 = sitofp i64 %67 to float
  store float %68, float* %10, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @S_OUTPUT_GAIN, align 4
  %71 = call i64 @obs_data_get_double(i32* %69, i32 %70)
  %72 = sitofp i64 %71 to float
  store float %72, float* %11, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @S_RATIO, align 4
  %75 = call i64 @obs_data_get_double(i32* %73, i32 %74)
  %76 = sitofp i64 %75 to float
  %77 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %78 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %77, i32 0, i32 1
  store float %76, float* %78, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* @S_THRESHOLD, align 4
  %81 = call i64 @obs_data_get_double(i32* %79, i32 %80)
  %82 = sitofp i64 %81 to float
  %83 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %84 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %83, i32 0, i32 2
  store float %82, float* %84, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load float, float* %9, align 4
  %87 = load float, float* @MS_IN_S_F, align 4
  %88 = fdiv float %86, %87
  %89 = call i8* @gain_coefficient(i64 %85, float %88)
  %90 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %91 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %90, i32 0, i32 13
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load float, float* %10, align 4
  %94 = load float, float* @MS_IN_S_F, align 4
  %95 = fdiv float %93, %94
  %96 = call i8* @gain_coefficient(i64 %92, float %95)
  %97 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %98 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %97, i32 0, i32 12
  store i8* %96, i8** %98, align 8
  %99 = load float, float* %11, align 4
  %100 = call i32 @db_to_mul(float %99)
  %101 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %102 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %105 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %108 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  %109 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %110 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %109, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = fsub float 1.000000e+00, %111
  %113 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %114 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %113, i32 0, i32 5
  store float %112, float* %114, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @S_DETECTOR, align 4
  %117 = call i8* @obs_data_get_string(i32* %115, i32 %116)
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %56
  %122 = load i32, i32* @RMS_DETECT, align 4
  %123 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %124 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %123, i32 0, i32 10
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %56
  %126 = load i8*, i8** %12, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @PEAK_DETECT, align 4
  %131 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %132 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @DEFAULT_AUDIO_BUF_MS, align 8
  %136 = mul i64 %134, %135
  %137 = load i64, i64* @MS_IN_S, align 8
  %138 = udiv i64 %136, %137
  store i64 %138, i64* %13, align 8
  %139 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %140 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @resize_env_buffer(%struct.expander_data* %144, i64 %145)
  br label %147

147:                                              ; preds = %143, %133
  %148 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %149 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %154 = load i64, i64* %13, align 8
  %155 = call i32 @resize_runaverage_buffer(%struct.expander_data* %153, i64 %154)
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %158 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %163 = load i64, i64* %13, align 8
  %164 = call i32 @resize_env_in_buffer(%struct.expander_data* %162, i64 %163)
  br label %165

165:                                              ; preds = %161, %156
  %166 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %167 = getelementptr inbounds %struct.expander_data, %struct.expander_data* %166, i32 0, i32 9
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load %struct.expander_data*, %struct.expander_data** %5, align 8
  %172 = load i64, i64* %13, align 8
  %173 = call i32 @resize_gaindB_buffer(%struct.expander_data* %171, i64 %172)
  br label %174

174:                                              ; preds = %170, %165
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @obs_data_clear(i32*) #1

declare dso_local i32 @obs_data_set_string(i32*, i32, i8*) #1

declare dso_local i32 @expander_defaults(i32*) #1

declare dso_local i64 @audio_output_get_sample_rate(i32) #1

declare dso_local i32 @obs_get_audio(...) #1

declare dso_local i64 @audio_output_get_channels(i32) #1

declare dso_local i64 @obs_data_get_int(i32*, i32) #1

declare dso_local i64 @obs_data_get_double(i32*, i32) #1

declare dso_local i8* @gain_coefficient(i64, float) #1

declare dso_local i32 @db_to_mul(float) #1

declare dso_local i32 @resize_env_buffer(%struct.expander_data*, i64) #1

declare dso_local i32 @resize_runaverage_buffer(%struct.expander_data*, i64) #1

declare dso_local i32 @resize_env_in_buffer(%struct.expander_data*, i64) #1

declare dso_local i32 @resize_gaindB_buffer(%struct.expander_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
