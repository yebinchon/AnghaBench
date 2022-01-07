; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_push_back_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_push_back_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { i64, i32* }
%struct.audio_data = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_encoder*, %struct.audio_data*, i64, i64)* @push_back_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_back_audio(%struct.obs_encoder* %0, %struct.audio_data* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.obs_encoder*, align 8
  %6 = alloca %struct.audio_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.obs_encoder* %0, %struct.obs_encoder** %5, align 8
  store %struct.audio_data* %1, %struct.audio_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = sub i64 %11, %10
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %19 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.obs_encoder*, %struct.obs_encoder** %5, align 8
  %24 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %29 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @circlebuf_push_back(i32* %27, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %22
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  br label %16

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41, %4
  ret void
}

declare dso_local i32 @circlebuf_push_back(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
