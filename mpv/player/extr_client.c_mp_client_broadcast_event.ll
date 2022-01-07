; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_broadcast_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_broadcast_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.mp_client_api* }
%struct.mp_client_api = type { i32, i32, i32* }
%struct.mpv_event = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_client_broadcast_event(%struct.MPContext* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mp_client_api*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpv_event, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 0
  %12 = load %struct.mp_client_api*, %struct.mp_client_api** %11, align 8
  store %struct.mp_client_api* %12, %struct.mp_client_api** %7, align 8
  %13 = load %struct.mp_client_api*, %struct.mp_client_api** %7, align 8
  %14 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.mp_client_api*, %struct.mp_client_api** %7, align 8
  %19 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %9, i32 0, i32 0
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %9, i32 0, i32 1
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %25, align 8
  %27 = load %struct.mp_client_api*, %struct.mp_client_api** %7, align 8
  %28 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @send_event(i32 %33, %struct.mpv_event* %9, i32 1)
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.mp_client_api*, %struct.mp_client_api** %7, align 8
  %40 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %39, i32 0, i32 1
  %41 = call i32 @pthread_mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @send_event(i32, %struct.mpv_event*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
