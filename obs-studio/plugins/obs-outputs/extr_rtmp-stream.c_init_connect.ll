; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_init_connect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_init_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32 }

@OPT_DROP_THRESHOLD = common dso_local global i8* null, align 8
@OPT_PFRAME_DROP_THRESHOLD = common dso_local global i8* null, align 8
@OPT_MAX_SHUTDOWN_TIME_SEC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@OPT_DYN_BITRATE = common dso_local global i32 0, align 4
@OBS_ENCODER_CAP_DYN_BITRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Dynamic bitrate enabled.  Dropped frames begone!\00", align 1
@OPT_BIND_IP = common dso_local global i32 0, align 4
@OPT_NEWSOCKETLOOP_ENABLED = common dso_local global i32 0, align 4
@OPT_LOWLATENCY_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*)* @init_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_connect(%struct.rtmp_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtmp_stream*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %3, align 8
  %14 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %15 = call i64 @stopping(%struct.rtmp_stream* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %19 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %18, i32 0, i32 26
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @pthread_join(i32 %20, i32* null)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %24 = call i32 @free_packets(%struct.rtmp_stream* %23)
  %25 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %26 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @obs_output_get_service(i32 %27)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %203

32:                                               ; preds = %22
  %33 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %34 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %33, i32 0, i32 25
  %35 = call i32 @os_atomic_set_bool(i32* %34, i32 0)
  %36 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %37 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %36, i32 0, i32 24
  %38 = call i32 @os_atomic_set_bool(i32* %37, i32 0)
  %39 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %40 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %39, i32 0, i32 23
  store i64 0, i64* %40, align 8
  %41 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %42 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %41, i32 0, i32 22
  store i64 0, i64* %42, align 8
  %43 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %44 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %43, i32 0, i32 21
  store i64 0, i64* %44, align 8
  %45 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %46 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %48 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @obs_output_get_settings(i32 %49)
  store i32* %50, i32** %5, align 8
  %51 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %52 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %51, i32 0, i32 18
  %53 = load i32*, i32** %4, align 8
  %54 = call i8* @obs_service_get_url(i32* %53)
  %55 = call i32 @dstr_copy(i32* %52, i8* %54)
  %56 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %57 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %56, i32 0, i32 17
  %58 = load i32*, i32** %4, align 8
  %59 = call i8* @obs_service_get_key(i32* %58)
  %60 = call i32 @dstr_copy(i32* %57, i8* %59)
  %61 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %62 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %61, i32 0, i32 20
  %63 = load i32*, i32** %4, align 8
  %64 = call i8* @obs_service_get_username(i32* %63)
  %65 = call i32 @dstr_copy(i32* %62, i8* %64)
  %66 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %67 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %66, i32 0, i32 19
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @obs_service_get_password(i32* %68)
  %70 = call i32 @dstr_copy(i32* %67, i8* %69)
  %71 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %72 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %71, i32 0, i32 18
  %73 = call i32 @dstr_depad(i32* %72)
  %74 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %75 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %74, i32 0, i32 17
  %76 = call i32 @dstr_depad(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i8*, i8** @OPT_DROP_THRESHOLD, align 8
  %79 = call i64 @obs_data_get_int(i32* %77, i8* %78)
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i8*, i8** @OPT_PFRAME_DROP_THRESHOLD, align 8
  %83 = call i64 @obs_data_get_int(i32* %81, i8* %82)
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = load i8*, i8** @OPT_MAX_SHUTDOWN_TIME_SEC, align 8
  %87 = call i64 @obs_data_get_int(i32* %85, i8* %86)
  %88 = trunc i64 %87 to i32
  %89 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %90 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %92 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @obs_output_get_video_encoder(i32 %93)
  store i32* %94, i32** %10, align 8
  %95 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %96 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @obs_output_get_audio_encoder(i32 %97, i32 0)
  store i32* %98, i32** %11, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32* @obs_encoder_get_settings(i32* %99)
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32* @obs_encoder_get_settings(i32* %101)
  store i32* %102, i32** %13, align 8
  %103 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %104 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %103, i32 0, i32 16
  %105 = call i32 @circlebuf_free(i32* %104)
  %106 = load i32*, i32** %13, align 8
  %107 = call i64 @obs_data_get_int(i32* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %109 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %111 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %110, i32 0, i32 15
  store i64 0, i64* %111, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i64 @obs_data_get_int(i32* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %114 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %115 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %117 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %120 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %122 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %121, i32 0, i32 14
  store i64 0, i64* %122, align 8
  %123 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %124 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = sdiv i64 %125, 10
  %127 = trunc i64 %126 to i32
  %128 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %129 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %131 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %130, i32 0, i32 13
  store i64 0, i64* %131, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* @OPT_DYN_BITRATE, align 4
  %134 = call i8* @obs_data_get_bool(i32* %132, i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %137 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @obs_encoder_get_caps(i32* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @OBS_ENCODER_CAP_DYN_BITRATE, align 4
  %142 = and i32 %140, %141
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %32
  %145 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %146 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %145, i32 0, i32 6
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %32
  %148 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %149 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %148, i32 0, i32 12
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @obs_output_get_delay(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %155 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %154, i32 0, i32 6
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %147
  %157 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %158 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = call i32 @info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %156
  %164 = load i32*, i32** %12, align 8
  %165 = call i32 @obs_data_release(i32* %164)
  %166 = load i32*, i32** %13, align 8
  %167 = call i32 @obs_data_release(i32* %166)
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 200
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 200
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %172, %163
  %176 = load i32, i32* %8, align 4
  %177 = mul nsw i32 1000, %176
  %178 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %179 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = mul nsw i32 1000, %180
  %182 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %183 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 4
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* @OPT_BIND_IP, align 4
  %186 = call i8* @obs_data_get_string(i32* %184, i32 %185)
  store i8* %186, i8** %6, align 8
  %187 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %188 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %187, i32 0, i32 11
  %189 = load i8*, i8** %6, align 8
  %190 = call i32 @dstr_copy(i32* %188, i8* %189)
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* @OPT_NEWSOCKETLOOP_ENABLED, align 4
  %193 = call i8* @obs_data_get_bool(i32* %191, i32 %192)
  %194 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %195 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %194, i32 0, i32 10
  store i8* %193, i8** %195, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* @OPT_LOWLATENCY_ENABLED, align 4
  %198 = call i8* @obs_data_get_bool(i32* %196, i32 %197)
  %199 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %200 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %199, i32 0, i32 9
  store i8* %198, i8** %200, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = call i32 @obs_data_release(i32* %201)
  store i32 1, i32* %2, align 4
  br label %203

203:                                              ; preds = %175, %31
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i64 @stopping(%struct.rtmp_stream*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @free_packets(%struct.rtmp_stream*) #1

declare dso_local i32* @obs_output_get_service(i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32* @obs_output_get_settings(i32) #1

declare dso_local i32 @dstr_copy(i32*, i8*) #1

declare dso_local i8* @obs_service_get_url(i32*) #1

declare dso_local i8* @obs_service_get_key(i32*) #1

declare dso_local i8* @obs_service_get_username(i32*) #1

declare dso_local i8* @obs_service_get_password(i32*) #1

declare dso_local i32 @dstr_depad(i32*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

declare dso_local i32* @obs_output_get_audio_encoder(i32, i32) #1

declare dso_local i32* @obs_encoder_get_settings(i32*) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i8* @obs_data_get_bool(i32*, i32) #1

declare dso_local i32 @obs_encoder_get_caps(i32*) #1

declare dso_local i64 @obs_output_get_delay(i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
