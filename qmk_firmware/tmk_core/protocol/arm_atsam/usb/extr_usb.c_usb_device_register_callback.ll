; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_device_register_callback.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb.c_usb_device_register_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_module = type { i32, %struct.usb_module** }

@_usb_device_irq_bits = common dso_local global i32* null, align 8
@STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_device_register_callback(%struct.usb_module* %0, i32 %1, %struct.usb_module* %2) #0 {
  %4 = alloca %struct.usb_module*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_module*, align 8
  store %struct.usb_module* %0, %struct.usb_module** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.usb_module* %2, %struct.usb_module** %6, align 8
  %7 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %8 = call i32 @Assert(%struct.usb_module* %7)
  %9 = load %struct.usb_module*, %struct.usb_module** %6, align 8
  %10 = call i32 @Assert(%struct.usb_module* %9)
  %11 = load %struct.usb_module*, %struct.usb_module** %6, align 8
  %12 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %13 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %12, i32 0, i32 1
  %14 = load %struct.usb_module**, %struct.usb_module*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.usb_module*, %struct.usb_module** %14, i64 %16
  store %struct.usb_module* %11, %struct.usb_module** %17, align 8
  %18 = load i32*, i32** @_usb_device_irq_bits, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usb_module*, %struct.usb_module** %4, align 8
  %24 = getelementptr inbounds %struct.usb_module, %struct.usb_module* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @STATUS_OK, align 4
  ret i32 %27
}

declare dso_local i32 @Assert(%struct.usb_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
