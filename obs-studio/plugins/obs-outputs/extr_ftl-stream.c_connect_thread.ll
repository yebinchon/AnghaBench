; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_connect_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_connect_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ftl-stream: connect_thread\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ftl-stream: connect thread\00", align 1
@OBS_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Connection to %s failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @connect_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @connect_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ftl_stream*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ftl_stream*
  store %struct.ftl_stream* %7, %struct.ftl_stream** %4, align 8
  %8 = call i32 @os_set_thread_name(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @LOG_WARNING, align 4
  %10 = call i32 @blog(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %12 = call i32 @init_connect(%struct.ftl_stream* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @OBS_OUTPUT_SUCCESS, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %18 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @obs_output_signal_stop(i32 %19, i32 %20)
  store i8* null, i8** %2, align 8
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %24 = call i32 @try_connect(%struct.ftl_stream* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @OBS_OUTPUT_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %30 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @obs_output_signal_stop(i32 %31, i32 %32)
  %34 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %35 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %28, %22
  %41 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %42 = call i32 @stopping(%struct.ftl_stream* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %46 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pthread_detach(i32 %47)
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %51 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %50, i32 0, i32 0
  %52 = call i32 @os_atomic_set_bool(i32* %51, i32 0)
  store i8* null, i8** %2, align 8
  br label %53

53:                                               ; preds = %49, %16
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local i32 @os_set_thread_name(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @init_connect(%struct.ftl_stream*) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i32 @try_connect(%struct.ftl_stream*) #1

declare dso_local i32 @info(i8*, i32, i32) #1

declare dso_local i32 @stopping(%struct.ftl_stream*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
