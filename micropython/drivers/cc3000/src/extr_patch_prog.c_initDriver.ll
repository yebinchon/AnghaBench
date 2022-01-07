; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_initDriver.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_patch_prog.c_initDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CC3000_UsynchCallback = common dso_local global i32 0, align 4
@sendWLFWPatch = common dso_local global i32 0, align 4
@sendDriverPatch = common dso_local global i32 0, align 4
@sendBootLoaderPatch = common dso_local global i32 0, align 4
@ReadWlanInterruptPin = common dso_local global i32 0, align 4
@SpiResumeSpi = common dso_local global i32 0, align 4
@SpiPauseSpi = common dso_local global i32 0, align 4
@WriteWlanPin = common dso_local global i32 0, align 4
@aucCC3000_prefix = common dso_local global i64 0, align 8
@HCI_EVNT_WLAN_KEEPALIVE = common dso_local global i32 0, align 4
@HCI_EVNT_WLAN_UNSOL_INIT = common dso_local global i32 0, align 4
@HCI_EVNT_WLAN_ASYNC_PING_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @initDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initDriver(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i32, i32* @CC3000_UsynchCallback, align 4
  %4 = load i32, i32* @sendWLFWPatch, align 4
  %5 = load i32, i32* @sendDriverPatch, align 4
  %6 = load i32, i32* @sendBootLoaderPatch, align 4
  %7 = load i32, i32* @ReadWlanInterruptPin, align 4
  %8 = load i32, i32* @SpiResumeSpi, align 4
  %9 = load i32, i32* @SpiPauseSpi, align 4
  %10 = load i32, i32* @WriteWlanPin, align 4
  %11 = call i32 @wlan_init(i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load i16, i16* %2, align 2
  %13 = call i32 @wlan_start(i16 zeroext %12)
  %14 = load i64, i64* @aucCC3000_prefix, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @wlan_smart_config_set_prefix(i8* %15)
  %17 = call i32 @wlan_ioctl_set_connection_policy(i32 0, i32 0, i32 0)
  %18 = call i32 @wlan_ioctl_del_profile(i32 255)
  %19 = load i32, i32* @HCI_EVNT_WLAN_KEEPALIVE, align 4
  %20 = load i32, i32* @HCI_EVNT_WLAN_UNSOL_INIT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HCI_EVNT_WLAN_ASYNC_PING_REPORT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @wlan_set_event_mask(i32 %23)
  %25 = call i32 @systick_sleep(i32 100)
  ret i32 0
}

declare dso_local i32 @wlan_init(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlan_start(i16 zeroext) #1

declare dso_local i32 @wlan_smart_config_set_prefix(i8*) #1

declare dso_local i32 @wlan_ioctl_set_connection_policy(i32, i32, i32) #1

declare dso_local i32 @wlan_ioctl_del_profile(i32) #1

declare dso_local i32 @wlan_set_event_mask(i32) #1

declare dso_local i32 @systick_sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
