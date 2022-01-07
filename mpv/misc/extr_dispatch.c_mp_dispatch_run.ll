; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_run.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_dispatch.c_mp_dispatch_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_dispatch_queue = type { i32, i32 }
%struct.mp_dispatch_item = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_dispatch_run(%struct.mp_dispatch_queue* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mp_dispatch_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mp_dispatch_item, align 8
  store %struct.mp_dispatch_queue* %0, %struct.mp_dispatch_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %7, i32 0, i32 0
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %7, i32 0, i32 1
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %7, i32 0, i32 2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %14 = call i32 @mp_dispatch_append(%struct.mp_dispatch_queue* %13, %struct.mp_dispatch_item* %7)
  %15 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %16 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %15, i32 0, i32 0
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  br label %18

18:                                               ; preds = %23, %3
  %19 = getelementptr inbounds %struct.mp_dispatch_item, %struct.mp_dispatch_item* %7, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %25 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %24, i32 0, i32 1
  %26 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %27 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %26, i32 0, i32 0
  %28 = call i32 @pthread_cond_wait(i32* %25, i32* %27)
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.mp_dispatch_queue*, %struct.mp_dispatch_queue** %4, align 8
  %31 = getelementptr inbounds %struct.mp_dispatch_queue, %struct.mp_dispatch_queue* %30, i32 0, i32 0
  %32 = call i32 @pthread_mutex_unlock(i32* %31)
  ret void
}

declare dso_local i32 @mp_dispatch_append(%struct.mp_dispatch_queue*, %struct.mp_dispatch_item*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
