; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.obs_audio_info = type { i32 }

@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No active audio\00", align 1
@kAudioUnitProperty_StreamFormat = common dso_local global i32 0, align 4
@SCOPE_INPUT = common dso_local global i32 0, align 4
@BUS_INPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"coreaudio_init_format\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"get input format\00", align 1
@SCOPE_OUTPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"set output format\00", align 1
@kAudioFormatLinearPCM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"format is not PCM\00", align 1
@AUDIO_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"unknown format flags: %u, bits: %u\00", align 1
@SPEAKERS_UNKNOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"unknown speaker layout: %u channels\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreaudio_data*)* @coreaudio_init_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreaudio_init_format(%struct.coreaudio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreaudio_data*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.obs_audio_info, align 4
  %8 = alloca i32, align 4
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %3, align 8
  store i32 48, i32* %6, align 4
  %9 = call i32 @obs_get_audio_info(%struct.obs_audio_info* %7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @LOG_WARNING, align 4
  %13 = call i32 @blog(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %113

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.obs_audio_info, %struct.obs_audio_info* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @get_audio_channels(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %19 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @kAudioUnitProperty_StreamFormat, align 4
  %22 = load i32, i32* @SCOPE_INPUT, align 4
  %23 = load i32, i32* @BUS_INPUT, align 4
  %24 = call i32 @get_property(i32 %20, i32 %21, i32 %22, i32 %23, %struct.TYPE_4__* %4, i32* %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %27 = call i32 @ca_success(i32 %25, %struct.coreaudio_data* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %113

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 8
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %37, %39
  %41 = sdiv i32 %40, 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %34, %30
  %50 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %51 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @kAudioUnitProperty_StreamFormat, align 4
  %54 = load i32, i32* @SCOPE_OUTPUT, align 4
  %55 = load i32, i32* @BUS_INPUT, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @set_property(i32 %52, i32 %53, i32 %54, i32 %55, %struct.TYPE_4__* %4, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %60 = call i32 @ca_success(i32 %58, %struct.coreaudio_data* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %113

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @kAudioFormatLinearPCM, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %70 = call i32 (%struct.coreaudio_data*, i8*, i8*, ...) @ca_warn(%struct.coreaudio_data* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %113

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @convert_ca_format(i64 %73, i32 %75)
  %77 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %78 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %80 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AUDIO_FORMAT_UNKNOWN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %71
  %85 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.coreaudio_data*, i8*, i8*, ...) @ca_warn(%struct.coreaudio_data* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %90)
  store i32 0, i32* %2, align 4
  br label %113

92:                                               ; preds = %71
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %96 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @convert_ca_speaker_layout(i32 %98)
  %100 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %101 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %103 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SPEAKERS_UNKNOWN, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %92
  %108 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.coreaudio_data*, i8*, i8*, ...) @ca_warn(%struct.coreaudio_data* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  store i32 0, i32* %2, align 4
  br label %113

112:                                              ; preds = %92
  store i32 1, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %107, %84, %68, %62, %29, %11
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @obs_get_audio_info(%struct.obs_audio_info*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @get_audio_channels(i32) #1

declare dso_local i32 @get_property(i32, i32, i32, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ca_success(i32, %struct.coreaudio_data*, i8*, i8*) #1

declare dso_local i32 @set_property(i32, i32, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ca_warn(%struct.coreaudio_data*, i8*, i8*, ...) #1

declare dso_local i32 @convert_ca_format(i64, i32) #1

declare dso_local i32 @convert_ca_speaker_layout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
