; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ibm4704.h_clock_lo.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ibm4704.h_clock_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IBM4704_CLOCK_BIT = common dso_local global i32 0, align 4
@IBM4704_CLOCK_PORT = common dso_local global i32 0, align 4
@IBM4704_CLOCK_DDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clock_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_lo() #0 {
  %1 = load i32, i32* @IBM4704_CLOCK_BIT, align 4
  %2 = shl i32 1, %1
  %3 = xor i32 %2, -1
  %4 = load i32, i32* @IBM4704_CLOCK_PORT, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @IBM4704_CLOCK_PORT, align 4
  %6 = load i32, i32* @IBM4704_CLOCK_BIT, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @IBM4704_CLOCK_DDR, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @IBM4704_CLOCK_DDR, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
