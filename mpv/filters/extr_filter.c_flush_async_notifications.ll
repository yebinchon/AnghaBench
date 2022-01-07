; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_flush_async_notifications.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_flush_async_notifications.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_runner = type { i32, i32, i32, %struct.mp_filter** }
%struct.mp_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter_runner*)* @flush_async_notifications to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_async_notifications(%struct.filter_runner* %0) #0 {
  %2 = alloca %struct.filter_runner*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  store %struct.filter_runner* %0, %struct.filter_runner** %2, align 8
  %5 = load %struct.filter_runner*, %struct.filter_runner** %2, align 8
  %6 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %5, i32 0, i32 2
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.filter_runner*, %struct.filter_runner** %2, align 8
  %11 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.filter_runner*, %struct.filter_runner** %2, align 8
  %16 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %15, i32 0, i32 3
  %17 = load %struct.mp_filter**, %struct.mp_filter*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %17, i64 %19
  %21 = load %struct.mp_filter*, %struct.mp_filter** %20, align 8
  store %struct.mp_filter* %21, %struct.mp_filter** %4, align 8
  %22 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %23 = call i32 @add_pending(%struct.mp_filter* %22)
  %24 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %25 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.filter_runner*, %struct.filter_runner** %2, align 8
  %33 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.filter_runner*, %struct.filter_runner** %2, align 8
  %35 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.filter_runner*, %struct.filter_runner** %2, align 8
  %37 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %36, i32 0, i32 2
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @add_pending(%struct.mp_filter*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
