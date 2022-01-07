; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_network.c_usbip_net_recv_op_common.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_network.c_usbip_net_recv_op_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_common = type { i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"usbip_net_recv failed: %d\00", align 1
@USBIP_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"USBIP Kernel and tool version mismatch: %d %d:\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unexpected pdu %#0x for %#0x\00", align 1
@ST_ERROR = common dso_local global i32 0, align 4
@ST_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"request failed at peer: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbip_net_recv_op_common(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.op_common, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 @memset(%struct.op_common* %8, i32 0, i32 16)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @usbip_net_recv(i32 %11, %struct.op_common* %8, i32 16)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %64

18:                                               ; preds = %3
  %19 = call i32 @PACK_OP_COMMON(i32 0, %struct.op_common* %8)
  %20 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USBIP_VERSION, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USBIP_VERSION, align 8
  %28 = call i32 @err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %26, i64 %27)
  br label %64

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %33 [
    i32 128, label %32
  ]

32:                                               ; preds = %29
  br label %48

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load i32, i32* @ST_ERROR, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %64

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %32
  %49 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ST_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %64

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.op_common, %struct.op_common* %8, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %65

64:                                               ; preds = %56, %39, %24, %15
  store i32 -1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @memset(%struct.op_common*, i32, i32) #1

declare dso_local i32 @usbip_net_recv(i32, %struct.op_common*, i32) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

declare dso_local i32 @PACK_OP_COMMON(i32, %struct.op_common*) #1

declare dso_local i32 @err(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
