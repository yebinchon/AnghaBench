; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_isset.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_isset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_queue_s = type { %struct.fpm_event_queue_s*, %struct.fpm_event_s* }
%struct.fpm_event_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpm_event_s* (%struct.fpm_event_queue_s*, %struct.fpm_event_s*)* @fpm_event_queue_isset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpm_event_s* @fpm_event_queue_isset(%struct.fpm_event_queue_s* %0, %struct.fpm_event_s* %1) #0 {
  %3 = alloca %struct.fpm_event_s*, align 8
  %4 = alloca %struct.fpm_event_queue_s*, align 8
  %5 = alloca %struct.fpm_event_s*, align 8
  store %struct.fpm_event_queue_s* %0, %struct.fpm_event_queue_s** %4, align 8
  store %struct.fpm_event_s* %1, %struct.fpm_event_s** %5, align 8
  %6 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %7 = icmp ne %struct.fpm_event_s* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.fpm_event_s* null, %struct.fpm_event_s** %3, align 8
  br label %26

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %21, %9
  %11 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %4, align 8
  %12 = icmp ne %struct.fpm_event_queue_s* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %4, align 8
  %15 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %14, i32 0, i32 1
  %16 = load %struct.fpm_event_s*, %struct.fpm_event_s** %15, align 8
  %17 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  %18 = icmp eq %struct.fpm_event_s* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.fpm_event_s*, %struct.fpm_event_s** %5, align 8
  store %struct.fpm_event_s* %20, %struct.fpm_event_s** %3, align 8
  br label %26

21:                                               ; preds = %13
  %22 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %4, align 8
  %23 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %22, i32 0, i32 0
  %24 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %23, align 8
  store %struct.fpm_event_queue_s* %24, %struct.fpm_event_queue_s** %4, align 8
  br label %10

25:                                               ; preds = %10
  store %struct.fpm_event_s* null, %struct.fpm_event_s** %3, align 8
  br label %26

26:                                               ; preds = %25, %19, %8
  %27 = load %struct.fpm_event_s*, %struct.fpm_event_s** %3, align 8
  ret %struct.fpm_event_s* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
