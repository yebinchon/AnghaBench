; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/minidox/extr_serial.c_serial_slave_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/minidox/extr_serial.c_serial_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT0 = common dso_local global i32 0, align 4
@EIMSK = common dso_local global i32 0, align 4
@ISC00 = common dso_local global i32 0, align 4
@ISC01 = common dso_local global i32 0, align 4
@EICRA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial_slave_init() #0 {
  %1 = call i32 (...) @serial_input()
  %2 = load i32, i32* @INT0, align 4
  %3 = call i32 @_BV(i32 %2)
  %4 = load i32, i32* @EIMSK, align 4
  %5 = or i32 %4, %3
  store i32 %5, i32* @EIMSK, align 4
  %6 = load i32, i32* @ISC00, align 4
  %7 = call i32 @_BV(i32 %6)
  %8 = load i32, i32* @ISC01, align 4
  %9 = call i32 @_BV(i32 %8)
  %10 = or i32 %7, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @EICRA, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @EICRA, align 4
  ret void
}

declare dso_local i32 @serial_input(...) #1

declare dso_local i32 @_BV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
