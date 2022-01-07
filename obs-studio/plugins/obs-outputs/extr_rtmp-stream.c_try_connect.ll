; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_try_connect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_try_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { %struct.TYPE_15__, %struct.TYPE_16__, i32, %struct.TYPE_13__, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"URL is empty\00", align 1
@OBS_OUTPUT_BAD_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Connecting to RTMP URL %s...\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"FMLE/3.0 (compatible; FMSc/1.0)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Binding to IPv%d\00", align 1
@OBS_OUTPUT_CONNECT_FAILED = common dso_local global i32 0, align 4
@OBS_OUTPUT_INVALID_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Connection to %s successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*)* @try_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_connect(%struct.rtmp_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtmp_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %3, align 8
  %10 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %11 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %10, i32 0, i32 0
  %12 = call i64 @dstr_is_empty(%struct.TYPE_15__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @OBS_OUTPUT_BAD_PATH, align 4
  store i32 %16, i32* %2, align 4
  br label %179

17:                                               ; preds = %1
  %18 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %19 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %24 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %23, i32 0, i32 1
  %25 = call i32 @RTMP_Init(%struct.TYPE_16__* %24)
  %26 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %27 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %26, i32 0, i32 1
  %28 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %29 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @RTMP_SetupURL(%struct.TYPE_16__* %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @OBS_OUTPUT_BAD_PATH, align 4
  store i32 %35, i32* %2, align 4
  br label %179

36:                                               ; preds = %17
  %37 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %38 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %37, i32 0, i32 1
  %39 = call i32 @RTMP_EnableWrite(%struct.TYPE_16__* %38)
  %40 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %41 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %40, i32 0, i32 5
  %42 = call i32 @dstr_copy(i32* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %44 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %48 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %47, i32 0, i32 7
  %49 = call i32 @set_rtmp_dstr(i32* %46, i32* %48)
  %50 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %51 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %55 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %54, i32 0, i32 6
  %56 = call i32 @set_rtmp_dstr(i32* %53, i32* %55)
  %57 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %58 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %62 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %61, i32 0, i32 5
  %63 = call i32 @set_rtmp_dstr(i32* %60, i32* %62)
  %64 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %65 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %70 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %74 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %73, i32 0, i32 4
  %75 = call i64 @dstr_is_empty(%struct.TYPE_15__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %36
  %78 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %79 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %78, i32 0, i32 4
  %80 = call i64 @dstr_cmp(%struct.TYPE_15__* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %36
  %83 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %84 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = call i32 @memset(%struct.TYPE_14__* %85, i32 0, i32 8)
  br label %119

87:                                               ; preds = %77
  %88 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %89 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %93 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %97 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @netif_str_to_addr(i32* %91, i32* %95, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %87
  %104 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %105 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp eq i64 %110, 4
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 6, i32 4
  %117 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %103, %87
  br label %119

119:                                              ; preds = %118, %82
  %120 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %121 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %120, i32 0, i32 1
  %122 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %123 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @RTMP_AddStream(%struct.TYPE_16__* %121, i8* %125)
  store i64 1, i64* %7, align 8
  br label %127

127:                                              ; preds = %143, %119
  %128 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %129 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %7, align 8
  %132 = call i32* @obs_output_get_audio_encoder(i32 %130, i64 %131)
  store i32* %132, i32** %8, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  br label %146

136:                                              ; preds = %127
  %137 = load i32*, i32** %8, align 8
  %138 = call i8* @obs_encoder_get_name(i32* %137)
  store i8* %138, i8** %9, align 8
  %139 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %140 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %139, i32 0, i32 1
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 @RTMP_AddStream(%struct.TYPE_16__* %140, i8* %141)
  br label %143

143:                                              ; preds = %136
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %7, align 8
  br label %127

146:                                              ; preds = %135
  %147 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %148 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  store i32 4096, i32* %149, align 4
  %150 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %151 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %154 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  store i32 1, i32* %155, align 4
  %156 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %157 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %156, i32 0, i32 1
  %158 = call i32 @RTMP_Connect(%struct.TYPE_16__* %157, i32* null)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %146
  %161 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %162 = call i32 @set_output_error(%struct.rtmp_stream* %161)
  %163 = load i32, i32* @OBS_OUTPUT_CONNECT_FAILED, align 4
  store i32 %163, i32* %2, align 4
  br label %179

164:                                              ; preds = %146
  %165 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %166 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %165, i32 0, i32 1
  %167 = call i32 @RTMP_ConnectStream(%struct.TYPE_16__* %166, i32 0)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @OBS_OUTPUT_INVALID_STREAM, align 4
  store i32 %170, i32* %2, align 4
  br label %179

171:                                              ; preds = %164
  %172 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %173 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %178 = call i32 @init_send(%struct.rtmp_stream* %177)
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %171, %169, %160, %34, %14
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i64 @dstr_is_empty(%struct.TYPE_15__*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @RTMP_Init(%struct.TYPE_16__*) #1

declare dso_local i32 @RTMP_SetupURL(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @RTMP_EnableWrite(%struct.TYPE_16__*) #1

declare dso_local i32 @dstr_copy(i32*, i8*) #1

declare dso_local i32 @set_rtmp_dstr(i32*, i32*) #1

declare dso_local i64 @dstr_cmp(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @netif_str_to_addr(i32*, i32*, i32) #1

declare dso_local i32 @RTMP_AddStream(%struct.TYPE_16__*, i8*) #1

declare dso_local i32* @obs_output_get_audio_encoder(i32, i64) #1

declare dso_local i8* @obs_encoder_get_name(i32*) #1

declare dso_local i32 @RTMP_Connect(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @set_output_error(%struct.rtmp_stream*) #1

declare dso_local i32 @RTMP_ConnectStream(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @init_send(%struct.rtmp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
