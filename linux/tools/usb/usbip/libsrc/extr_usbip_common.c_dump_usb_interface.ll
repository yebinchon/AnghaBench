; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_common.c_dump_usb_interface.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_common.c_dump_usb_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_usb_interface = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%-20s = %s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Interface(C/SC/P)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_usb_interface(%struct.usbip_usb_interface* %0) #0 {
  %2 = alloca %struct.usbip_usb_interface*, align 8
  %3 = alloca [100 x i8], align 16
  store %struct.usbip_usb_interface* %0, %struct.usbip_usb_interface** %2, align 8
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %5 = load %struct.usbip_usb_interface*, %struct.usbip_usb_interface** %2, align 8
  %6 = getelementptr inbounds %struct.usbip_usb_interface, %struct.usbip_usb_interface* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.usbip_usb_interface*, %struct.usbip_usb_interface** %2, align 8
  %9 = getelementptr inbounds %struct.usbip_usb_interface, %struct.usbip_usb_interface* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.usbip_usb_interface*, %struct.usbip_usb_interface** %2, align 8
  %12 = getelementptr inbounds %struct.usbip_usb_interface, %struct.usbip_usb_interface* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usbip_names_get_class(i8* %4, i32 100, i32 %7, i32 %10, i32 %13)
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %16 = call i32 @dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  ret void
}

declare dso_local i32 @usbip_names_get_class(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
