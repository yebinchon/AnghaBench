; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"ftl_stream_start\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bf\00", align 1
@connect_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ftl_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftl_stream_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ftl_stream*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ftl_stream*
  store %struct.ftl_stream* %8, %struct.ftl_stream** %4, align 8
  %9 = call i32 @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %11 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32* @obs_output_get_video_encoder(i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @obs_encoder_get_settings(i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @obs_data_set_int(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @obs_data_release(i32* %18)
  %20 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %21 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @obs_output_can_begin_data_capture(i32 %22, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

26:                                               ; preds = %1
  %27 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %28 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @obs_output_initialize_encoders(i32 %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %46

33:                                               ; preds = %26
  %34 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %35 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %37 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %36, i32 0, i32 1
  %38 = call i32 @os_atomic_set_bool(i32* %37, i32 1)
  %39 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %40 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %39, i32 0, i32 0
  %41 = load i32, i32* @connect_thread, align 4
  %42 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %43 = call i64 @pthread_create(i32* %40, i32* null, i32 %41, %struct.ftl_stream* %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %33, %32, %25
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @info(i8*) #1

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

declare dso_local i32* @obs_encoder_get_settings(i32*) #1

declare dso_local i32 @obs_data_set_int(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @obs_output_can_begin_data_capture(i32, i32) #1

declare dso_local i32 @obs_output_initialize_encoders(i32, i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.ftl_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
