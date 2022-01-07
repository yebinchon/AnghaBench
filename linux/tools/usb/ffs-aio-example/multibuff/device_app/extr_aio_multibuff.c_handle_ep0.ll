; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/multibuff/device_app/extr_aio_multibuff.c_handle_ep0.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/multibuff/device_app/extr_aio_multibuff.c_handle_ep0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_functionfs_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unable to read event from ep0\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @handle_ep0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ep0(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_functionfs_event, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @read(i32 %7, %struct.usb_functionfs_event* %6, i32 8)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %37

13:                                               ; preds = %2
  %14 = call i32 @display_event(%struct.usb_functionfs_event* %6)
  %15 = getelementptr inbounds %struct.usb_functionfs_event, %struct.usb_functionfs_event* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %36 [
    i32 128, label %17
    i32 129, label %32
    i32 130, label %34
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_functionfs_event, %struct.usb_functionfs_event* %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @USB_DIR_IN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @write(i32 %26, i32* null, i32 0)
  br label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @read(i32 %29, %struct.usb_functionfs_event* null, i32 0)
  br label %31

31:                                               ; preds = %28, %25
  br label %37

32:                                               ; preds = %13
  %33 = load i32*, i32** %4, align 8
  store i32 1, i32* %33, align 4
  br label %37

34:                                               ; preds = %13
  %35 = load i32*, i32** %4, align 8
  store i32 0, i32* %35, align 4
  br label %37

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %11, %36, %34, %32, %31
  ret void
}

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
