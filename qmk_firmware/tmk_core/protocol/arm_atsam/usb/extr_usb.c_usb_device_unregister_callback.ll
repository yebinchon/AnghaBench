; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_device_unregister_callback.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_device_unregister_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { i32, i32** }

@_usb_device_irq_bits = common dso_local global i32* null, align 8
@STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_device_unregister_callback(%struct.usb_module* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_module*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_module* %0, %struct.usb_module** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_module*, %struct.usb_module** %3, align 8
  %6 = call i32 @Assert(%struct.usb_module* %5)
  %7 = load %struct.usb_module*, %struct.usb_module** %3, align 8
  %8 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32*, i32** %9, i64 %11
  store i32* null, i32** %12, align 8
  %13 = load i32*, i32** @_usb_device_irq_bits, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.usb_module*, %struct.usb_module** %3, align 8
  %20 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* @STATUS_OK, align 4
  ret i32 %23
}

declare dso_local i32 @Assert(%struct.usb_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
