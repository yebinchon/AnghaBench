; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/trelay/src/extr_trelay.c_trelay_handle_frame.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/trelay/src/extr_trelay.c_trelay_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }

@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trelay_handle_frame(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %6 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net_device* @rcu_dereference(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %17, i32* %2, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ETH_P_PAE, align 4
  %23 = call i64 @htons(i32 %22)
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %26, i32* %2, align 4
  br label %39

27:                                               ; preds = %18
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @ETH_HLEN, align 4
  %30 = call i32 @skb_push(%struct.sk_buff* %28, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @skb_forward_csum(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i32 @dev_queue_xmit(%struct.sk_buff* %36)
  %38 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %27, %25, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
