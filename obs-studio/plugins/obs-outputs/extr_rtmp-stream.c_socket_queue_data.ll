; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_socket_queue_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_socket_queue_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i64, i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*)* @socket_queue_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_queue_data(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rtmp_stream*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @UNUSED_PARAMETER(i32* %11)
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %14, %struct.rtmp_stream** %10, align 8
  br label %15

15:                                               ; preds = %45, %4
  %16 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %17 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %16, i32 0, i32 6
  %18 = call i32 @RTMP_IsConnected(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %71

21:                                               ; preds = %15
  %22 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %23 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %22, i32 0, i32 4
  %24 = call i32 @pthread_mutex_lock(i32* %23)
  %25 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %26 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %32 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %21
  %36 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %37 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %36, i32 0, i32 4
  %38 = call i32 @pthread_mutex_unlock(i32* %37)
  %39 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %40 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @os_event_wait(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %71

45:                                               ; preds = %35
  br label %15

46:                                               ; preds = %21
  %47 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %48 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %51 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @memcpy(i64 %53, i8* %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %60 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %64 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %63, i32 0, i32 4
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  %66 = load %struct.rtmp_stream*, %struct.rtmp_stream** %10, align 8
  %67 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @os_event_signal(i32 %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %46, %44, %20
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @RTMP_IsConnected(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @os_event_wait(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @os_event_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
