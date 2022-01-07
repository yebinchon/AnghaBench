; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.h_usb_get_state_machine_status.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.h_usb_get_state_machine_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { %struct.TYPE_4__, %struct.usb_module* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_module*)* @usb_get_state_machine_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_get_state_machine_status(%struct.usb_module* %0) #0 {
  %2 = alloca %struct.usb_module*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %2, align 8
  %3 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %4 = call i32 @Assert(%struct.usb_module* %3)
  %5 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %6 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %5, i32 0, i32 1
  %7 = load %struct.usb_module*, %struct.usb_module** %6, align 8
  %8 = call i32 @Assert(%struct.usb_module* %7)
  %9 = load %struct.usb_module*, %struct.usb_module** %2, align 8
  %10 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %9, i32 0, i32 1
  %11 = load %struct.usb_module*, %struct.usb_module** %10, align 8
  %12 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  ret i32 %15
}

declare dso_local i32 @Assert(%struct.usb_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
