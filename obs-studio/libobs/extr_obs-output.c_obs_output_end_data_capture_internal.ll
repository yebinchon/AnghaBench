; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_end_data_capture_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_end_data_capture_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"obs_output_end_data_capture\00", align 1
@OBS_OUTPUT_SUCCESS = common dso_local global i8* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to create end_data_capture_thread for output '%s'!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32)* @obs_output_end_data_capture_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_output_end_data_capture_internal(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = call i32 @obs_output_valid(%struct.TYPE_15__* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %102

10:                                               ; preds = %2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = call i32 @active(%struct.TYPE_15__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = call i32 @data_active(%struct.TYPE_15__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = call i32 @signal_stop(%struct.TYPE_15__* %22)
  %24 = load i8*, i8** @OBS_OUTPUT_SUCCESS, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @os_event_signal(i32 %29)
  br label %31

31:                                               ; preds = %21, %18
  br label %102

32:                                               ; preds = %14
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = call i64 @delay_active(%struct.TYPE_15__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 9
  %39 = call i32 @os_atomic_set_bool(i32* %38, i32 0)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 8
  %42 = call i32 @os_atomic_load_long(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 7
  %47 = call i32 @os_atomic_set_bool(i32* %46, i32 0)
  br label %53

48:                                               ; preds = %36
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @os_event_signal(i32 %51)
  br label %102

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 5
  %57 = call i32 @os_atomic_set_bool(i32* %56, i32 0)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = call i32 @log_frame_info(%struct.TYPE_15__* %63)
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = call i64 @data_capture_ending(%struct.TYPE_15__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pthread_join(i32 %72, i32* null)
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = call i32 @os_atomic_set_bool(i32* %76, i32 1)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = call i32 @pthread_create(i32* %79, i32* null, i32 (%struct.TYPE_15__*)* @end_data_capture_thread, %struct.TYPE_15__* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load i32, i32* @LOG_WARNING, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @blog(i32 %85, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = call i32 @end_data_capture_thread(%struct.TYPE_15__* %91)
  br label %93

93:                                               ; preds = %84, %74
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = call i32 @signal_stop(%struct.TYPE_15__* %97)
  %99 = load i8*, i8** @OBS_OUTPUT_SUCCESS, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %9, %31, %48, %96, %93
  ret void
}

declare dso_local i32 @obs_output_valid(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @active(%struct.TYPE_15__*) #1

declare dso_local i32 @data_active(%struct.TYPE_15__*) #1

declare dso_local i32 @signal_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i64 @delay_active(%struct.TYPE_15__*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @os_atomic_load_long(i32*) #1

declare dso_local i32 @log_frame_info(%struct.TYPE_15__*) #1

declare dso_local i64 @data_capture_ending(%struct.TYPE_15__*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32 (%struct.TYPE_15__*)*, %struct.TYPE_15__*) #1

declare dso_local i32 @end_data_capture_thread(%struct.TYPE_15__*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
