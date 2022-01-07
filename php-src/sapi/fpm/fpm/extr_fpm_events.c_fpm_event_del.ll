; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_del.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_events.c_fpm_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i64 }

@fpm_event_queue_fd = common dso_local global i32 0, align 4
@fpm_event_queue_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_event_del(%struct.fpm_event_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fpm_event_s*, align 8
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %3, align 8
  %4 = load %struct.fpm_event_s*, %struct.fpm_event_s** %3, align 8
  %5 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.fpm_event_s*, %struct.fpm_event_s** %3, align 8
  %10 = call i64 @fpm_event_queue_del(i32* @fpm_event_queue_fd, %struct.fpm_event_s* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %24

13:                                               ; preds = %8, %1
  %14 = load %struct.fpm_event_s*, %struct.fpm_event_s** %3, align 8
  %15 = getelementptr inbounds %struct.fpm_event_s, %struct.fpm_event_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.fpm_event_s*, %struct.fpm_event_s** %3, align 8
  %20 = call i64 @fpm_event_queue_del(i32* @fpm_event_queue_timer, %struct.fpm_event_s* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %24

23:                                               ; preds = %18, %13
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @fpm_event_queue_del(i32*, %struct.fpm_event_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
