; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/device/extr_startup_nrf52832.c_Reset_Handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/device/extr_startup_nrf52832.c_Reset_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_sidata = common dso_local global i32 0, align 4
@_sdata = common dso_local global i32 0, align 4
@_edata = common dso_local global i32 0, align 4
@_sbss = common dso_local global i32 0, align 4
@_ebss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Reset_Handler() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* @_sidata, i32** %1, align 8
  store i32* @_sdata, i32** %2, align 8
  br label %5

5:                                                ; preds = %8, %0
  %6 = load i32*, i32** %2, align 8
  %7 = icmp ult i32* %6, @_edata
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32*, i32** %1, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %1, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %2, align 8
  store i32 %11, i32* %12, align 4
  br label %5

14:                                               ; preds = %5
  store i32* @_sbss, i32** %3, align 8
  store i32* @_ebss, i32** %4, align 8
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ult i32* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %3, align 8
  store i32 0, i32* %20, align 4
  br label %15

22:                                               ; preds = %15
  %23 = call i32 (...) @SystemInit()
  %24 = call i32 (...) @_start()
  ret void
}

declare dso_local i32 @SystemInit(...) #1

declare dso_local i32 @_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
