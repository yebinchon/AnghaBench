; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_connect_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_connect_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"rtmp-stream: connect_thread\00", align 1
@OBS_OUTPUT_BAD_PATH = common dso_local global i32 0, align 4
@OBS_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Connection to %s failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @connect_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @connect_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtmp_stream*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %7, %struct.rtmp_stream** %4, align 8
  %8 = call i32 @os_set_thread_name(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %10 = call i32 @init_connect(%struct.rtmp_stream* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %14 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OBS_OUTPUT_BAD_PATH, align 4
  %17 = call i32 @obs_output_signal_stop(i32 %15, i32 %16)
  store i8* null, i8** %2, align 8
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %20 = call i32 @try_connect(%struct.rtmp_stream* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @OBS_OUTPUT_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %26 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @obs_output_signal_stop(i32 %27, i32 %28)
  %30 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %31 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %24, %18
  %37 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %38 = call i32 @stopping(%struct.rtmp_stream* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %42 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pthread_detach(i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %47 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %46, i32 0, i32 0
  %48 = call i32 @os_atomic_set_bool(i32* %47, i32 0)
  store i8* null, i8** %2, align 8
  br label %49

49:                                               ; preds = %45, %12
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i32 @os_set_thread_name(i8*) #1

declare dso_local i32 @init_connect(%struct.rtmp_stream*) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i32 @try_connect(%struct.rtmp_stream*) #1

declare dso_local i32 @info(i8*, i32, i32) #1

declare dso_local i32 @stopping(%struct.rtmp_stream*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
