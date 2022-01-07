; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_Init.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_K64/extr_fsl_phy.c_PHY_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY_TIMEOUT_COUNT = common dso_local global i64 0, align 8
@kStatus_Success = common dso_local global i64 0, align 8
@s_enetClock = common dso_local global i32* null, align 8
@PHY_BASICCONTROL_REG = common dso_local global i32 0, align 4
@PHY_BCTL_RESET_MASK = common dso_local global i32 0, align 4
@PHY_AUTONEG_ADVERTISE_REG = common dso_local global i32 0, align 4
@PHY_100BASETX_FULLDUPLEX_MASK = common dso_local global i32 0, align 4
@PHY_100BASETX_HALFDUPLEX_MASK = common dso_local global i32 0, align 4
@PHY_10BASETX_FULLDUPLEX_MASK = common dso_local global i32 0, align 4
@PHY_10BASETX_HALFDUPLEX_MASK = common dso_local global i32 0, align 4
@PHY_BCTL_AUTONEG_MASK = common dso_local global i32 0, align 4
@PHY_BCTL_RESTART_AUTONEG_MASK = common dso_local global i32 0, align 4
@PHY_BASICSTATUS_REG = common dso_local global i32 0, align 4
@PHY_BSTATUS_AUTONEGCOMP_MASK = common dso_local global i64 0, align 8
@kStatus_PHY_AutoNegotiateFail = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PHY_Init(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @PHY_TIMEOUT_COUNT, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* @kStatus_Success, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @ENET_GetInstance(i32* %14)
  store i64 %15, i64* %11, align 8
  %16 = load i32*, i32** @s_enetClock, align 8
  %17 = load i64, i64* %11, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CLOCK_EnableClock(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ENET_SetSMI(i32* %21, i64 %22, i32 0)
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @PHY_BASICCONTROL_REG, align 4
  %27 = load i32, i32* @PHY_BCTL_RESET_MASK, align 4
  %28 = call i64 @PHY_Write(i32* %24, i64 %25, i32 %26, i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @kStatus_Success, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %3
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @PHY_AUTONEG_ADVERTISE_REG, align 4
  %36 = load i32, i32* @PHY_100BASETX_FULLDUPLEX_MASK, align 4
  %37 = load i32, i32* @PHY_100BASETX_HALFDUPLEX_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PHY_10BASETX_FULLDUPLEX_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PHY_10BASETX_HALFDUPLEX_MASK, align 4
  %42 = or i32 %40, %41
  %43 = or i32 %42, 1
  %44 = call i64 @PHY_Write(i32* %33, i64 %34, i32 %35, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @kStatus_Success, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %32
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @PHY_BASICCONTROL_REG, align 4
  %52 = load i32, i32* @PHY_BCTL_AUTONEG_MASK, align 4
  %53 = load i32, i32* @PHY_BCTL_RESTART_AUTONEG_MASK, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @PHY_Write(i32* %49, i64 %50, i32 %51, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @kStatus_Success, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %9, align 8
  %63 = icmp ne i64 %61, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* @PHY_BASICSTATUS_REG, align 4
  %68 = call i64 @PHY_Read(i32* %65, i64 %66, i32 %67, i64* %8)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @kStatus_Success, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @PHY_BSTATUS_AUTONEGCOMP_MASK, align 8
  %75 = and i64 %73, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %85

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* @kStatus_PHY_AutoNegotiateFail, align 8
  store i64 %83, i64* %4, align 8
  br label %90

84:                                               ; preds = %79
  br label %60

85:                                               ; preds = %77, %60
  br label %86

86:                                               ; preds = %85, %48
  br label %87

87:                                               ; preds = %86, %32
  br label %88

88:                                               ; preds = %87, %3
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i64 @ENET_GetInstance(i32*) #1

declare dso_local i32 @CLOCK_EnableClock(i32) #1

declare dso_local i32 @ENET_SetSMI(i32*, i64, i32) #1

declare dso_local i64 @PHY_Write(i32*, i64, i32, i32) #1

declare dso_local i64 @PHY_Read(i32*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
