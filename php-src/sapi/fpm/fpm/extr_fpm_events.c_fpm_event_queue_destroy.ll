; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_destroy.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_queue_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_queue_s = type { %struct.fpm_event_queue_s* }
%struct.TYPE_2__ = type { i32 (...)* }

@fpm_event_queue_fd = common dso_local global %struct.fpm_event_queue_s* null, align 8
@module = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fpm_event_queue_s**)* @fpm_event_queue_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpm_event_queue_destroy(%struct.fpm_event_queue_s** %0) #0 {
  %2 = alloca %struct.fpm_event_queue_s**, align 8
  %3 = alloca %struct.fpm_event_queue_s*, align 8
  %4 = alloca %struct.fpm_event_queue_s*, align 8
  store %struct.fpm_event_queue_s** %0, %struct.fpm_event_queue_s*** %2, align 8
  %5 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %2, align 8
  %6 = icmp ne %struct.fpm_event_queue_s** %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %2, align 8
  %10 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %9, align 8
  %11 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** @fpm_event_queue_fd, align 8
  %12 = icmp eq %struct.fpm_event_queue_s* %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = icmp ne i32 (...)* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @module, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  br label %23

23:                                               ; preds = %18, %13, %8
  %24 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %2, align 8
  %25 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %24, align 8
  store %struct.fpm_event_queue_s* %25, %struct.fpm_event_queue_s** %3, align 8
  br label %26

26:                                               ; preds = %29, %23
  %27 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %3, align 8
  %28 = icmp ne %struct.fpm_event_queue_s* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %3, align 8
  store %struct.fpm_event_queue_s* %30, %struct.fpm_event_queue_s** %4, align 8
  %31 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %3, align 8
  %32 = getelementptr inbounds %struct.fpm_event_queue_s, %struct.fpm_event_queue_s* %31, i32 0, i32 0
  %33 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %32, align 8
  store %struct.fpm_event_queue_s* %33, %struct.fpm_event_queue_s** %3, align 8
  %34 = load %struct.fpm_event_queue_s*, %struct.fpm_event_queue_s** %4, align 8
  %35 = call i32 @free(%struct.fpm_event_queue_s* %34)
  br label %26

36:                                               ; preds = %26
  %37 = load %struct.fpm_event_queue_s**, %struct.fpm_event_queue_s*** %2, align 8
  store %struct.fpm_event_queue_s* null, %struct.fpm_event_queue_s** %37, align 8
  br label %38

38:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @free(%struct.fpm_event_queue_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
