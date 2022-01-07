; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_Device_Handler.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCI_Device_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@AT91C_MCI_TXBUFE = common dso_local global i32 0, align 4
@AT91C_BASE_MCI = common dso_local global %struct.TYPE_9__* null, align 8
@AT91C_PDC_TXTDIS = common dso_local global i32 0, align 4
@AT91C_BASE_PDC_MCI = common dso_local global %struct.TYPE_8__* null, align 8
@AT91C_MCI_IDLE = common dso_local global i8* null, align 8
@AT91C_MCI_RXBUFF = common dso_local global i32 0, align 4
@AT91C_PDC_RXTDIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AT91F_MCI_Device_Handler(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AT91C_MCI_TXBUFE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* @AT91C_MCI_TXBUFE, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AT91C_BASE_MCI, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @AT91C_PDC_TXTDIS, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AT91C_BASE_PDC_MCI, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i8*, i8** @AT91C_MCI_IDLE, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  br label %21

21:                                               ; preds = %9, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AT91C_MCI_RXBUFF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32, i32* @AT91C_MCI_RXBUFF, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @AT91C_BASE_MCI, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @AT91C_PDC_RXTDIS, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AT91C_BASE_PDC_MCI, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i8*, i8** @AT91C_MCI_IDLE, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  br label %38

38:                                               ; preds = %26, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
