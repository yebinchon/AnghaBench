; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_stop_reopen.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-alsa/extr_alsa-input.c__alsa_stop_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alsa_data = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_alsa_stop_reopen(%struct.alsa_data* %0) #0 {
  %2 = alloca %struct.alsa_data*, align 8
  store %struct.alsa_data* %0, %struct.alsa_data** %2, align 8
  %3 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %4 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %3, i32 0, i32 2
  %5 = call i64 @os_atomic_load_bool(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %9 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @os_event_signal(i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %14 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %19 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pthread_join(i64 %20, i32* null)
  %22 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %23 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.alsa_data*, %struct.alsa_data** %2, align 8
  %26 = getelementptr inbounds %struct.alsa_data, %struct.alsa_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @os_event_reset(i32 %27)
  ret void
}

declare dso_local i64 @os_atomic_load_bool(i32*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i64, i32*) #1

declare dso_local i32 @os_event_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
