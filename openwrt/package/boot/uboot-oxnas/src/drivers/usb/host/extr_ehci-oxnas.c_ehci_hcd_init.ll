; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/usb/host/extr_ehci-oxnas.c_ehci_hcd_init.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/drivers/usb/host/extr_ehci-oxnas.c_ehci_hcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcor = type { i32 }
%struct.ehci_hccr = type { i32 }

@USB_HOST_BASE = common dso_local global i64 0, align 8
@ghcor = common dso_local global %struct.ehci_hcor* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehci_hcd_init(i32 %0, i32 %1, %struct.ehci_hccr** %2, %struct.ehci_hcor** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehci_hccr**, align 8
  %8 = alloca %struct.ehci_hcor**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ehci_hccr** %2, %struct.ehci_hccr*** %7, align 8
  store %struct.ehci_hcor** %3, %struct.ehci_hcor*** %8, align 8
  %9 = call i32 (...) @start_oxnas_usb_ehci()
  %10 = load i64, i64* @USB_HOST_BASE, align 8
  %11 = add nsw i64 %10, 256
  %12 = inttoptr i64 %11 to %struct.ehci_hccr*
  %13 = load %struct.ehci_hccr**, %struct.ehci_hccr*** %7, align 8
  store %struct.ehci_hccr* %12, %struct.ehci_hccr** %13, align 8
  %14 = load %struct.ehci_hccr**, %struct.ehci_hccr*** %7, align 8
  %15 = load %struct.ehci_hccr*, %struct.ehci_hccr** %14, align 8
  %16 = ptrtoint %struct.ehci_hccr* %15 to i64
  %17 = load %struct.ehci_hccr**, %struct.ehci_hccr*** %7, align 8
  %18 = load %struct.ehci_hccr*, %struct.ehci_hccr** %17, align 8
  %19 = getelementptr inbounds %struct.ehci_hccr, %struct.ehci_hccr* %18, i32 0, i32 0
  %20 = call i32 @ehci_readl(i32* %19)
  %21 = call i64 @HC_LENGTH(i32 %20)
  %22 = add nsw i64 %16, %21
  %23 = inttoptr i64 %22 to %struct.ehci_hcor*
  %24 = load %struct.ehci_hcor**, %struct.ehci_hcor*** %8, align 8
  store %struct.ehci_hcor* %23, %struct.ehci_hcor** %24, align 8
  %25 = load %struct.ehci_hcor**, %struct.ehci_hcor*** %8, align 8
  %26 = load %struct.ehci_hcor*, %struct.ehci_hcor** %25, align 8
  store %struct.ehci_hcor* %26, %struct.ehci_hcor** @ghcor, align 8
  ret i32 0
}

declare dso_local i32 @start_oxnas_usb_ehci(...) #1

declare dso_local i64 @HC_LENGTH(i32) #1

declare dso_local i32 @ehci_readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
