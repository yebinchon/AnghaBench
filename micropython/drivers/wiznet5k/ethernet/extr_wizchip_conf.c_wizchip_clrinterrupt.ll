; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_wizchip_clrinterrupt.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_wizchip_clrinterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wizchip_clrinterrupt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* %2, align 8
  %8 = trunc i64 %7 to i32
  %9 = ashr i32 %8, 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, 16
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 15
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @setIR(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @setSIR(i32 %16)
  ret void
}

declare dso_local i32 @setIR(i32) #1

declare dso_local i32 @setSIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
