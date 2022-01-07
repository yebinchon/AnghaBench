; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_event.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }

@FTL_STATUS_EVENT_TYPE_DISCONNECTED = common dso_local global i64 0, align 8
@RET_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Disconnected from ingest with reason: %s\00", align 1
@FTL_STATUS_EVENT_REASON_API_REQUEST = common dso_local global i64 0, align 8
@RET_BREAK = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Reconnecting to Ingest\00", align 1
@OBS_OUTPUT_DISCONNECTED = common dso_local global i32 0, align 4
@RET_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftl_stream*, %struct.TYPE_7__*)* @ftl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftl_event(%struct.ftl_stream* %0, %struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftl_stream*, align 8
  store %struct.ftl_stream* %0, %struct.ftl_stream** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FTL_STATUS_EVENT_TYPE_DISCONNECTED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @RET_CONTINUE, align 4
  store i32 %12, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ftl_status_code_to_string(i32 %17)
  %19 = call i32 @info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FTL_STATUS_EVENT_REASON_API_REQUEST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @RET_BREAK, align 4
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %13
  %29 = load i32, i32* @LOG_WARNING, align 4
  %30 = call i32 @blog(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %32 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OBS_OUTPUT_DISCONNECTED, align 4
  %35 = call i32 @obs_output_signal_stop(i32 %33, i32 %34)
  %36 = load i32, i32* @RET_EXIT, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %26, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @ftl_status_code_to_string(i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
