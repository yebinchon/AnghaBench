; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_get_config_defaults.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_get_config_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config = type { i32, i32, i64, i64 }

@USB_SPEED_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_get_config_defaults(%struct.usb_config* %0) #0 {
  %2 = alloca %struct.usb_config*, align 8
  store %struct.usb_config* %0, %struct.usb_config** %2, align 8
  %3 = load %struct.usb_config*, %struct.usb_config** %2, align 8
  %4 = call i32 @Assert(%struct.usb_config* %3)
  %5 = load %struct.usb_config*, %struct.usb_config** %2, align 8
  %6 = call i32 @Assert(%struct.usb_config* %5)
  %7 = load %struct.usb_config*, %struct.usb_config** %2, align 8
  %8 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.usb_config*, %struct.usb_config** %2, align 8
  %10 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.usb_config*, %struct.usb_config** %2, align 8
  %12 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @USB_SPEED_FULL, align 4
  %14 = load %struct.usb_config*, %struct.usb_config** %2, align 8
  %15 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local i32 @Assert(%struct.usb_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
