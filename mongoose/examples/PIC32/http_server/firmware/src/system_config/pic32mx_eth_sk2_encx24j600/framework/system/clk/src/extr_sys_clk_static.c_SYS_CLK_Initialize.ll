; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/system/clk/src/extr_sys_clk_static.c_SYS_CLK_Initialize.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/system/clk/src/extr_sys_clk_static.c_SYS_CLK_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSC_ID_0 = common dso_local global i32 0, align 4
@OSC_FRC_DIV_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYS_CLK_Initialize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 (...) @SYS_DEVCON_SystemUnlock()
  %4 = load i32, i32* @OSC_ID_0, align 4
  %5 = load i32, i32* @OSC_FRC_DIV_2, align 4
  %6 = call i32 @PLIB_OSC_FRCDivisorSelect(i32 %4, i32 %5)
  %7 = load i32, i32* @OSC_ID_0, align 4
  %8 = call i32 @PLIB_OSC_PBClockDivisorSet(i32 %7, i32 0, i32 1)
  %9 = call i32 (...) @SYS_DEVCON_SystemLock()
  ret void
}

declare dso_local i32 @SYS_DEVCON_SystemUnlock(...) #1

declare dso_local i32 @PLIB_OSC_FRCDivisorSelect(i32, i32) #1

declare dso_local i32 @PLIB_OSC_PBClockDivisorSet(i32, i32, i32) #1

declare dso_local i32 @SYS_DEVCON_SystemLock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
