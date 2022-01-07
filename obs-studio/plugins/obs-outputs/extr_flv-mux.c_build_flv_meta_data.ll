; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_build_flv_meta_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_build_flv_meta_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"onMetaData\00", align 1
@AMF_ECMA_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fileSize\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"videocodecid\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"avc1\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"videodatarate\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"audiocodecid\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mp4a\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"audiodatarate\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"audiosamplerate\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"audiosamplesize\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"audiochannels\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"4.0\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"7.1\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%s (libobs version \00", align 1
@MODULE_NAME = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@LIBOBS_API_MAJOR_VER = common dso_local global i32 0, align 4
@LIBOBS_API_MINOR_VER = common dso_local global i32 0, align 4
@LIBOBS_API_PATCH_VER = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@AMF_OBJECT_END = common dso_local global i32 0, align 4
@OBS_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i64*, i64)* @build_flv_meta_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_flv_meta_data(i32* %0, i32** %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.dstr, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @obs_output_get_video_encoder(i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32* @obs_output_get_audio_encoder(i32* %20, i64 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32* @obs_encoder_video(i32* %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32* @obs_encoder_audio(i32* %25)
  store i32* %26, i32** %13, align 8
  %27 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4096
  store i8* %29, i8** %16, align 8
  %30 = bitcast %struct.dstr* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 16, i1 false)
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %170

37:                                               ; preds = %33, %4
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @enc_str(i8** %15, i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AMF_ECMA_ARRAY, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %15, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %15, align 8
  store i8 %41, i8* %42, align 1
  %44 = load i8*, i8** %15, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 20, i32 15
  %50 = call i8* @AMF_EncodeInt32(i8* %44, i8* %45, i32 %49)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @enc_num_val(i8** %15, i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double 0.000000e+00)
  %53 = load i8*, i8** %16, align 8
  %54 = call i32 @enc_num_val(i8** %15, i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double 0.000000e+00)
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %37
  %58 = load i8*, i8** %16, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i64 @obs_encoder_get_width(i32* %59)
  %61 = sitofp i64 %60 to double
  %62 = call i32 @enc_num_val(i8** %15, i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %61)
  %63 = load i8*, i8** %16, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @obs_encoder_get_height(i32* %64)
  %66 = sitofp i64 %65 to double
  %67 = call i32 @enc_num_val(i8** %15, i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), double %66)
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @enc_str_val(i8** %15, i8* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i8*, i8** %16, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call double @encoder_bitrate(i32* %71)
  %73 = call i32 @enc_num_val(i8** %15, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), double %72)
  %74 = load i8*, i8** %16, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call double @video_output_get_frame_rate(i32* %75)
  %77 = call i32 @enc_num_val(i8** %15, i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), double %76)
  br label %78

78:                                               ; preds = %57, %37
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 @enc_str_val(i8** %15, i8* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %81 = load i8*, i8** %16, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call double @encoder_bitrate(i32* %82)
  %84 = call i32 @enc_num_val(i8** %15, i8* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), double %83)
  %85 = load i8*, i8** %16, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i64 @obs_encoder_get_sample_rate(i32* %86)
  %88 = sitofp i64 %87 to double
  %89 = call i32 @enc_num_val(i8** %15, i8* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), double %88)
  %90 = load i8*, i8** %16, align 8
  %91 = call i32 @enc_num_val(i8** %15, i8* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), double 1.600000e+01)
  %92 = load i8*, i8** %16, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @audio_output_get_channels(i32* %93)
  %95 = sitofp i32 %94 to double
  %96 = call i32 @enc_num_val(i8** %15, i8* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), double %95)
  %97 = load i8*, i8** %16, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @audio_output_get_channels(i32* %98)
  %100 = icmp eq i32 %99, 2
  %101 = zext i1 %100 to i32
  %102 = call i32 @enc_bool_val(i8** %15, i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %101)
  %103 = load i8*, i8** %16, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @audio_output_get_channels(i32* %104)
  %106 = icmp eq i32 %105, 3
  %107 = zext i1 %106 to i32
  %108 = call i32 @enc_bool_val(i8** %15, i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %107)
  %109 = load i8*, i8** %16, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @audio_output_get_channels(i32* %110)
  %112 = icmp eq i32 %111, 4
  %113 = zext i1 %112 to i32
  %114 = call i32 @enc_bool_val(i8** %15, i8* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %113)
  %115 = load i8*, i8** %16, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = call i32 @audio_output_get_channels(i32* %116)
  %118 = icmp eq i32 %117, 4
  %119 = zext i1 %118 to i32
  %120 = call i32 @enc_bool_val(i8** %15, i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** %16, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @audio_output_get_channels(i32* %122)
  %124 = icmp eq i32 %123, 5
  %125 = zext i1 %124 to i32
  %126 = call i32 @enc_bool_val(i8** %15, i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %125)
  %127 = load i8*, i8** %16, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = call i32 @audio_output_get_channels(i32* %128)
  %130 = icmp eq i32 %129, 6
  %131 = zext i1 %130 to i32
  %132 = call i32 @enc_bool_val(i8** %15, i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %131)
  %133 = load i8*, i8** %16, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @audio_output_get_channels(i32* %134)
  %136 = icmp eq i32 %135, 8
  %137 = zext i1 %136 to i32
  %138 = call i32 @enc_bool_val(i8** %15, i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @MODULE_NAME, align 4
  %140 = call i32 @dstr_printf(%struct.dstr* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @LIBOBS_API_MAJOR_VER, align 4
  %142 = load i32, i32* @LIBOBS_API_MINOR_VER, align 4
  %143 = load i32, i32* @LIBOBS_API_PATCH_VER, align 4
  %144 = call i32 @dstr_catf(%struct.dstr* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 %141, i32 %142, i32 %143)
  %145 = call i32 @dstr_cat(%struct.dstr* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %146 = load i8*, i8** %16, align 8
  %147 = getelementptr inbounds %struct.dstr, %struct.dstr* %17, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @enc_str_val(i8** %15, i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* %148)
  %150 = call i32 @dstr_free(%struct.dstr* %17)
  %151 = load i8*, i8** %15, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %15, align 8
  store i8 0, i8* %151, align 1
  %153 = load i8*, i8** %15, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %15, align 8
  store i8 0, i8* %153, align 1
  %155 = load i32, i32* @AMF_OBJECT_END, align 4
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %15, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i8*, i8** %15, align 8
  %160 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = load i64*, i64** %8, align 8
  store i64 %163, i64* %164, align 8
  %165 = getelementptr inbounds [4096 x i8], [4096 x i8]* %14, i64 0, i64 0
  %166 = load i64*, i64** %8, align 8
  %167 = load i64, i64* %166, align 8
  %168 = call i32* @bmemdup(i8* %165, i64 %167)
  %169 = load i32**, i32*** %7, align 8
  store i32* %168, i32** %169, align 8
  store i32 1, i32* %5, align 4
  br label %170

170:                                              ; preds = %78, %36
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32* @obs_output_get_video_encoder(i32*) #1

declare dso_local i32* @obs_output_get_audio_encoder(i32*, i64) #1

declare dso_local i32* @obs_encoder_video(i32*) #1

declare dso_local i32* @obs_encoder_audio(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @enc_str(i8**, i8*, i8*) #1

declare dso_local i8* @AMF_EncodeInt32(i8*, i8*, i32) #1

declare dso_local i32 @enc_num_val(i8**, i8*, i8*, double) #1

declare dso_local i64 @obs_encoder_get_width(i32*) #1

declare dso_local i64 @obs_encoder_get_height(i32*) #1

declare dso_local i32 @enc_str_val(i8**, i8*, i8*, i8*) #1

declare dso_local double @encoder_bitrate(i32*) #1

declare dso_local double @video_output_get_frame_rate(i32*) #1

declare dso_local i64 @obs_encoder_get_sample_rate(i32*) #1

declare dso_local i32 @audio_output_get_channels(i32*) #1

declare dso_local i32 @enc_bool_val(i8**, i8*, i8*, i32) #1

declare dso_local i32 @dstr_printf(%struct.dstr*, i8*, i32) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32, i32) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32* @bmemdup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
