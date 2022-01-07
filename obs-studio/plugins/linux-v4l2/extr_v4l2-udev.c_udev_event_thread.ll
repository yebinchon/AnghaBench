; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_udev_event_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-udev.c_udev_event_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.udev = type { i32 }
%struct.udev_monitor = type { i32 }
%struct.udev_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"udev\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"video4linux\00", align 1
@udev_event = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @udev_event_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @udev_event_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.udev*, align 8
  %8 = alloca %struct.udev_monitor*, align 8
  %9 = alloca %struct.udev_device*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @UNUSED_PARAMETER(i8* %10)
  %12 = call %struct.udev* (...) @udev_new()
  store %struct.udev* %12, %struct.udev** %7, align 8
  %13 = load %struct.udev*, %struct.udev** %7, align 8
  %14 = call %struct.udev_monitor* @udev_monitor_new_from_netlink(%struct.udev* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.udev_monitor* %14, %struct.udev_monitor** %8, align 8
  %15 = load %struct.udev_monitor*, %struct.udev_monitor** %8, align 8
  %16 = call i32 @udev_monitor_filter_add_match_subsystem_devtype(%struct.udev_monitor* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %17 = load %struct.udev_monitor*, %struct.udev_monitor** %8, align 8
  %18 = call i64 @udev_monitor_enable_receiving(%struct.udev_monitor* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %56

21:                                               ; preds = %1
  %22 = load %struct.udev_monitor*, %struct.udev_monitor** %8, align 8
  %23 = call i32 @udev_monitor_get_fd(%struct.udev_monitor* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %46, %45, %39, %21
  %25 = load i32, i32* @udev_event, align 4
  %26 = call i64 @os_event_try(i32 %25)
  %27 = load i64, i64* @EAGAIN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = call i32 @FD_ZERO(i32* %5)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @FD_SET(i32 %31, i32* %5)
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i64 @select(i32 %36, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %38 = icmp sle i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %24

40:                                               ; preds = %29
  %41 = load %struct.udev_monitor*, %struct.udev_monitor** %8, align 8
  %42 = call %struct.udev_device* @udev_monitor_receive_device(%struct.udev_monitor* %41)
  store %struct.udev_device* %42, %struct.udev_device** %9, align 8
  %43 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %44 = icmp ne %struct.udev_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %24

46:                                               ; preds = %40
  %47 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %48 = call i32 @udev_signal_event(%struct.udev_device* %47)
  %49 = load %struct.udev_device*, %struct.udev_device** %9, align 8
  %50 = call i32 @udev_device_unref(%struct.udev_device* %49)
  br label %24

51:                                               ; preds = %24
  %52 = load %struct.udev_monitor*, %struct.udev_monitor** %8, align 8
  %53 = call i32 @udev_monitor_unref(%struct.udev_monitor* %52)
  %54 = load %struct.udev*, %struct.udev** %7, align 8
  %55 = call i32 @udev_unref(%struct.udev* %54)
  store i8* null, i8** %2, align 8
  br label %56

56:                                               ; preds = %51, %20
  %57 = load i8*, i8** %2, align 8
  ret i8* %57
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local %struct.udev* @udev_new(...) #1

declare dso_local %struct.udev_monitor* @udev_monitor_new_from_netlink(%struct.udev*, i8*) #1

declare dso_local i32 @udev_monitor_filter_add_match_subsystem_devtype(%struct.udev_monitor*, i8*, i32*) #1

declare dso_local i64 @udev_monitor_enable_receiving(%struct.udev_monitor*) #1

declare dso_local i32 @udev_monitor_get_fd(%struct.udev_monitor*) #1

declare dso_local i64 @os_event_try(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local %struct.udev_device* @udev_monitor_receive_device(%struct.udev_monitor*) #1

declare dso_local i32 @udev_signal_event(%struct.udev_device*) #1

declare dso_local i32 @udev_device_unref(%struct.udev_device*) #1

declare dso_local i32 @udev_monitor_unref(%struct.udev_monitor*) #1

declare dso_local i32 @udev_unref(%struct.udev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
