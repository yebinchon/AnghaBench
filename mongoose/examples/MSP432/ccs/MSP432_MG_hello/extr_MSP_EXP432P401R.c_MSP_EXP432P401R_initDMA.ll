; ModuleID = '/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_MSP_EXP432P401R.c_MSP_EXP432P401R_initDMA.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_MSP_EXP432P401R.c_MSP_EXP432P401R_initDMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dmaInitialized = common dso_local global i32 0, align 4
@INT_DMA_ERR = common dso_local global i32 0, align 4
@dmaErrorHwi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to create DMA error Hwi!!\0A\00", align 1
@dmaControlTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSP_EXP432P401R_initDMA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @dmaInitialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %0
  %6 = call i32 @HwiP_Params_init(i32* %1)
  %7 = load i32, i32* @INT_DMA_ERR, align 4
  %8 = load i32, i32* @dmaErrorHwi, align 4
  %9 = call i32* @HwiP_create(i32 %7, i32 %8, i32* %1)
  store i32* %9, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = call i32 @DebugP_log0(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %14
  br label %14

15:                                               ; preds = %5
  %16 = call i32 (...) @MAP_DMA_enableModule()
  %17 = load i32, i32* @dmaControlTable, align 4
  %18 = call i32 @MAP_DMA_setControlBase(i32 %17)
  store i32 1, i32* @dmaInitialized, align 4
  br label %19

19:                                               ; preds = %15, %0
  ret void
}

declare dso_local i32 @HwiP_Params_init(i32*) #1

declare dso_local i32* @HwiP_create(i32, i32, i32*) #1

declare dso_local i32 @DebugP_log0(i8*) #1

declare dso_local i32 @MAP_DMA_enableModule(...) #1

declare dso_local i32 @MAP_DMA_setControlBase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
