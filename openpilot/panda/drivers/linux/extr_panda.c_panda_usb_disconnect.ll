; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.panda_dev_priv = type { %struct.panda_inf_priv** }
%struct.panda_inf_priv = type { i32 }

@PANDA_NUM_CAN_INTERFACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"device disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @panda_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panda_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.panda_dev_priv*, align 8
  %4 = alloca %struct.panda_inf_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.panda_dev_priv* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.panda_dev_priv* %7, %struct.panda_dev_priv** %3, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call i32 @usb_set_intfdata(%struct.usb_interface* %8, i32* null)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %39, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PANDA_NUM_CAN_INTERFACES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %16 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %15, i32 0, i32 0
  %17 = load %struct.panda_inf_priv**, %struct.panda_inf_priv*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.panda_inf_priv*, %struct.panda_inf_priv** %17, i64 %19
  %21 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %20, align 8
  store %struct.panda_inf_priv* %21, %struct.panda_inf_priv** %4, align 8
  %22 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %4, align 8
  %23 = icmp ne %struct.panda_inf_priv* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %4, align 8
  %26 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @netdev_info(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %4, align 8
  %30 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @unregister_candev(i32 %31)
  %33 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %4, align 8
  %34 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free_candev(i32 %35)
  br label %38

37:                                               ; preds = %14
  br label %42

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %10

42:                                               ; preds = %37, %10
  %43 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %4, align 8
  %44 = call i32 @panda_urb_unlink(%struct.panda_inf_priv* %43)
  %45 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %46 = call i32 @kfree(%struct.panda_dev_priv* %45)
  ret void
}

declare dso_local %struct.panda_dev_priv* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @unregister_candev(i32) #1

declare dso_local i32 @free_candev(i32) #1

declare dso_local i32 @panda_urb_unlink(%struct.panda_inf_priv*) #1

declare dso_local i32 @kfree(%struct.panda_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
