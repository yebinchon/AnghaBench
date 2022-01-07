; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_recv_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_recv_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not receive opcode: %#0x\00", align 1
@driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not refresh device list: %d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"received request: %#0x(%d)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"received an unknown opcode: %#0x\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"request %#0x(%d): complete\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"request %#0x(%d): failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @recv_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_pdu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @OP_UNSPEC, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @usbip_net_recv_op_common(i32 %8, i32* %4, i32* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* @driver, align 4
  %17 = call i32 @usbip_refresh_device_list(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 -1, i32* %2, align 4
  br label %51

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %35 [
    i32 129, label %28
    i32 128, label %31
    i32 130, label %34
    i32 131, label %34
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @recv_request_devlist(i32 %29)
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @recv_request_import(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %38

34:                                               ; preds = %23, %23
  br label %35

35:                                               ; preds = %23, %34
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %31, %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %43)
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %20, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @usbip_net_recv_op_common(i32, i32*, i32*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @usbip_refresh_device_list(i32) #1

declare dso_local i32 @info(i8*, i32, i32) #1

declare dso_local i32 @recv_request_devlist(i32) #1

declare dso_local i32 @recv_request_import(i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
