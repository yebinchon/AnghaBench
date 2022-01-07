; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/system/ports/src/extr_sys_ports_static.c_SYS_PORTS_Initialize.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/system/ports/src/extr_sys_ports_static.c_SYS_PORTS_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTS_ID_0 = common dso_local global i32 0, align 4
@SYS_PORT_AD1PCFG = common dso_local global i32 0, align 4
@PORTS_PIN_MODE_DIGITAL = common dso_local global i32 0, align 4
@SYS_PORT_CNPUE = common dso_local global i32 0, align 4
@SYS_PORT_CNEN = common dso_local global i32 0, align 4
@PORT_CHANNEL_A = common dso_local global i32 0, align 4
@SYS_PORT_A_ODC = common dso_local global i32 0, align 4
@SYS_PORT_A_LAT = common dso_local global i32 0, align 4
@SYS_PORT_A_TRIS = common dso_local global i32 0, align 4
@PORT_CHANNEL_B = common dso_local global i32 0, align 4
@SYS_PORT_B_ODC = common dso_local global i32 0, align 4
@SYS_PORT_B_LAT = common dso_local global i32 0, align 4
@SYS_PORT_B_TRIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYS_PORTS_Initialize() #0 {
  %1 = load i32, i32* @PORTS_ID_0, align 4
  %2 = load i32, i32* @SYS_PORT_AD1PCFG, align 4
  %3 = load i32, i32* @PORTS_PIN_MODE_DIGITAL, align 4
  %4 = call i32 @PLIB_PORTS_AnPinsModeSelect(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @PORTS_ID_0, align 4
  %6 = load i32, i32* @SYS_PORT_CNPUE, align 4
  %7 = call i32 @PLIB_PORTS_CnPinsPullUpEnable(i32 %5, i32 %6)
  %8 = load i32, i32* @PORTS_ID_0, align 4
  %9 = load i32, i32* @SYS_PORT_CNEN, align 4
  %10 = call i32 @PLIB_PORTS_CnPinsEnable(i32 %8, i32 %9)
  %11 = load i32, i32* @PORTS_ID_0, align 4
  %12 = call i32 @PLIB_PORTS_ChangeNoticeEnable(i32 %11)
  %13 = load i32, i32* @PORTS_ID_0, align 4
  %14 = load i32, i32* @PORT_CHANNEL_A, align 4
  %15 = load i32, i32* @SYS_PORT_A_ODC, align 4
  %16 = call i32 @PLIB_PORTS_OpenDrainEnable(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @PORTS_ID_0, align 4
  %18 = load i32, i32* @PORT_CHANNEL_A, align 4
  %19 = load i32, i32* @SYS_PORT_A_LAT, align 4
  %20 = call i32 @PLIB_PORTS_Write(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @PORTS_ID_0, align 4
  %22 = load i32, i32* @PORT_CHANNEL_A, align 4
  %23 = load i32, i32* @SYS_PORT_A_TRIS, align 4
  %24 = xor i32 %23, 65535
  %25 = call i32 @PLIB_PORTS_DirectionOutputSet(i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* @PORTS_ID_0, align 4
  %27 = load i32, i32* @PORT_CHANNEL_B, align 4
  %28 = load i32, i32* @SYS_PORT_B_ODC, align 4
  %29 = call i32 @PLIB_PORTS_OpenDrainEnable(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @PORTS_ID_0, align 4
  %31 = load i32, i32* @PORT_CHANNEL_B, align 4
  %32 = load i32, i32* @SYS_PORT_B_LAT, align 4
  %33 = call i32 @PLIB_PORTS_Write(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @PORTS_ID_0, align 4
  %35 = load i32, i32* @PORT_CHANNEL_B, align 4
  %36 = load i32, i32* @SYS_PORT_B_TRIS, align 4
  %37 = xor i32 %36, 65535
  %38 = call i32 @PLIB_PORTS_DirectionOutputSet(i32 %34, i32 %35, i32 %37)
  ret void
}

declare dso_local i32 @PLIB_PORTS_AnPinsModeSelect(i32, i32, i32) #1

declare dso_local i32 @PLIB_PORTS_CnPinsPullUpEnable(i32, i32) #1

declare dso_local i32 @PLIB_PORTS_CnPinsEnable(i32, i32) #1

declare dso_local i32 @PLIB_PORTS_ChangeNoticeEnable(i32) #1

declare dso_local i32 @PLIB_PORTS_OpenDrainEnable(i32, i32, i32) #1

declare dso_local i32 @PLIB_PORTS_Write(i32, i32, i32) #1

declare dso_local i32 @PLIB_PORTS_DirectionOutputSet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
