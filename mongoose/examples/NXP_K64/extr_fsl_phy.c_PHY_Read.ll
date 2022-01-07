; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_Read.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENET_EIR_MII_MASK = common dso_local global i32 0, align 4
@kENET_MiiReadValidFrame = common dso_local global i32 0, align 4
@PHY_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@kStatus_PHY_SMIVisitTimeout = common dso_local global i32 0, align 4
@kStatus_Success = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_Read(i32* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64*, i64** %9, align 8
  %12 = call i32 @assert(i64* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @ENET_EIR_MII_MASK, align 4
  %15 = call i32 @ENET_ClearInterruptStatus(i32* %13, i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @kENET_MiiReadValidFrame, align 4
  %20 = call i32 @ENET_StartSMIRead(i32* %16, i64 %17, i64 %18, i32 %19)
  %21 = load i64, i64* @PHY_TIMEOUT_COUNT, align 8
  store i64 %21, i64* %10, align 8
  br label %22

22:                                               ; preds = %33, %4
  %23 = load i64, i64* %10, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @ENET_GetInterruptStatus(i32* %26)
  %28 = load i32, i32* @ENET_EIR_MII_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %36

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %10, align 8
  br label %22

36:                                               ; preds = %31, %22
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @kStatus_PHY_SMIVisitTimeout, align 4
  store i32 %40, i32* %5, align 4
  br label %49

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @ENET_ReadSMIData(i32* %42)
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @ENET_EIR_MII_MASK, align 4
  %47 = call i32 @ENET_ClearInterruptStatus(i32* %45, i32 %46)
  %48 = load i32, i32* @kStatus_Success, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %41, %39
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @ENET_ClearInterruptStatus(i32*, i32) #1

declare dso_local i32 @ENET_StartSMIRead(i32*, i64, i64, i32) #1

declare dso_local i32 @ENET_GetInterruptStatus(i32*) #1

declare dso_local i64 @ENET_ReadSMIData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
