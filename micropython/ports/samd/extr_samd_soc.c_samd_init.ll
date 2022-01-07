; ModuleID = '/home/carl/AnghaBench/micropython/ports/samd/extr_samd_soc.c_samd_init.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/samd/extr_samd_soc.c_samd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_25__, %struct.TYPE_23__*, %struct.TYPE_21__, %struct.TYPE_39__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_38__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__ }
%struct.TYPE_38__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i8* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32 }

@CPU_FREQ = common dso_local global i32 0, align 4
@FUSES_DFLL48M_COARSE_CAL_ADDR = common dso_local global i64 0, align 8
@FUSES_DFLL48M_COARSE_CAL_Msk = common dso_local global i32 0, align 4
@FUSES_DFLL48M_COARSE_CAL_Pos = common dso_local global i32 0, align 4
@GCLK = common dso_local global %struct.TYPE_32__* null, align 8
@GCLK_GENCTRL_DIV_Pos = common dso_local global i32 0, align 4
@GCLK_GENCTRL_GENEN = common dso_local global i32 0, align 4
@GCLK_GENCTRL_SRC_DFLL = common dso_local global i32 0, align 4
@GCLK_GENCTRL_SRC_DFLL48M = common dso_local global i32 0, align 4
@NVMCTRL = common dso_local global %struct.TYPE_30__* null, align 8
@PORT = common dso_local global %struct.TYPE_29__* null, align 8
@SYSCTRL = common dso_local global %struct.TYPE_28__* null, align 8
@SYSCTRL_DFLLCTRL_CCDIS = common dso_local global i8* null, align 8
@SYSCTRL_DFLLCTRL_ENABLE = common dso_local global i8* null, align 8
@SYSCTRL_DFLLCTRL_MODE = common dso_local global i8* null, align 8
@SYSCTRL_DFLLCTRL_USBCRM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @samd_init() #0 {
  %1 = load i32, i32* @CPU_FREQ, align 4
  %2 = sdiv i32 %1, 1000
  %3 = call i32 @SysTick_Config(i32 %2)
  %4 = call i32 (...) @uart0_init()
  %5 = call i32 (...) @usb_init()
  ret void
}

declare dso_local i32 @SysTick_Config(i32) #1

declare dso_local i32 @uart0_init(...) #1

declare dso_local i32 @usb_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
