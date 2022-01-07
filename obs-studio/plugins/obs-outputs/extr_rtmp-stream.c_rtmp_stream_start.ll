; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, i32, i32 }

@connect_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rtmp_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_stream_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtmp_stream*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %6, %struct.rtmp_stream** %4, align 8
  %7 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %8 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @obs_output_can_begin_data_capture(i32 %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %15 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @obs_output_initialize_encoders(i32 %16, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %31

20:                                               ; preds = %13
  %21 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %22 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %21, i32 0, i32 1
  %23 = call i32 @os_atomic_set_bool(i32* %22, i32 1)
  %24 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %25 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %24, i32 0, i32 0
  %26 = load i32, i32* @connect_thread, align 4
  %27 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %28 = call i64 @pthread_create(i32* %25, i32* null, i32 %26, %struct.rtmp_stream* %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %20, %19, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @obs_output_can_begin_data_capture(i32, i32) #1

declare dso_local i32 @obs_output_initialize_encoders(i32, i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.rtmp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
