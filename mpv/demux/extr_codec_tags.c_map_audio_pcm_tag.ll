; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_codec_tags.c_map_audio_pcm_tag.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_codec_tags.c_map_audio_pcm_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_codec_params = type { i32, i32, i8*, i32, i32, i32, %struct.mp_chmap }
%struct.mp_chmap = type { i64 }

@guid_ext_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_codec_params*)* @map_audio_pcm_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_audio_pcm_tag(%struct.mp_codec_params* %0) #0 {
  %2 = alloca %struct.mp_codec_params*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mp_chmap, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_codec_params* %0, %struct.mp_codec_params** %2, align 8
  %8 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %9 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 65534
  br i1 %11, label %12, label %72

12:                                               ; preds = %1
  %13 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %14 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 22
  br i1 %16, label %17, label %72

17:                                               ; preds = %12
  %18 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %19 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = call i8* @AV_RL32(i8* %21)
  store i8* %22, i8** %3, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @mp_chmap_from_waveext(%struct.mp_chmap* %4, i8* %23)
  %25 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %26 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %34 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %33, i32 0, i32 6
  %35 = bitcast %struct.mp_chmap* %34 to i8*
  %36 = bitcast %struct.mp_chmap* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  br label %37

37:                                               ; preds = %32, %17
  %38 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %39 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 6
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i64, i64* @guid_ext_base, align 8
  %45 = add nsw i64 %44, 4
  %46 = call i64 @memcmp(i8* %43, i64 %45, i32 12)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %37
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @AV_RL32(i8* %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %53 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %55 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %58 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @lookup_tag(i32 %56, i32 %59)
  %61 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %62 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %48, %37
  %64 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %65 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 22
  store i8* %67, i8** %65, align 8
  %68 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %69 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 22
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63, %12, %1
  %73 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %74 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 7
  %78 = sdiv i32 %77, 8
  store i32 %78, i32* %7, align 4
  %79 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %80 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %104 [
    i32 0, label %82
    i32 1, label %82
    i32 3, label %97
  ]

82:                                               ; preds = %72, %72
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %83, 1
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp sle i32 %86, 4
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 1
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %93, 8
  %95 = call i32 @mp_set_pcm_codec(%struct.mp_codec_params* %89, i32 %92, i32 0, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %88, %85, %82
  br label %104

97:                                               ; preds = %72
  %98 = load %struct.mp_codec_params*, %struct.mp_codec_params** %2, align 8
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 64
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 64, i32 32
  %103 = call i32 @mp_set_pcm_codec(%struct.mp_codec_params* %98, i32 1, i32 1, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %72, %97, %96
  ret void
}

declare dso_local i8* @AV_RL32(i8*) #1

declare dso_local i32 @mp_chmap_from_waveext(%struct.mp_chmap*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @memcmp(i8*, i64, i32) #1

declare dso_local i32 @lookup_tag(i32, i32) #1

declare dso_local i32 @mp_set_pcm_codec(%struct.mp_codec_params*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
