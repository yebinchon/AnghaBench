; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_wait_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vo_wait_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vo_wait_frame(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  store %struct.vo_internal* %6, %struct.vo_internal** %3, align 8
  %7 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %8 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %7, i32 0, i32 0
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %12 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %17 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ true, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %24 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %23, i32 0, i32 1
  %25 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %26 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %25, i32 0, i32 0
  %27 = call i32 @pthread_cond_wait(i32* %24, i32* %26)
  br label %10

28:                                               ; preds = %20
  %29 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %30 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
