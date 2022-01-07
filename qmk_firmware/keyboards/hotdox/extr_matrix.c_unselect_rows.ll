; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_matrix.c_unselect_rows.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_matrix.c_unselect_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF7 = common dso_local global i32 0, align 4
@PF6 = common dso_local global i32 0, align 4
@PF5 = common dso_local global i32 0, align 4
@PF4 = common dso_local global i32 0, align 4
@PF1 = common dso_local global i32 0, align 4
@PF0 = common dso_local global i32 0, align 4
@DDRF = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unselect_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unselect_rows() #0 {
  %1 = load i32, i32* @PF7, align 4
  %2 = shl i32 1, %1
  %3 = load i32, i32* @PF6, align 4
  %4 = shl i32 1, %3
  %5 = or i32 %2, %4
  %6 = load i32, i32* @PF5, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = load i32, i32* @PF4, align 4
  %10 = shl i32 1, %9
  %11 = or i32 %8, %10
  %12 = load i32, i32* @PF1, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load i32, i32* @PF0, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @DDRF, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @DDRF, align 4
  %21 = load i32, i32* @PF7, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @PF6, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @PF5, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @PF4, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = load i32, i32* @PF1, align 4
  %33 = shl i32 1, %32
  %34 = or i32 %31, %33
  %35 = load i32, i32* @PF0, align 4
  %36 = shl i32 1, %35
  %37 = or i32 %34, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @PORTF, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* @PORTF, align 4
  %41 = call i32 (...) @left_unselect_rows()
  ret void
}

declare dso_local i32 @left_unselect_rows(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
