; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_Write.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENET_EIR_MII_MASK = common dso_local global i32 0, align 4
@kENET_MiiWriteValidFrame = common dso_local global i32 0, align 4
@PHY_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@kStatus_PHY_SMIVisitTimeout = common dso_local global i32 0, align 4
@kStatus_Success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_Write(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @ENET_EIR_MII_MASK, align 4
  %13 = call i32 @ENET_ClearInterruptStatus(i32* %11, i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @kENET_MiiWriteValidFrame, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @ENET_StartSMIWrite(i32* %14, i64 %15, i64 %16, i32 %17, i64 %18)
  %20 = load i64, i64* @PHY_TIMEOUT_COUNT, align 8
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %32, %4
  %22 = load i64, i64* %10, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ENET_GetInterruptStatus(i32* %25)
  %27 = load i32, i32* @ENET_EIR_MII_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %10, align 8
  br label %21

35:                                               ; preds = %30, %21
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @kStatus_PHY_SMIVisitTimeout, align 4
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @ENET_EIR_MII_MASK, align 4
  %43 = call i32 @ENET_ClearInterruptStatus(i32* %41, i32 %42)
  %44 = load i32, i32* @kStatus_Success, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @ENET_ClearInterruptStatus(i32*, i32) #1

declare dso_local i32 @ENET_StartSMIWrite(i32*, i64, i64, i32, i64) #1

declare dso_local i32 @ENET_GetInterruptStatus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
