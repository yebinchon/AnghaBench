; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driversuart.h_get_ring_by_number.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driversuart.h_get_ring_by_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uart_ring_debug = common dso_local global i32 0, align 4
@uart_ring_esp_gps = common dso_local global i32 0, align 4
@uart_ring_lin1 = common dso_local global i32 0, align 4
@uart_ring_lin2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_ring_by_number(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %9 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
  ]

5:                                                ; preds = %1
  store i32* @uart_ring_debug, i32** %3, align 8
  br label %10

6:                                                ; preds = %1
  store i32* @uart_ring_esp_gps, i32** %3, align 8
  br label %10

7:                                                ; preds = %1
  store i32* @uart_ring_lin1, i32** %3, align 8
  br label %10

8:                                                ; preds = %1
  store i32* @uart_ring_lin2, i32** %3, align 8
  br label %10

9:                                                ; preds = %1
  store i32* null, i32** %3, align 8
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5
  %11 = load i32*, i32** %3, align 8
  ret i32* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
