; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_main.c_handle_eth.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_main.c_handle_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PHY_LINK_CHANGED = common dso_local global i32 0, align 4
@PHY_LINK_CONNECTED = common dso_local global i32 0, align 4
@PHY_LINK_SPEED100 = common dso_local global i32 0, align 4
@LPC_ETHERNET = common dso_local global i32 0, align 4
@PHY_LINK_FULLDUPLX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Link up\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Link down\0D\0A\00", align 1
@DHCP_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_eth(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca i32, align 4
  store %struct.netif* %0, %struct.netif** %2, align 8
  %4 = call i32 (...) @lpcPHYStsPoll()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PHY_LINK_CHANGED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PHY_LINK_CONNECTED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = call i32 @Board_LED_Set(i32 0, i32 1)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PHY_LINK_SPEED100, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @LPC_ETHERNET, align 4
  %22 = call i32 @Chip_ENET_Set100Mbps(i32 %21)
  br label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @LPC_ETHERNET, align 4
  %25 = call i32 @Chip_ENET_Set10Mbps(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @PHY_LINK_FULLDUPLX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @LPC_ETHERNET, align 4
  %33 = call i32 @Chip_ENET_SetFullDuplex(i32 %32)
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @LPC_ETHERNET, align 4
  %36 = call i32 @Chip_ENET_SetHalfDuplex(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.netif*, %struct.netif** %2, align 8
  %39 = call i32 @netif_set_link_up(%struct.netif* %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %46

41:                                               ; preds = %9
  %42 = call i32 @Board_LED_Set(i32 0, i32 0)
  %43 = load %struct.netif*, %struct.netif** %2, align 8
  %44 = call i32 @netif_set_link_down(%struct.netif* %43)
  %45 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.netif*, %struct.netif** %2, align 8
  %49 = getelementptr inbounds %struct.netif, %struct.netif* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DHCP_BOUND, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @Board_LED_Set(i32 1, i32 %55)
  %57 = load %struct.netif*, %struct.netif** %2, align 8
  %58 = call i32 @lpc_enetif_input(%struct.netif* %57)
  %59 = load %struct.netif*, %struct.netif** %2, align 8
  %60 = call i32 @lpc_tx_reclaim(%struct.netif* %59)
  ret void
}

declare dso_local i32 @lpcPHYStsPoll(...) #1

declare dso_local i32 @Board_LED_Set(i32, i32) #1

declare dso_local i32 @Chip_ENET_Set100Mbps(i32) #1

declare dso_local i32 @Chip_ENET_Set10Mbps(i32) #1

declare dso_local i32 @Chip_ENET_SetFullDuplex(i32) #1

declare dso_local i32 @Chip_ENET_SetHalfDuplex(i32) #1

declare dso_local i32 @netif_set_link_up(%struct.netif*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @netif_set_link_down(%struct.netif*) #1

declare dso_local i32 @lpc_enetif_input(%struct.netif*) #1

declare dso_local i32 @lpc_tx_reclaim(%struct.netif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
