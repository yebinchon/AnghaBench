; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_send_event.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mp_client_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.mp_client_api* }
%struct.mp_client_api = type { i32 }
%struct.mpv_event = type { i32, i8*, i32 }
%struct.mpv_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_client_send_event(%struct.MPContext* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.MPContext*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mp_client_api*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mpv_event, align 8
  %15 = alloca %struct.mpv_handle*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @mp_client_broadcast_event(%struct.MPContext* %19, i32 %20, i8* %21)
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @talloc_free(i8* %23)
  store i32 0, i32* %6, align 4
  br label %54

25:                                               ; preds = %5
  %26 = load %struct.MPContext*, %struct.MPContext** %7, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 0
  %28 = load %struct.mp_client_api*, %struct.mp_client_api** %27, align 8
  store %struct.mp_client_api* %28, %struct.mp_client_api** %12, align 8
  store i32 0, i32* %13, align 4
  %29 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %14, i32 0, i32 0
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %14, i32 0, i32 1
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds %struct.mpv_event, %struct.mpv_event* %14, i32 0, i32 2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %33, align 8
  %35 = load %struct.mp_client_api*, %struct.mp_client_api** %12, align 8
  %36 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %35, i32 0, i32 0
  %37 = call i32 @pthread_mutex_lock(i32* %36)
  %38 = load %struct.mp_client_api*, %struct.mp_client_api** %12, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call %struct.mpv_handle* @find_client(%struct.mp_client_api* %38, i8* %39)
  store %struct.mpv_handle* %40, %struct.mpv_handle** %15, align 8
  %41 = load %struct.mpv_handle*, %struct.mpv_handle** %15, align 8
  %42 = icmp ne %struct.mpv_handle* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load %struct.mpv_handle*, %struct.mpv_handle** %15, align 8
  %45 = call i32 @send_event(%struct.mpv_handle* %44, %struct.mpv_event* %14, i32 0)
  store i32 %45, i32* %13, align 4
  br label %49

46:                                               ; preds = %25
  store i32 -1, i32* %13, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @talloc_free(i8* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.mp_client_api*, %struct.mp_client_api** %12, align 8
  %51 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %50, i32 0, i32 0
  %52 = call i32 @pthread_mutex_unlock(i32* %51)
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %18
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @mp_client_broadcast_event(%struct.MPContext*, i32, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.mpv_handle* @find_client(%struct.mp_client_api*, i8*) #1

declare dso_local i32 @send_event(%struct.mpv_handle*, %struct.mpv_event*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
