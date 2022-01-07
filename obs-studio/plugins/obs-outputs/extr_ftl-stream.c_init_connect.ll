; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_init_connect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_init_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i8*, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"init_connect\00", align 1
@OBS_OUTPUT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@FTL_VIDEO_H264 = common dso_local global i32 0, align 4
@FTL_AUDIO_OPUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"OBS Studio\00", align 1
@OBS_VERSION = common dso_local global i32 0, align 4
@FTL_SUCCESS = common dso_local global i64 0, align 8
@FTL_BAD_OR_INVALID_STREAM_KEY = common dso_local global i64 0, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid Key (%s)\00", align 1
@OBS_OUTPUT_INVALID_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to create ingest handle (%s)\00", align 1
@OPT_DROP_THRESHOLD = common dso_local global i8* null, align 8
@OPT_MAX_SHUTDOWN_TIME_SEC = common dso_local global i8* null, align 8
@OPT_BIND_IP = common dso_local global i32 0, align 4
@OBS_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftl_stream*)* @init_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_connect(%struct.ftl_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftl_stream*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ftl_stream* %0, %struct.ftl_stream** %3, align 8
  %13 = call i32 @info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %15 = call i64 @stopping(%struct.ftl_stream* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %19 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pthread_join(i32 %20, i32* null)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %24 = call i32 @free_packets(%struct.ftl_stream* %23)
  %25 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %26 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @obs_output_get_service(i32 %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* @OBS_OUTPUT_ERROR, align 4
  store i32 %32, i32* %2, align 4
  br label %185

33:                                               ; preds = %22
  %34 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %35 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %34, i32 0, i32 14
  %36 = call i32 @os_atomic_set_bool(i32* %35, i32 0)
  %37 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %38 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %37, i32 0, i32 13
  %39 = call i32 @os_atomic_set_bool(i32* %38, i32 0)
  %40 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %41 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %40, i32 0, i32 12
  store i64 0, i64* %41, align 8
  %42 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %43 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %42, i32 0, i32 11
  store i64 0, i64* %43, align 8
  %44 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %45 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %44, i32 0, i32 10
  store i64 0, i64* %45, align 8
  %46 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %47 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @obs_output_get_settings(i32 %48)
  store i32* %49, i32** %5, align 8
  %50 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %51 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @obs_output_get_video_encoder(i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @obs_encoder_get_settings(i32* %54)
  store i32* %55, i32** %10, align 8
  %56 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %57 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %56, i32 0, i32 4
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @obs_service_get_url(i32* %58)
  %60 = call i32 @dstr_copy(%struct.TYPE_5__* %57, i8* %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i8* @obs_service_get_key(i32* %61)
  store i8* %62, i8** %7, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @obs_data_get_int(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sitofp i32 %66 to float
  %68 = fmul float %67, 0x3FF19999A0000000
  %69 = fptosi float %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %33
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %73, %33
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %78 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* @FTL_VIDEO_H264, align 4
  %81 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %82 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 8
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @FTL_AUDIO_OPUS, align 4
  %85 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %86 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 7
  store i32 %84, i32* %87, align 8
  %88 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %89 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %93 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 6
  store i32 %91, i32* %94, align 4
  %95 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %96 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %97, align 8
  %98 = load i32, i32* @OBS_VERSION, align 4
  %99 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %100 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 5
  store i32 %98, i32* %101, align 8
  %102 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %103 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %75
  br label %111

107:                                              ; preds = %75
  %108 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %109 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  br label %111

111:                                              ; preds = %107, %106
  %112 = phi i64 [ 0, %106 ], [ %110, %107 ]
  %113 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %114 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  store i64 %112, i64* %115, align 8
  %116 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %117 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %120 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %123 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %122, i32 0, i32 8
  %124 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %125 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %124, i32 0, i32 7
  %126 = call i64 @ftl_ingest_create(i32* %123, %struct.TYPE_4__* %125)
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* @FTL_SUCCESS, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %111
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* @FTL_BAD_OR_INVALID_STREAM_KEY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* @LOG_ERROR, align 4
  %136 = load i64, i64* %8, align 8
  %137 = call i32 @ftl_status_code_to_string(i64 %136)
  %138 = call i32 @blog(i32 %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @OBS_OUTPUT_INVALID_STREAM, align 4
  store i32 %139, i32* %2, align 4
  br label %185

140:                                              ; preds = %130
  %141 = load i32, i32* @LOG_ERROR, align 4
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @ftl_status_code_to_string(i64 %142)
  %144 = call i32 @blog(i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @OBS_OUTPUT_ERROR, align 4
  store i32 %145, i32* %2, align 4
  br label %185

146:                                              ; preds = %111
  %147 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %148 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %147, i32 0, i32 6
  %149 = load i32*, i32** %4, align 8
  %150 = call i8* @obs_service_get_username(i32* %149)
  %151 = call i32 @dstr_copy(%struct.TYPE_5__* %148, i8* %150)
  %152 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %153 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %152, i32 0, i32 5
  %154 = load i32*, i32** %4, align 8
  %155 = call i8* @obs_service_get_password(i32* %154)
  %156 = call i32 @dstr_copy(%struct.TYPE_5__* %153, i8* %155)
  %157 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %158 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %157, i32 0, i32 4
  %159 = call i32 @dstr_depad(%struct.TYPE_5__* %158)
  %160 = load i32*, i32** %5, align 8
  %161 = load i8*, i8** @OPT_DROP_THRESHOLD, align 8
  %162 = call i64 @obs_data_get_int(i32* %160, i8* %161)
  %163 = trunc i64 %162 to i32
  %164 = mul nsw i32 %163, 1000
  %165 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %166 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = load i8*, i8** @OPT_MAX_SHUTDOWN_TIME_SEC, align 8
  %169 = call i64 @obs_data_get_int(i32* %167, i8* %168)
  %170 = trunc i64 %169 to i32
  %171 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %172 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* @OPT_BIND_IP, align 4
  %175 = call i8* @obs_data_get_string(i32* %173, i32 %174)
  store i8* %175, i8** %6, align 8
  %176 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %177 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %176, i32 0, i32 3
  %178 = load i8*, i8** %6, align 8
  %179 = call i32 @dstr_copy(%struct.TYPE_5__* %177, i8* %178)
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @obs_data_release(i32* %180)
  %182 = load i32*, i32** %10, align 8
  %183 = call i32 @obs_data_release(i32* %182)
  %184 = load i32, i32* @OBS_OUTPUT_SUCCESS, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %146, %140, %134, %31
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @info(i8*) #1

declare dso_local i64 @stopping(%struct.ftl_stream*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @free_packets(%struct.ftl_stream*) #1

declare dso_local i32* @obs_output_get_service(i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32* @obs_output_get_settings(i32) #1

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

declare dso_local i32* @obs_encoder_get_settings(i32*) #1

declare dso_local i32 @dstr_copy(%struct.TYPE_5__*, i8*) #1

declare dso_local i8* @obs_service_get_url(i32*) #1

declare dso_local i8* @obs_service_get_key(i32*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i64 @ftl_ingest_create(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @ftl_status_code_to_string(i64) #1

declare dso_local i8* @obs_service_get_username(i32*) #1

declare dso_local i8* @obs_service_get_password(i32*) #1

declare dso_local i32 @dstr_depad(%struct.TYPE_5__*) #1

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
