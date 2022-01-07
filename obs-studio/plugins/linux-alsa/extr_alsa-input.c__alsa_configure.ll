; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_configure.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"snd_pcm_hw_params_any failed: %s\00", align 1
@SND_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"snd_pcm_hw_params_set_access failed: %s\00", align 1
@SND_PCM_FORMAT_S16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"snd_pcm_hw_params_set_format failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"snd_pcm_hw_params_set_rate_near failed: %s\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"PCM '%s' rate set to %d\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"snd_pcm_hw_params_set_channels_near failed: %s\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"PCM '%s' channels set to %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"snd_pcm_hw_params failed: %s\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"snd_pcm_hw_params_get_period_size failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_alsa_configure(%struct.alsa_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alsa_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alsa_data* %0, %struct.alsa_data** %3, align 8
  %7 = call i32 @snd_pcm_hw_params_alloca(i32** %4)
  %8 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %9 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @snd_pcm_hw_params_any(i32 %10, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @LOG_ERROR, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @snd_strerror(i32 %17)
  %19 = call i32 (i32, i8*, i32, ...) @blog(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %2, align 4
  br label %166

20:                                               ; preds = %1
  %21 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %22 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @SND_PCM_ACCESS_RW_INTERLEAVED, align 4
  %26 = call i32 @snd_pcm_hw_params_set_access(i32 %23, i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @LOG_ERROR, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @snd_strerror(i32 %31)
  %33 = call i32 (i32, i8*, i32, ...) @blog(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 0, i32* %2, align 4
  br label %166

34:                                               ; preds = %20
  %35 = load i32, i32* @SND_PCM_FORMAT_S16, align 4
  %36 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %37 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %39 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %43 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @snd_pcm_hw_params_set_format(i32 %40, i32* %41, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i32, i32* @LOG_ERROR, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @snd_strerror(i32 %50)
  %52 = call i32 (i32, i8*, i32, ...) @blog(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 0, i32* %2, align 4
  br label %166

53:                                               ; preds = %34
  %54 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %55 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %59 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %58, i32 0, i32 7
  %60 = call i32 @snd_pcm_hw_params_set_rate_near(i32 %56, i32* %57, i32* %59, i32 0)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @LOG_ERROR, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @snd_strerror(i32 %65)
  %67 = call i32 (i32, i8*, i32, ...) @blog(i32 %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i32 0, i32* %2, align 4
  br label %166

68:                                               ; preds = %53
  %69 = load i32, i32* @LOG_INFO, align 4
  %70 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %71 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %74 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, ...) @blog(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %79 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %78, i32 0, i32 0
  %80 = call i32 @snd_pcm_hw_params_get_channels(i32* %77, i32* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %85 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %68
  %87 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %88 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %92 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %91, i32 0, i32 0
  %93 = call i32 @snd_pcm_hw_params_set_channels_near(i32 %89, i32* %90, i32* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load i32, i32* @LOG_ERROR, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @snd_strerror(i32 %98)
  %100 = call i32 (i32, i8*, i32, ...) @blog(i32 %97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  store i32 0, i32* %2, align 4
  br label %166

101:                                              ; preds = %86
  %102 = load i32, i32* @LOG_INFO, align 4
  %103 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %104 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %107 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, i32, ...) @blog(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %105, i32 %108)
  %110 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %111 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @snd_pcm_hw_params(i32 %112, i32* %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %101
  %118 = load i32, i32* @LOG_ERROR, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @snd_strerror(i32 %119)
  %121 = call i32 (i32, i8*, i32, ...) @blog(i32 %118, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %120)
  store i32 0, i32* %2, align 4
  br label %166

122:                                              ; preds = %101
  %123 = load i32*, i32** %4, align 8
  %124 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %125 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %124, i32 0, i32 1
  %126 = call i32 @snd_pcm_hw_params_get_period_size(i32* %123, i32* %125, i32* %6)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i32, i32* @LOG_ERROR, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @snd_strerror(i32 %131)
  %133 = call i32 (i32, i8*, i32, ...) @blog(i32 %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %132)
  store i32 0, i32* %2, align 4
  br label %166

134:                                              ; preds = %122
  %135 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %136 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %139 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @snd_pcm_format_physical_width(i32 %140)
  %142 = mul nsw i32 %137, %141
  %143 = sdiv i32 %142, 8
  %144 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %145 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %147 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %134
  %151 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %152 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @bfree(i64 %153)
  br label %155

155:                                              ; preds = %150, %134
  %156 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %157 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %160 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %158, %161
  %163 = call i64 @bzalloc(i32 %162)
  %164 = load %struct.alsa_data*, %struct.alsa_data** %3, align 8
  %165 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  store i32 1, i32* %2, align 4
  br label %166

166:                                              ; preds = %155, %129, %117, %96, %63, %48, %29, %15
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @snd_pcm_hw_params_alloca(i32**) #1

declare dso_local i32 @snd_pcm_hw_params_any(i32, i32*) #1

declare dso_local i32 @blog(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local i32 @snd_pcm_hw_params_set_access(i32, i32*, i32) #1

declare dso_local i32 @snd_pcm_hw_params_set_format(i32, i32*, i32) #1

declare dso_local i32 @snd_pcm_hw_params_set_rate_near(i32, i32*, i32*, i32) #1

declare dso_local i32 @snd_pcm_hw_params_get_channels(i32*, i32*) #1

declare dso_local i32 @snd_pcm_hw_params_set_channels_near(i32, i32*, i32*) #1

declare dso_local i32 @snd_pcm_hw_params(i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_params_get_period_size(i32*, i32*, i32*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @bfree(i64) #1

declare dso_local i64 @bzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
