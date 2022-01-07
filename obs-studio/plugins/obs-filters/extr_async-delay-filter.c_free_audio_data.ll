; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_free_audio_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_async-delay-filter.c_free_audio_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_delay_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.obs_audio_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_delay_data*)* @free_audio_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_audio_data(%struct.async_delay_data* %0) #0 {
  %2 = alloca %struct.async_delay_data*, align 8
  %3 = alloca %struct.obs_audio_data, align 4
  store %struct.async_delay_data* %0, %struct.async_delay_data** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.async_delay_data*, %struct.async_delay_data** %2, align 8
  %6 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load %struct.async_delay_data*, %struct.async_delay_data** %2, align 8
  %12 = getelementptr inbounds %struct.async_delay_data, %struct.async_delay_data* %11, i32 0, i32 0
  %13 = call i32 @circlebuf_pop_front(%struct.TYPE_2__* %12, %struct.obs_audio_data* %3, i32 4)
  %14 = call i32 @free_audio_packet(%struct.obs_audio_data* %3)
  br label %4

15:                                               ; preds = %4
  ret void
}

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_2__*, %struct.obs_audio_data*, i32) #1

declare dso_local i32 @free_audio_packet(%struct.obs_audio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
