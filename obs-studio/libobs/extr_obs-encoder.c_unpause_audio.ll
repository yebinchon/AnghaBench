; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_unpause_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_unpause_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pause_data = type { i32, i32 }
%struct.audio_data = type { i32, i64, i64* }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pause_data*, %struct.audio_data*, i64)* @unpause_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpause_audio(%struct.pause_data* %0, %struct.audio_data* %1, i64 %2) #0 {
  %4 = alloca %struct.pause_data*, align 8
  %5 = alloca %struct.audio_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pause_data* %0, %struct.pause_data** %4, align 8
  store %struct.audio_data* %1, %struct.audio_data** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.pause_data*, %struct.pause_data** %4, align 8
  %10 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %13 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ns_to_audio_frames(i64 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %43, %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MAX_AV_PLANES, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %25 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %46

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %37 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %35
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %19

46:                                               ; preds = %31, %19
  %47 = load %struct.pause_data*, %struct.pause_data** %4, align 8
  %48 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %51 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %53 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %59 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.pause_data*, %struct.pause_data** %4, align 8
  %61 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.pause_data*, %struct.pause_data** %4, align 8
  %63 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  ret void
}

declare dso_local i32 @ns_to_audio_frames(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
