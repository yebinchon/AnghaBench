; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_disable.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { %struct.TYPE_10__, %struct.usb_module* }
%struct.TYPE_10__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@USB_DEVICE_INTENCLR_MASK = common dso_local global i32 0, align 4
@USB_DEVICE_INTFLAG_MASK = common dso_local global i32 0, align 4
@USB_CTRLA_ENABLE = common dso_local global i32 0, align 4
@USB_SYNCBUSY_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_disable(%struct.usb_module* %0) #0 {
  %2 = alloca %struct.usb_module*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %2, align 8
  %3 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %4 = call i32 @Assert(%struct.usb_module* %3)
  %5 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %6 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %5, i32 0, i32 1
  %7 = load %struct.usb_module*, %struct.usb_module** %6, align 8
  %8 = call i32 @Assert(%struct.usb_module* %7)
  %9 = load i32, i32* @USB_DEVICE_INTENCLR_MASK, align 4
  %10 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %11 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %10, i32 0, i32 1
  %12 = load %struct.usb_module*, %struct.usb_module** %11, align 8
  %13 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %9, i32* %15, align 8
  %16 = load i32, i32* @USB_DEVICE_INTFLAG_MASK, align 4
  %17 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %18 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %17, i32 0, i32 1
  %19 = load %struct.usb_module*, %struct.usb_module** %18, align 8
  %20 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 %16, i32* %22, align 4
  %23 = load i32, i32* @USB_CTRLA_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %26 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %25, i32 0, i32 1
  %27 = load %struct.usb_module*, %struct.usb_module** %26, align 8
  %28 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %24
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %43, %1
  %34 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %35 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %34, i32 0, i32 1
  %36 = load %struct.usb_module*, %struct.usb_module** %35, align 8
  %37 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_SYNCBUSY_ENABLE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %33

44:                                               ; preds = %33
  ret void
}

declare dso_local i32 @Assert(%struct.usb_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
