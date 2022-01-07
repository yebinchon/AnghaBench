; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42.c_rn42_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_rn42.c_rn42_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRF = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rn42_init() #0 {
  %1 = call i32 (...) @rn42_autoconnect()
  %2 = load i32, i32* @DDRF, align 4
  %3 = and i32 %2, -65
  store i32 %3, i32* @DDRF, align 4
  %4 = load i32, i32* @PORTF, align 4
  %5 = or i32 %4, 64
  store i32 %5, i32* @PORTF, align 4
  %6 = load i32, i32* @DDRF, align 4
  %7 = and i32 %6, -3
  store i32 %7, i32* @DDRF, align 4
  %8 = load i32, i32* @PORTF, align 4
  %9 = and i32 %8, -3
  store i32 %9, i32* @PORTF, align 4
  %10 = load i32, i32* @DDRD, align 4
  %11 = or i32 %10, 32
  store i32 %11, i32* @DDRD, align 4
  %12 = load i32, i32* @PORTD, align 4
  %13 = and i32 %12, -33
  store i32 %13, i32* @PORTD, align 4
  %14 = call i32 (...) @serial_init()
  ret void
}

declare dso_local i32 @rn42_autoconnect(...) #1

declare dso_local i32 @serial_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
