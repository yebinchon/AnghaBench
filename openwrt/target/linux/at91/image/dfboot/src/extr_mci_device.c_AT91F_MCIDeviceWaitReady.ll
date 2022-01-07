; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCIDeviceWaitReady.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_mci_device.c_AT91F_MCIDeviceWaitReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AT91C_BASE_MCI = common dso_local global %struct.TYPE_2__* null, align 8
@AT91C_MCI_NOTBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AT91F_MCIDeviceWaitReady(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AT91C_BASE_MCI, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store volatile i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = add i32 %8, -1
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %4
  %11 = load volatile i32, i32* %3, align 4
  %12 = load volatile i32, i32* @AT91C_MCI_NOTBUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = icmp ugt i32 %16, 0
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i1 [ false, %10 ], [ %17, %15 ]
  br i1 %19, label %4, label %20

20:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
