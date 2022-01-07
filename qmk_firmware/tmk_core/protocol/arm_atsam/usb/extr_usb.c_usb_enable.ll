; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_enable.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { %struct.TYPE_6__, %struct.usb_module* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@USB_CTRLA_ENABLE = common dso_local global i32 0, align 4
@USB_SYNCBUSY_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_enable(%struct.usb_module* %0) #0 {
  %2 = alloca %struct.usb_module*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %2, align 8
  %3 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %4 = call i32 @Assert(%struct.usb_module* %3)
  %5 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %6 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %5, i32 0, i32 1
  %7 = load %struct.usb_module*, %struct.usb_module** %6, align 8
  %8 = call i32 @Assert(%struct.usb_module* %7)
  %9 = load i32, i32* @USB_CTRLA_ENABLE, align 4
  %10 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %11 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %10, i32 0, i32 1
  %12 = load %struct.usb_module*, %struct.usb_module** %11, align 8
  %13 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %9
  store i32 %17, i32* %15, align 8
  br label %18

18:                                               ; preds = %28, %1
  %19 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %20 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %19, i32 0, i32 1
  %21 = load %struct.usb_module*, %struct.usb_module** %20, align 8
  %22 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_SYNCBUSY_ENABLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %18

29:                                               ; preds = %18
  ret void
}

declare dso_local i32 @Assert(%struct.usb_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
