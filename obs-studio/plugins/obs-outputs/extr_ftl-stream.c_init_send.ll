; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_init_send.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_init_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32, i32, i32 }

@send_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to create send thread\00", align 1
@OBS_OUTPUT_ERROR = common dso_local global i32 0, align 4
@OBS_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftl_stream*)* @init_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_send(%struct.ftl_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftl_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.ftl_stream* %0, %struct.ftl_stream** %3, align 8
  %5 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %6 = call i32 @reset_semaphore(%struct.ftl_stream* %5)
  %7 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %8 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %7, i32 0, i32 2
  %9 = load i32, i32* @send_thread, align 4
  %10 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %11 = call i32 @pthread_create(i32* %8, i32* null, i32 %9, %struct.ftl_stream* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @OBS_OUTPUT_ERROR, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %19 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %18, i32 0, i32 1
  %20 = call i32 @os_atomic_set_bool(i32* %19, i32 1)
  %21 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %22 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @obs_output_begin_data_capture(i32 %23, i32 0)
  %25 = load i32, i32* @OBS_OUTPUT_SUCCESS, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @reset_semaphore(%struct.ftl_stream*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.ftl_stream*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @obs_output_begin_data_capture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
