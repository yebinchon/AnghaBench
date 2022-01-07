; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_start_from_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_start_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.audio_data = type { i32*, i32 }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*, i64)* @start_from_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_from_buffer(%struct.obs_encoder* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_encoder*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.audio_data, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = bitcast %struct.audio_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %39, %2
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @MAX_AV_PLANES, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %23 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %28, i32* %32, align 4
  %33 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %34 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = call i32 @memset(%struct.TYPE_2__* %37, i32 0, i32 4)
  br label %39

39:                                               ; preds = %21
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %17

42:                                               ; preds = %17
  %43 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %52 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @calc_offset_size(%struct.obs_encoder* %49, i64 %50, i64 %53)
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.obs_encoder*, %struct.obs_encoder** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @push_back_audio(%struct.obs_encoder* %56, %struct.audio_data* %6, i64 %57, i64 %58)
  store i64 0, i64* %9, align 8
  br label %60

60:                                               ; preds = %71, %55
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @MAX_AV_PLANES, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bfree(i32 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %60

74:                                               ; preds = %60
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #2

declare dso_local i64 @calc_offset_size(%struct.obs_encoder*, i64, i64) #2

declare dso_local i32 @push_back_audio(%struct.obs_encoder*, %struct.audio_data*, i64, i64) #2

declare dso_local i32 @bfree(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
