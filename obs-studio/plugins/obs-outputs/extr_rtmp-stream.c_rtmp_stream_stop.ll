; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, i32, i64, i32, i64, i64, i32 }

@OBS_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @rtmp_stream_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmp_stream_stop(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtmp_stream*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %7, %struct.rtmp_stream** %5, align 8
  %8 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %9 = call i64 @stopping(%struct.rtmp_stream* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %65

15:                                               ; preds = %11, %2
  %16 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %17 = call i64 @connecting(%struct.rtmp_stream* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %21 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pthread_join(i32 %22, i32* null)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i64, i64* %4, align 8
  %26 = udiv i64 %25, 1000
  %27 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %28 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %34 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = mul i64 %35, 1000000000
  %37 = add i64 %32, %36
  %38 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %39 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %31, %24
  %41 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %42 = call i64 @active(%struct.rtmp_stream* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %46 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @os_event_signal(i32 %47)
  %49 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %50 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %55 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @os_sem_post(i32 %56)
  br label %58

58:                                               ; preds = %53, %44
  br label %65

59:                                               ; preds = %40
  %60 = load %struct.rtmp_stream*, %struct.rtmp_stream** %5, align 8
  %61 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @OBS_OUTPUT_SUCCESS, align 4
  %64 = call i32 @obs_output_signal_stop(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %14, %59, %58
  ret void
}

declare dso_local i64 @stopping(%struct.rtmp_stream*) #1

declare dso_local i64 @connecting(%struct.rtmp_stream*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i64 @active(%struct.rtmp_stream*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
