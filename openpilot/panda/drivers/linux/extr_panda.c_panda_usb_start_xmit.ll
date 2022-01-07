; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_start_xmit.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.panda_inf_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.can_frame = type { i32, i32, i32 }
%struct.panda_usb_ctx = type { i32 }
%struct.panda_usb_can_msg = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"Invalid CAN packet\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PANDA_CAN_TRANSMIT = common dso_local global i32 0, align 4
@PANDA_CAN_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Received data from socket. canid: %x; len: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @panda_usb_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panda_usb_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.panda_inf_priv*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca %struct.panda_usb_ctx*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.panda_usb_can_msg, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.panda_inf_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.panda_inf_priv* %14, %struct.panda_inf_priv** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.can_frame*
  store %struct.can_frame* %18, %struct.can_frame** %7, align 8
  store %struct.panda_usb_ctx* null, %struct.panda_usb_ctx** %8, align 8
  %19 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %6, align 8
  %20 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.net_device_stats* %22, %struct.net_device_stats** %9, align 8
  %23 = bitcast %struct.panda_usb_can_msg* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %6, align 8
  %25 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i64 @can_dropped_invalid_skb(%struct.net_device* %27, %struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %126

34:                                               ; preds = %2
  %35 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %6, align 8
  %36 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %37 = call %struct.panda_usb_ctx* @panda_usb_get_free_ctx(%struct.panda_inf_priv* %35, %struct.can_frame* %36)
  store %struct.panda_usb_ctx* %37, %struct.panda_usb_ctx** %8, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %6, align 8
  %40 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.panda_usb_ctx, %struct.panda_usb_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @can_put_echo_skb(%struct.sk_buff* %38, %struct.TYPE_3__* %41, i32 %44)
  %46 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CAN_EFF_FLAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %34
  %53 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %54 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 536870911
  %57 = shl i32 %56, 3
  %58 = load i32, i32* @PANDA_CAN_TRANSMIT, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PANDA_CAN_EXTENDED, align 4
  %61 = or i32 %59, %60
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %11, i32 0, i32 2
  store i8* %62, i8** %63, align 8
  br label %74

64:                                               ; preds = %34
  %65 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %66 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 2047
  %69 = shl i32 %68, 21
  %70 = load i32, i32* @PANDA_CAN_TRANSMIT, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %11, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %64, %52
  %75 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %76 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 15
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 %79, 4
  %81 = or i32 %78, %80
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %11, i32 0, i32 1
  store i8* %82, i8** %83, align 8
  %84 = getelementptr inbounds %struct.panda_usb_can_msg, %struct.panda_usb_can_msg* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %87 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %90 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i32 %85, i32 %88, i32 %91)
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %95 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %98 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @netdev_err(%struct.net_device* %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %99)
  %101 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %6, align 8
  %102 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %8, align 8
  %103 = call i32 @panda_usb_xmit(%struct.panda_inf_priv* %101, %struct.panda_usb_can_msg* %11, %struct.panda_usb_ctx* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %74
  br label %109

107:                                              ; preds = %74
  %108 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %108, i32* %3, align 4
  br label %126

109:                                              ; preds = %106
  %110 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %6, align 8
  %111 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %8, align 8
  %114 = getelementptr inbounds %struct.panda_usb_ctx, %struct.panda_usb_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @can_free_echo_skb(%struct.TYPE_3__* %112, i32 %115)
  %117 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %8, align 8
  %118 = call i32 @panda_usb_free_ctx(%struct.panda_usb_ctx* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i32 @dev_kfree_skb(%struct.sk_buff* %119)
  %121 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %122 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %109, %107, %31
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.panda_inf_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local %struct.panda_usb_ctx* @panda_usb_get_free_ctx(%struct.panda_inf_priv*, %struct.can_frame*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.TYPE_3__*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @panda_usb_xmit(%struct.panda_inf_priv*, %struct.panda_usb_can_msg*, %struct.panda_usb_ctx*) #1

declare dso_local i32 @can_free_echo_skb(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @panda_usb_free_ctx(%struct.panda_usb_ctx*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
