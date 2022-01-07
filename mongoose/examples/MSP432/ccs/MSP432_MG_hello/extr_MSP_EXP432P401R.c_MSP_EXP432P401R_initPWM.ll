; ModuleID = '/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_MSP_EXP432P401R.c_MSP_EXP432P401R_initPWM.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_MSP_EXP432P401R.c_MSP_EXP432P401R_initPWM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_NONE = common dso_local global i32 0, align 4
@PM_TA1CCR1A = common dso_local global i32 0, align 4
@PM_TA1CCR2A = common dso_local global i32 0, align 4
@PMAP_P2MAP = common dso_local global i32 0, align 4
@PMAP_DISABLE_RECONFIGURATION = common dso_local global i32 0, align 4
@GPIO_PORT_P2 = common dso_local global i32 0, align 4
@GPIO_PIN1 = common dso_local global i32 0, align 4
@GPIO_PIN2 = common dso_local global i32 0, align 4
@GPIO_PRIMARY_MODULE_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSP_EXP432P401R_initPWM() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %3 = load i32, i32* @PM_NONE, align 4
  store i32 %3, i32* %2, align 4
  %4 = getelementptr inbounds i32, i32* %2, i64 1
  %5 = load i32, i32* @PM_TA1CCR1A, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = load i32, i32* @PM_TA1CCR2A, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @PM_NONE, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @PM_NONE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @PM_NONE, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @PM_NONE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @PM_NONE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %19 = load i32, i32* @PMAP_P2MAP, align 4
  %20 = load i32, i32* @PMAP_DISABLE_RECONFIGURATION, align 4
  %21 = call i32 @MAP_PMAP_configurePorts(i32* %18, i32 %19, i32 1, i32 %20)
  %22 = load i32, i32* @GPIO_PORT_P2, align 4
  %23 = load i32, i32* @GPIO_PIN1, align 4
  %24 = load i32, i32* @GPIO_PIN2, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GPIO_PRIMARY_MODULE_FUNCTION, align 4
  %27 = call i32 @MAP_GPIO_setAsPeripheralModuleFunctionOutputPin(i32 %22, i32 %25, i32 %26)
  %28 = call i32 (...) @PWM_init()
  ret void
}

declare dso_local i32 @MAP_PMAP_configurePorts(i32*, i32, i32, i32) #1

declare dso_local i32 @MAP_GPIO_setAsPeripheralModuleFunctionOutputPin(i32, i32, i32) #1

declare dso_local i32 @PWM_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
