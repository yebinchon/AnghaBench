; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/fc660c/extr_matrix.c_KEY_INIT.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/fc660c/extr_matrix.c_KEY_INIT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDRB = common dso_local global i32 0, align 4
@DDRC = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @KEY_INIT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @KEY_INIT() #0 {
  %1 = load i32, i32* @DDRB, align 4
  %2 = or i32 %1, 31
  store i32 %2, i32* @DDRB, align 4
  %3 = load i32, i32* @DDRC, align 4
  %4 = and i32 %3, -65
  store i32 %4, i32* @DDRC, align 4
  %5 = load i32, i32* @PORTC, align 4
  %6 = or i32 %5, 64
  store i32 %6, i32* @PORTC, align 4
  %7 = load i32, i32* @DDRC, align 4
  %8 = or i32 %7, 128
  store i32 %8, i32* @DDRC, align 4
  %9 = load i32, i32* @DDRD, align 4
  %10 = or i32 %9, 240
  store i32 %10, i32* @DDRD, align 4
  %11 = call i32 (...) @KEY_UNABLE()
  %12 = call i32 (...) @KEY_HYS_OFF()
  ret void
}

declare dso_local i32 @KEY_UNABLE(...) #1

declare dso_local i32 @KEY_HYS_OFF(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
