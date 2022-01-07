; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-libfdk/extr_obs-libfdk.c_libfdk_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-libfdk/extr_obs-libfdk.c_libfdk_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_frame = type { i8** }
%struct.encoder_packet = type { i64, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i32, i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_14__ = type { i32, i8**, i32*, i32*, i32*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@IN_AUDIO_DATA = common dso_local global i32 0, align 4
@OUT_BITSTREAM_DATA = common dso_local global i32 0, align 4
@AACENC_OK = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to encode frame: %s\00", align 1
@OBS_ENCODER_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.encoder_frame*, %struct.encoder_packet*, i32*)* @libfdk_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libfdk_encode(i8* %0, %struct.encoder_frame* %1, %struct.encoder_packet* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.encoder_frame*, align 8
  %8 = alloca %struct.encoder_packet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.encoder_frame* %1, %struct.encoder_frame** %7, align 8
  store %struct.encoder_packet* %2, %struct.encoder_packet** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  %27 = bitcast %struct.TYPE_14__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 48, i1 false)
  %28 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 48, i1 false)
  %29 = bitcast %struct.TYPE_13__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 8, i1 false)
  %30 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 16, i1 false)
  %31 = load i32, i32* @IN_AUDIO_DATA, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* @OUT_BITSTREAM_DATA, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %34 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %21, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %16, align 4
  store i32 2, i32* %17, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i8** %21, i8*** %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32* %15, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store i32* %16, i32** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store i32* %17, i32** %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %22, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i8** %22, i8*** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store i32* %18, i32** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  store i32* %19, i32** %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  store i32* %20, i32** %65, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @aacEncEncode(i32 %68, %struct.TYPE_14__* %11, %struct.TYPE_14__* %12, %struct.TYPE_13__* %13, %struct.TYPE_12__* %14)
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* @AACENC_OK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %4
  %73 = load i32, i32* @LOG_ERROR, align 4
  %74 = load i32, i32* %23, align 4
  %75 = call i32 @libfdk_get_error(i32 %74)
  %76 = call i32 @blog(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %75)
  store i32 0, i32* %5, align 4
  br label %137

77:                                               ; preds = %4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = sext i32 %81 to i64
  %86 = getelementptr i8, i8* %84, i64 %85
  store i8* %86, i8** %83, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32*, i32** %9, align 8
  store i32 0, i32* %91, align 4
  store i32 1, i32* %5, align 4
  br label %137

92:                                               ; preds = %77
  %93 = load i32*, i32** %9, align 8
  store i32 1, i32* %93, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %24, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %24, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %107 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %24, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %117 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %122 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %126 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* @OBS_ENCODER_AUDIO, align 4
  %128 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %129 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %131 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %130, i32 0, i32 1
  store i32 1, i32* %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %136 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  store i32 1, i32* %5, align 4
  br label %137

137:                                              ; preds = %92, %90, %72
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @aacEncEncode(i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*) #2

declare dso_local i32 @blog(i32, i8*, i32) #2

declare dso_local i32 @libfdk_get_error(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
