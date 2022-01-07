; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_add_tick_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_add_tick_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tick_callback = type { void (i8*, float)*, i8* }

@obs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_add_tick_callback(void (i8*, float)* %0, i8* %1) #0 {
  %3 = alloca void (i8*, float)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tick_callback, align 8
  store void (i8*, float)* %0, void (i8*, float)** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tick_callback, %struct.tick_callback* %5, i32 0, i32 0
  %11 = load void (i8*, float)*, void (i8*, float)** %3, align 8
  store void (i8*, float)* %11, void (i8*, float)** %10, align 8
  %12 = getelementptr inbounds %struct.tick_callback, %struct.tick_callback* %5, i32 0, i32 1
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @da_insert(i32 %21, i32 0, %struct.tick_callback* %5)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @pthread_mutex_unlock(i32* %25)
  br label %27

27:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_insert(i32, i32, %struct.tick_callback*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
