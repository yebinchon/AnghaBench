; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_signal_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_signal_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"obs_output_signal_stop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_output_signal_stop(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = call i32 @obs_output_valid(%struct.TYPE_9__* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %41

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @can_reconnect(%struct.TYPE_9__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i64 @delay_active(%struct.TYPE_9__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = call i32 @os_atomic_inc_long(i32* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i32 @obs_output_end_data_capture_internal(%struct.TYPE_9__* %26, i32 0)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @output_reconnect(%struct.TYPE_9__* %28)
  br label %41

30:                                               ; preds = %9
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i64 @delay_active(%struct.TYPE_9__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = call i32 @os_atomic_set_bool(i32* %36, i32 0)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = call i32 @obs_output_end_data_capture(%struct.TYPE_9__* %39)
  br label %41

41:                                               ; preds = %8, %38, %25
  ret void
}

declare dso_local i32 @obs_output_valid(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @can_reconnect(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @delay_active(%struct.TYPE_9__*) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

declare dso_local i32 @obs_output_end_data_capture_internal(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @output_reconnect(%struct.TYPE_9__*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @obs_output_end_data_capture(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
