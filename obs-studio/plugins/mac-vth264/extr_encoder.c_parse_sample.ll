; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_parse_sample.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_parse_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, %struct.darray }
%struct.darray = type { i32 }
%struct.encoder_packet = type { i32, i32, i32, i8*, i8*, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_h264_encoder*, i32, %struct.encoder_packet*, i32)* @parse_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_sample(%struct.vt_h264_encoder* %0, i32 %1, %struct.encoder_packet* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vt_h264_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.encoder_packet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca %struct.darray*, align 8
  store %struct.vt_h264_encoder* %0, %struct.vt_h264_encoder** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.encoder_packet* %2, %struct.encoder_packet** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CMSampleBufferGetPresentationTimeStamp(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @CMSampleBufferGetDecodeTimeStamp(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %23, %26
  %28 = call i32 @CMTimeMultiplyByFloat64(i32 %19, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %31 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %35 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %33, %36
  %38 = call i32 @CMTimeMultiplyByFloat64(i32 %29, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %40 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @CMTimeSubtract(i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @is_sample_keyframe(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %51 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %50, i32 0, i32 1
  %52 = bitcast { i64, i32 }* %13 to i8*
  %53 = bitcast %struct.TYPE_4__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 12, i1 false)
  %54 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %55 = load i64, i64* %54, align 4
  %56 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @da_resize(i64 %55, i32 %57, i32 0)
  store %struct.darray* null, %struct.darray** %14, align 8
  %59 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %60 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %66 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store %struct.darray* %67, %struct.darray** %14, align 8
  br label %68

68:                                               ; preds = %64, %47
  %69 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %70 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %71 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load %struct.darray*, %struct.darray** %14, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @convert_sample_to_annexb(%struct.vt_h264_encoder* %69, i32* %72, %struct.darray* %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %110

79:                                               ; preds = %68
  %80 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  %81 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %82 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @CMTimeGetSeconds(i32 %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %87 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @CMTimeGetSeconds(i32 %88)
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %92 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %94 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %98 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %6, align 8
  %100 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %104 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %107 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @CFRelease(i32 %108)
  store i32 1, i32* %5, align 4
  br label %113

110:                                              ; preds = %78
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @CFRelease(i32 %111)
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %110, %79
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @CMSampleBufferGetPresentationTimeStamp(i32) #1

declare dso_local i32 @CMSampleBufferGetDecodeTimeStamp(i32) #1

declare dso_local i32 @CMTimeMultiplyByFloat64(i32, i32) #1

declare dso_local i32 @CMTimeSubtract(i32, i32) #1

declare dso_local i32 @is_sample_keyframe(i32) #1

declare dso_local i32 @da_resize(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @convert_sample_to_annexb(%struct.vt_h264_encoder*, i32*, %struct.darray*, i32, i32) #1

declare dso_local i64 @CMTimeGetSeconds(i32) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
