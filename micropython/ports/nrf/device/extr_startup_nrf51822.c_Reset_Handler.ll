; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/device/extr_startup_nrf51822.c_Reset_Handler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/device/extr_startup_nrf51822.c_Reset_Handler.c"
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
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* inttoptr (i64 1073743140 to i32*), i32** %1, align 8
  store i32* inttoptr (i64 1073743188 to i32*), i32** %2, align 8
  %7 = load i32*, i32** %1, align 8
  store i32 3, i32* %7, align 4
  %8 = load i32*, i32** %2, align 8
  store i32 3, i32* %8, align 4
  store i32* @_sidata, i32** %3, align 8
  store i32* @_sdata, i32** %4, align 8
  br label %9

9:                                                ; preds = %12, %0
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ult i32* %10, @_edata
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %3, align 8
  %15 = load i32, i32* %13, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %9

18:                                               ; preds = %9
  store i32* @_sbss, i32** %5, align 8
  store i32* @_ebss, i32** %6, align 8
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  store i32 0, i32* %24, align 4
  br label %19

26:                                               ; preds = %19
  %27 = call i32 (...) @SystemInit()
  %28 = call i32 (...) @_start()
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
