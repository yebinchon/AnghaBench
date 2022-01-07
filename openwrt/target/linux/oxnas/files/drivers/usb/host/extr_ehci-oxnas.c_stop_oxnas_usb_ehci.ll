; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_stop_oxnas_usb_ehci.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_stop_oxnas_usb_ehci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxnas_hcd = type { i32, i32, i32, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxnas_hcd*)* @stop_oxnas_usb_ehci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_oxnas_usb_ehci(%struct.oxnas_hcd* %0) #0 {
  %2 = alloca %struct.oxnas_hcd*, align 8
  store %struct.oxnas_hcd* %0, %struct.oxnas_hcd** %2, align 8
  %3 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %4 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @reset_control_assert(i32 %5)
  %7 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @reset_control_assert(i32 %9)
  %11 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @reset_control_assert(i32 %13)
  %15 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %25 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  br label %28

28:                                               ; preds = %19, %1
  %29 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %2, align 8
  %30 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  ret void
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
