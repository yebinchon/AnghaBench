; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_root_set_wakeup_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_filter.c_mp_filter_root_set_wakeup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filter_runner* }
%struct.filter_runner = type { void (i8*)*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_filter_root_set_wakeup_cb(%struct.mp_filter* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.filter_runner*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.filter_runner*, %struct.filter_runner** %11, align 8
  store %struct.filter_runner* %12, %struct.filter_runner** %7, align 8
  %13 = load %struct.filter_runner*, %struct.filter_runner** %7, align 8
  %14 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load void (i8*)*, void (i8*)** %5, align 8
  %17 = load %struct.filter_runner*, %struct.filter_runner** %7, align 8
  %18 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %17, i32 0, i32 0
  store void (i8*)* %16, void (i8*)** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.filter_runner*, %struct.filter_runner** %7, align 8
  %21 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.filter_runner*, %struct.filter_runner** %7, align 8
  %23 = getelementptr inbounds %struct.filter_runner, %struct.filter_runner* %22, i32 0, i32 1
  %24 = call i32 @pthread_mutex_unlock(i32* %23)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
