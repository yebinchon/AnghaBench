; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_attach.c_query_import_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_attach.c_query_import_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_import_request = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.op_import_reply = type { %struct.TYPE_2__, i32 }

@OP_REP_IMPORT = common dso_local global i32 0, align 4
@OP_REQ_IMPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"send op_common\00", align 1
@SYSFS_BUS_ID_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"send op_import_request\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Attach Request for %s failed - %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"recv op_import_reply\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"recv different busid %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @query_import_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_import_device(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.op_import_request, align 4
  %8 = alloca %struct.op_import_reply, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @OP_REP_IMPORT, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 @memset(%struct.op_import_request* %7, i32 0, i32 8)
  %13 = bitcast %struct.op_import_reply* %8 to %struct.op_import_request*
  %14 = call i32 @memset(%struct.op_import_request* %13, i32 0, i32 8)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @OP_REQ_IMPORT, align 4
  %17 = call i32 @usbip_net_send_op_common(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.op_import_request, %struct.op_import_request* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* @SYSFS_BUS_ID_SIZE, align 8
  %27 = sub nsw i64 %26, 1
  %28 = call i32 @strncpy(i32 %24, i8* %25, i64 %27)
  %29 = call i32 @PACK_OP_IMPORT_REQUEST(i32 0, %struct.op_import_request* %7)
  %30 = load i32, i32* %4, align 4
  %31 = bitcast %struct.op_import_request* %7 to i8*
  %32 = call i32 @usbip_net_send(i32 %30, i8* %31, i32 8)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @usbip_net_recv_op_common(i32 %38, i32* %9, i32* %10)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @usbip_op_common_status_string(i32 %44)
  %46 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %45)
  store i32 -1, i32* %3, align 4
  br label %74

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  %49 = bitcast %struct.op_import_reply* %8 to i8*
  %50 = call i32 @usbip_net_recv(i32 %48, i8* %49, i32 8)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %74

55:                                               ; preds = %47
  %56 = bitcast %struct.op_import_reply* %8 to %struct.op_import_request*
  %57 = call i32 @PACK_OP_IMPORT_REPLY(i32 0, %struct.op_import_request* %56)
  %58 = getelementptr inbounds %struct.op_import_reply, %struct.op_import_reply* %8, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* @SYSFS_BUS_ID_SIZE, align 8
  %63 = call i64 @strncmp(i32 %60, i8* %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.op_import_reply, %struct.op_import_reply* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  store i32 -1, i32* %3, align 4
  br label %74

70:                                               ; preds = %55
  %71 = load i32, i32* %4, align 4
  %72 = getelementptr inbounds %struct.op_import_reply, %struct.op_import_reply* %8, i32 0, i32 0
  %73 = call i32 @import_device(i32 %71, %struct.TYPE_2__* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %65, %53, %42, %35, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @memset(%struct.op_import_request*, i32, i32) #1

declare dso_local i32 @usbip_net_send_op_common(i32, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @PACK_OP_IMPORT_REQUEST(i32, %struct.op_import_request*) #1

declare dso_local i32 @usbip_net_send(i32, i8*, i32) #1

declare dso_local i32 @usbip_net_recv_op_common(i32, i32*, i32*) #1

declare dso_local i32 @usbip_op_common_status_string(i32) #1

declare dso_local i32 @usbip_net_recv(i32, i8*, i32) #1

declare dso_local i32 @PACK_OP_IMPORT_REPLY(i32, %struct.op_import_request*) #1

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local i32 @import_device(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
