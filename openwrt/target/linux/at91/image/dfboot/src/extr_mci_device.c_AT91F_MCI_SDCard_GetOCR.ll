; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SDCard_GetOCR.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_SDCard_GetOCR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@AT91C_CARD_POWER_UP_BUSY = common dso_local global i32 0, align 4
@AT91C_SDCARD_APP_OP_COND_CMD = common dso_local global i32 0, align 4
@AT91C_MMC_HOST_VOLTAGE_RANGE = common dso_local global i32 0, align 4
@AT91C_CMD_SEND_OK = common dso_local global i32 0, align 4
@AT91C_INIT_ERROR = common dso_local global i32 0, align 4
@AT91C_BASE_MCI = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_MCI_SDCard_GetOCR(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AT91C_CARD_POWER_UP_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @AT91C_CARD_POWER_UP_BUSY, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = load i32, i32* @AT91C_SDCARD_APP_OP_COND_CMD, align 4
  %18 = load i32, i32* @AT91C_MMC_HOST_VOLTAGE_RANGE, align 4
  %19 = call i32 @AT91F_MCI_SDCard_SendAppCommand(%struct.TYPE_7__* %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @AT91C_CMD_SEND_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @AT91C_INIT_ERROR, align 4
  store i32 %24, i32* %2, align 4
  br label %37

25:                                               ; preds = %15
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AT91C_BASE_MCI, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AT91C_BASE_MCI, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %23
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @AT91F_MCI_SDCard_SendAppCommand(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
