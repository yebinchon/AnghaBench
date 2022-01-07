; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_fire.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i32, i32, i32 (%struct.fpm_event_s*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_event_fire(%struct.fpm_event_s* %0) #0 {
  %2 = alloca %struct.fpm_event_s*, align 8
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %2, align 8
  %3 = load %struct.fpm_event_s*, %struct.fpm_event_s** %2, align 8
  %4 = icmp ne %struct.fpm_event_s* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.fpm_event_s*, %struct.fpm_event_s** %2, align 8
  %7 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %6, i32 0, i32 2
  %8 = load i32 (%struct.fpm_event_s*, i32, i32)*, i32 (%struct.fpm_event_s*, i32, i32)** %7, align 8
  %9 = icmp ne i32 (%struct.fpm_event_s*, i32, i32)* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  br label %23

11:                                               ; preds = %5
  %12 = load %struct.fpm_event_s*, %struct.fpm_event_s** %2, align 8
  %13 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %12, i32 0, i32 2
  %14 = load i32 (%struct.fpm_event_s*, i32, i32)*, i32 (%struct.fpm_event_s*, i32, i32)** %13, align 8
  %15 = load %struct.fpm_event_s*, %struct.fpm_event_s** %2, align 8
  %16 = load %struct.fpm_event_s*, %struct.fpm_event_s** %2, align 8
  %17 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fpm_event_s*, %struct.fpm_event_s** %2, align 8
  %20 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %14(%struct.fpm_event_s* %15, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
