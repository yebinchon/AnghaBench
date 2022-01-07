; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_list.c_get_exported_devices.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip_list.c_get_exported_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_devlist_reply = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usbip_usb_device = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usbip_usb_interface = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OP_REP_DEVLIST = common dso_local global i32 0, align 4
@OP_REQ_DEVLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"usbip_net_send_op_common failed\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Exported Device List Request failed - %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"usbip_net_recv_op_devlist failed\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"exportable devices: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"no exportable devices found on %s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Exportable USB devices\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"======================\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" - %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"usbip_net_recv failed: usbip_usb_device[%d]\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%11s: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"usbip_net_recv failed: usbip_usb_intf[%d]\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%11s: %2d - %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_exported_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_exported_devices(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca %struct.op_devlist_reply, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usbip_usb_device, align 8
  %11 = alloca %struct.usbip_usb_interface, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @OP_REP_DEVLIST, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @OP_REQ_DEVLIST, align 4
  %19 = call i32 @usbip_net_send_op_common(i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %137

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @usbip_net_recv_op_common(i32 %25, i32* %9, i32* %15)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @usbip_op_common_status_string(i32 %30)
  %32 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %3, align 4
  br label %137

33:                                               ; preds = %24
  %34 = bitcast %struct.op_devlist_reply* %8 to %struct.usbip_usb_interface*
  %35 = call i32 @memset(%struct.usbip_usb_interface* %34, i32 0, i32 64)
  %36 = load i32, i32* %5, align 4
  %37 = bitcast %struct.op_devlist_reply* %8 to %struct.usbip_usb_interface*
  %38 = call i32 @usbip_net_recv(i32 %36, %struct.usbip_usb_interface* %37, i32 64)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %137

43:                                               ; preds = %33
  %44 = bitcast %struct.op_devlist_reply* %8 to %struct.usbip_usb_interface*
  %45 = call i32 @PACK_OP_DEVLIST_REPLY(i32 0, %struct.usbip_usb_interface* %44)
  %46 = getelementptr inbounds %struct.op_devlist_reply, %struct.op_devlist_reply* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = getelementptr inbounds %struct.op_devlist_reply, %struct.op_devlist_reply* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %53)
  store i32 0, i32* %3, align 4
  br label %137

55:                                               ; preds = %43
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %133, %55
  %61 = load i32, i32* %12, align 4
  %62 = getelementptr inbounds %struct.op_devlist_reply, %struct.op_devlist_reply* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %136

65:                                               ; preds = %60
  %66 = bitcast %struct.usbip_usb_device* %10 to %struct.usbip_usb_interface*
  %67 = call i32 @memset(%struct.usbip_usb_interface* %66, i32 0, i32 64)
  %68 = load i32, i32* %5, align 4
  %69 = bitcast %struct.usbip_usb_device* %10 to %struct.usbip_usb_interface*
  %70 = call i32 @usbip_net_recv(i32 %68, %struct.usbip_usb_interface* %69, i32 64)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  store i32 -1, i32* %3, align 4
  br label %137

76:                                               ; preds = %65
  %77 = bitcast %struct.usbip_usb_device* %10 to %struct.usbip_usb_interface*
  %78 = call i32 @usbip_net_pack_usb_device(i32 0, %struct.usbip_usb_interface* %77)
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %80 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usbip_names_get_product(i8* %79, i32 100, i32 %81, i32 %83)
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %86 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @usbip_names_get_class(i8* %85, i32 100, i32 %87, i32 %89, i32 %91)
  %93 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %94, i8* %95)
  %97 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* %98)
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8* %100)
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %128, %76
  %103 = load i32, i32* %14, align 4
  %104 = getelementptr inbounds %struct.usbip_usb_device, %struct.usbip_usb_device* %10, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @usbip_net_recv(i32 %108, %struct.usbip_usb_interface* %11, i32 64)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %113)
  store i32 -1, i32* %3, align 4
  br label %137

115:                                              ; preds = %107
  %116 = call i32 @usbip_net_pack_usb_interface(i32 0, %struct.usbip_usb_interface* %11)
  %117 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %118 = getelementptr inbounds %struct.usbip_usb_interface, %struct.usbip_usb_interface* %11, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.usbip_usb_interface, %struct.usbip_usb_interface* %11, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.usbip_usb_interface, %struct.usbip_usb_interface* %11, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @usbip_names_get_class(i8* %117, i32 100, i32 %119, i32 %121, i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i32 %125, i8* %126)
  br label %128

128:                                              ; preds = %115
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %102

131:                                              ; preds = %102
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %12, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %60

136:                                              ; preds = %60
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %112, %73, %52, %41, %29, %22
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @usbip_net_send_op_common(i32, i32, i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @usbip_net_recv_op_common(i32, i32*, i32*) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @usbip_op_common_status_string(i32) #1

declare dso_local i32 @memset(%struct.usbip_usb_interface*, i32, i32) #1

declare dso_local i32 @usbip_net_recv(i32, %struct.usbip_usb_interface*, i32) #1

declare dso_local i32 @PACK_OP_DEVLIST_REPLY(i32, %struct.usbip_usb_interface*) #1

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @usbip_net_pack_usb_device(i32, %struct.usbip_usb_interface*) #1

declare dso_local i32 @usbip_names_get_product(i8*, i32, i32, i32) #1

declare dso_local i32 @usbip_names_get_class(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usbip_net_pack_usb_interface(i32, %struct.usbip_usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
