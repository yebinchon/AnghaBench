; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_process_can_rx.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_process_can_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panda_dev_priv = type { i32 }
%struct.panda_usb_can_msg = type { i32, i32, i32 }
%struct.can_frame = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.panda_inf_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Got something on an unused interface %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Recv bus %d\0A\00", align 1
@PANDA_CAN_EXTENDED = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PANDA_DLC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panda_dev_priv*, %struct.panda_usb_can_msg*)* @panda_usb_process_can_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panda_usb_process_can_rx(%struct.panda_dev_priv* %0, %struct.panda_usb_can_msg* %1) #0 {
  %3 = alloca %struct.panda_dev_priv*, align 8
  %4 = alloca %struct.panda_usb_can_msg*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.panda_inf_priv*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  store %struct.panda_dev_priv* %0, %struct.panda_dev_priv** %3, align 8
  store %struct.panda_usb_can_msg* %1, %struct.panda_usb_can_msg** %4, align 8
  %10 = load %struct.panda_usb_can_msg*, %struct.panda_usb_can_msg** %4, align 8
  %11 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %7, align 4
  %15 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.panda_inf_priv* @panda_get_inf_from_bus_id(%struct.panda_dev_priv* %15, i32 %16)
  store %struct.panda_inf_priv* %17, %struct.panda_inf_priv** %8, align 8
  %18 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %8, align 8
  %19 = icmp ne %struct.panda_inf_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %101

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %8, align 8
  %27 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.net_device_stats* %29, %struct.net_device_stats** %9, align 8
  %30 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %8, align 8
  %31 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i32 @netif_device_present(%struct.TYPE_3__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %101

36:                                               ; preds = %23
  %37 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %8, align 8
  %38 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_3__* %39, %struct.can_frame** %5)
  store %struct.sk_buff* %40, %struct.sk_buff** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %101

44:                                               ; preds = %36
  %45 = load %struct.panda_usb_can_msg*, %struct.panda_usb_can_msg** %4, align 8
  %46 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PANDA_CAN_EXTENDED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.panda_usb_can_msg*, %struct.panda_usb_can_msg** %4, align 8
  %53 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 3
  %56 = load i32, i32* @CAN_EFF_FLAG, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %59 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %67

60:                                               ; preds = %44
  %61 = load %struct.panda_usb_can_msg*, %struct.panda_usb_can_msg** %4, align 8
  %62 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 21
  %65 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %66 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %51
  %68 = load %struct.panda_usb_can_msg*, %struct.panda_usb_can_msg** %4, align 8
  %69 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PANDA_DLC_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i64 @get_can_dlc(i32 %72)
  %74 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %75 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %77 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.panda_usb_can_msg*, %struct.panda_usb_can_msg** %4, align 8
  %80 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %83 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @memcpy(i32 %78, i32 %81, i64 %84)
  %86 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %91 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %94 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @netif_rx(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %67, %43, %35, %20
  ret void
}

declare dso_local %struct.panda_inf_priv* @panda_get_inf_from_bus_id(%struct.panda_dev_priv*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @netif_device_present(%struct.TYPE_3__*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_3__*, %struct.can_frame**) #1

declare dso_local i64 @get_can_dlc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
