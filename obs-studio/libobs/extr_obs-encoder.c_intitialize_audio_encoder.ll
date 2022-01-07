; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_intitialize_audio_encoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_intitialize_audio_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.audio_convert_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*)* @intitialize_audio_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intitialize_audio_encoder(%struct.obs_encoder* %0) #0 {
  %2 = alloca %struct.obs_encoder*, align 8
  %3 = alloca %struct.audio_convert_info, align 4
  store %struct.obs_encoder* %0, %struct.obs_encoder** %2, align 8
  %4 = bitcast %struct.audio_convert_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 16, i1 false)
  %5 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %6 = call i32 @get_audio_info(%struct.obs_encoder* %5, %struct.audio_convert_info* %3)
  %7 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %3, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %10 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @get_audio_planes(i32 %12, i32 %14)
  %16 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %17 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_audio_size(i32 %19, i32 %21, i32 1)
  %23 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %24 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %26 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %30 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 %28(i32 %32)
  %34 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %35 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %37 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %40 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %44 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.obs_encoder*, %struct.obs_encoder** %2, align 8
  %46 = call i32 @reset_audio_buffers(%struct.obs_encoder* %45)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_audio_info(%struct.obs_encoder*, %struct.audio_convert_info*) #2

declare dso_local i32 @get_audio_planes(i32, i32) #2

declare dso_local i32 @get_audio_size(i32, i32, i32) #2

declare dso_local i32 @reset_audio_buffers(%struct.obs_encoder*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
