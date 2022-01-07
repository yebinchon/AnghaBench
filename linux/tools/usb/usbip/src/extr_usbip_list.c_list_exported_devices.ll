; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_list.c_list_exported_devices.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_list.c_list_exported_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usbip_port_string = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not connect to %s:%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"connected to %s:%s\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get device list from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @list_exported_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_exported_devices(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @usbip_port_string, align 4
  %8 = call i32 @usbip_net_tcp_connect(i8* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @usbip_port_string, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @gai_strerror(i32 %14)
  %16 = call i32 (i8*, i8*, ...) @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13, i32 %15)
  store i32 -1, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @usbip_port_string, align 4
  %20 = call i32 @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @get_exported_devices(i8* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 (i8*, i8*, ...) @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %2, align 4
  br label %32

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @close(i32 %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @usbip_net_tcp_connect(i8*, i32) #1

declare dso_local i32 @err(i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @dbg(i8*, i8*, i32) #1

declare dso_local i32 @get_exported_devices(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
