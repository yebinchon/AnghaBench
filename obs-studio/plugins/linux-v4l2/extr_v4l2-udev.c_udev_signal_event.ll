; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_udev_signal_event.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_udev_signal_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udev_device = type { i32 }
%struct.calldata = type { i32 }

@udev_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@udev_signalhandler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"device_added\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"device_removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udev_device*)* @udev_signal_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udev_signal_event(%struct.udev_device* %0) #0 {
  %2 = alloca %struct.udev_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.calldata, align 4
  store %struct.udev_device* %0, %struct.udev_device** %2, align 8
  %6 = call i32 @pthread_mutex_lock(i32* @udev_mutex)
  %7 = load %struct.udev_device*, %struct.udev_device** %2, align 8
  %8 = call i8* @udev_device_get_devnode(%struct.udev_device* %7)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.udev_device*, %struct.udev_device** %2, align 8
  %10 = call i32 @udev_device_get_action(%struct.udev_device* %9)
  %11 = call i32 @udev_action_to_enum(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @calldata_init(%struct.calldata* %5)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @calldata_set_string(%struct.calldata* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %22 [
    i32 129, label %16
    i32 128, label %19
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @udev_signalhandler, align 4
  %18 = call i32 @signal_handler_signal(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.calldata* %5)
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @udev_signalhandler, align 4
  %21 = call i32 @signal_handler_signal(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.calldata* %5)
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %19, %16
  %24 = call i32 @calldata_free(%struct.calldata* %5)
  %25 = call i32 @pthread_mutex_unlock(i32* @udev_mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i8* @udev_device_get_devnode(%struct.udev_device*) #1

declare dso_local i32 @udev_action_to_enum(i32) #1

declare dso_local i32 @udev_device_get_action(%struct.udev_device*) #1

declare dso_local i32 @calldata_init(%struct.calldata*) #1

declare dso_local i32 @calldata_set_string(%struct.calldata*, i8*, i8*) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

declare dso_local i32 @calldata_free(%struct.calldata*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
