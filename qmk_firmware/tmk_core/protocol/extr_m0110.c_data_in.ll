; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_data_in.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M0110_DATA_BIT = common dso_local global i32 0, align 4
@M0110_DATA_DDR = common dso_local global i32 0, align 4
@M0110_DATA_PORT = common dso_local global i32 0, align 4
@M0110_DATA_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @data_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @data_in() #0 {
  %1 = load i32, i32* @M0110_DATA_BIT, align 4
  %2 = shl i32 1, %1
  %3 = xor i32 %2, -1
  %4 = load i32, i32* @M0110_DATA_DDR, align 4
  %5 = and i32 %4, %3
  store i32 %5, i32* @M0110_DATA_DDR, align 4
  %6 = load i32, i32* @M0110_DATA_BIT, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @M0110_DATA_PORT, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @M0110_DATA_PORT, align 4
  %10 = call i32 @_delay_us(i32 1)
  %11 = load i32, i32* @M0110_DATA_PIN, align 4
  %12 = load i32, i32* @M0110_DATA_BIT, align 4
  %13 = shl i32 1, %12
  %14 = and i32 %11, %13
  ret i32 %14
}

declare dso_local i32 @_delay_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
