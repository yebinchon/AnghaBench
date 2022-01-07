; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/simple/device_app/extr_aio_simple.c_handle_ep0.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/simple/device_app/extr_aio_simple.c_handle_ep0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_functionfs_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to read event from ep0\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @handle_ep0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ep0(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.usb_functionfs_event, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.pollfd], align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %10 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @POLLIN, align 4
  %12 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %15 = call i32 @poll(%struct.pollfd* %14, i32 1, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %7, i64 0, i64 0
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @POLLIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @read(i32 %26, %struct.usb_functionfs_event* %5, i32 8)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %57

32:                                               ; preds = %25
  %33 = call i32 @display_event(%struct.usb_functionfs_event* %5)
  %34 = getelementptr inbounds %struct.usb_functionfs_event, %struct.usb_functionfs_event* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %55 [
    i32 128, label %36
    i32 129, label %51
    i32 130, label %53
  ]

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.usb_functionfs_event, %struct.usb_functionfs_event* %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @USB_DIR_IN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @write(i32 %45, i32* null, i32 0)
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @read(i32 %48, %struct.usb_functionfs_event* null, i32 0)
  br label %50

50:                                               ; preds = %47, %44
  br label %56

51:                                               ; preds = %32
  %52 = load i32*, i32** %4, align 8
  store i32 1, i32* %52, align 4
  br label %56

53:                                               ; preds = %32
  %54 = load i32*, i32** %4, align 8
  store i32 0, i32* %54, align 4
  br label %56

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %53, %51, %50
  br label %57

57:                                               ; preds = %30, %56, %18, %2
  ret void
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, %struct.usb_functionfs_event*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @display_event(%struct.usb_functionfs_event*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
