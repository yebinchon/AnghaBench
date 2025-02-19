; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_set_output_enable.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_set_output_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panda_inf_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@SAFETY_ALLOUTPUT = common dso_local global i32 0, align 4
@SAFETY_NOOUTPUT = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panda_inf_priv*, i32)* @panda_set_output_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panda_set_output_enable(%struct.panda_inf_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.panda_inf_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.panda_inf_priv* %0, %struct.panda_inf_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %6 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %11 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_sndctrlpipe(i32 %14, i32 0)
  %16 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %17 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @SAFETY_ALLOUTPUT, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @SAFETY_NOOUTPUT, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %28 = call i32 @usb_control_msg(i32 %9, i32 %15, i32 220, i32 %18, i32 %26, i32 0, i32* null, i32 0, i32 %27)
  ret i32 %28
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
