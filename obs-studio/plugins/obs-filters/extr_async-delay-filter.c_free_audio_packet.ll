; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_free_audio_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_free_audio_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_audio_data = type { i32* }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_audio_data*)* @free_audio_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_audio_packet(%struct.obs_audio_data* %0) #0 {
  %2 = alloca %struct.obs_audio_data*, align 8
  %3 = alloca i64, align 8
  store %struct.obs_audio_data* %0, %struct.obs_audio_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MAX_AV_PLANES, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.obs_audio_data*, %struct.obs_audio_data** %2, align 8
  %10 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfree(i32 %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %3, align 8
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.obs_audio_data*, %struct.obs_audio_data** %2, align 8
  %21 = call i32 @memset(%struct.obs_audio_data* %20, i32 0, i32 8)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @memset(%struct.obs_audio_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
