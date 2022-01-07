; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_GetLinkSpeedDuplex.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_GetLinkSpeedDuplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kStatus_Success = common dso_local global i64 0, align 8
@PHY_CONTROL1_REG = common dso_local global i32 0, align 4
@PHY_CTL1_SPEEDUPLX_MASK = common dso_local global i32 0, align 4
@PHY_CTL1_10FULLDUPLEX_MASK = common dso_local global i32 0, align 4
@PHY_CTL1_100FULLDUPLEX_MASK = common dso_local global i32 0, align 4
@kPHY_FullDuplex = common dso_local global i32 0, align 4
@kPHY_HalfDuplex = common dso_local global i32 0, align 4
@PHY_CTL1_100HALFDUPLEX_MASK = common dso_local global i32 0, align 4
@kPHY_Speed100M = common dso_local global i32 0, align 4
@kPHY_Speed10M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PHY_GetLinkSpeedDuplex(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i64, i64* @kStatus_Success, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PHY_CONTROL1_REG, align 4
  %18 = call i64 @PHY_Read(i32* %15, i32 %16, i32 %17, i32* %11)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @kStatus_Success, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @PHY_CTL1_SPEEDUPLX_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @PHY_CTL1_10FULLDUPLEX_MASK, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @PHY_CTL1_100FULLDUPLEX_MASK, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %22
  %34 = load i32, i32* @kPHY_FullDuplex, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @kPHY_HalfDuplex, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @PHY_CTL1_SPEEDUPLX_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @PHY_CTL1_100HALFDUPLEX_MASK, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @PHY_CTL1_100FULLDUPLEX_MASK, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %39
  %51 = load i32, i32* @kPHY_Speed100M, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @kPHY_Speed10M, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %4
  %58 = load i64, i64* %9, align 8
  ret i64 %58
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @PHY_Read(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
