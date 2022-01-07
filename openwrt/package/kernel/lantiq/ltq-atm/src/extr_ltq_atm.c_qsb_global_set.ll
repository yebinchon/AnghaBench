; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_qsb_global_set.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_qsb_global_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.clk = type { i32 }

@qsb_tau = common dso_local global i32 0, align 4
@QSB_ICDV = common dso_local global i32* null, align 8
@qsb_srvm = common dso_local global i32 0, align 4
@QSB_SBL = common dso_local global i32* null, align 8
@qsb_tstep = common dso_local global i32 0, align 4
@QSB_CFG = common dso_local global i32* null, align 8
@ATM_PORT_NUMBER = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@QSB_SET_SCT_MASK = common dso_local global i32 0, align 4
@QSB_RTM = common dso_local global i32* null, align 8
@QSB_RTD = common dso_local global i32* null, align 8
@QSB_RAMAC_RW_WRITE = common dso_local global i32 0, align 4
@QSB_RAMAC_TSEL_SCT = common dso_local global i32 0, align 4
@QSB_RAMAC_LH_LOW = common dso_local global i32 0, align 4
@QSB_RAMAC = common dso_local global i32* null, align 8
@QSB_SET_SPT_MASK = common dso_local global i32 0, align 4
@QSB_SPT_SBV_VALID = common dso_local global i32 0, align 4
@QSB_RAMAC_TSEL_SPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @qsb_global_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qsb_global_set() #0 {
  %1 = alloca %struct.clk*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call %struct.clk* (...) @clk_get_fpi()
  store %struct.clk* %7, %struct.clk** %1, align 8
  %8 = load %struct.clk*, %struct.clk** %1, align 8
  %9 = call i32 @clk_get_rate(%struct.clk* %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @qsb_tau, align 4
  %11 = call i32 @QSB_ICDV_TAU_SET(i32 %10)
  %12 = load i32*, i32** @QSB_ICDV, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @qsb_srvm, align 4
  %14 = call i32 @QSB_SBL_SBL_SET(i32 %13)
  %15 = load i32*, i32** @QSB_SBL, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @qsb_tstep, align 4
  %17 = ashr i32 %16, 1
  %18 = call i32 @QSB_CFG_TSTEPC_SET(i32 %17)
  %19 = load i32*, i32** @QSB_CFG, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %105, %0
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ATM_PORT_NUMBER, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %108

24:                                               ; preds = %20
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_atm_priv_data, i32 0, i32 0), align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %104

32:                                               ; preds = %24
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @qsb_tstep, align 4
  %35 = mul i32 %33, %34
  %36 = lshr i32 %35, 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_atm_priv_data, i32 0, i32 0), align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = udiv i32 %36, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = lshr i32 %44, 6
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 63
  %48 = add i32 %47, 1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 64
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %32
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* @QSB_SET_SCT_MASK, align 4
  %60 = call i32 @QSB_RTM_DM_SET(i32 %59)
  %61 = load i32*, i32** @QSB_RTM, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @QSB_RTD_TTV_SET(i32 %62)
  %64 = load i32*, i32** @QSB_RTD, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @QSB_RAMAC_RW_WRITE, align 4
  %66 = call i32 @QSB_RAMAC_RW_SET(i32 %65)
  %67 = load i32, i32* @QSB_RAMAC_TSEL_SCT, align 4
  %68 = call i32 @QSB_RAMAC_TSEL_SET(i32 %67)
  %69 = or i32 %66, %68
  %70 = load i32, i32* @QSB_RAMAC_LH_LOW, align 4
  %71 = call i32 @QSB_RAMAC_LH_SET(i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, 1
  %75 = call i32 @QSB_RAMAC_TESEL_SET(i32 %74)
  %76 = or i32 %72, %75
  %77 = load i32*, i32** @QSB_RAMAC, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @QSB_SET_SPT_MASK, align 4
  %79 = call i32 @QSB_RTM_DM_SET(i32 %78)
  %80 = load i32*, i32** @QSB_RTM, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @QSB_SPT_SBV_VALID, align 4
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 1
  %84 = call i32 @QSB_SPT_PN_SET(i32 %83)
  %85 = or i32 %81, %84
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @QSB_SPT_INTRATE_SET(i32 %86)
  %88 = or i32 %85, %87
  %89 = call i32 @QSB_RTD_TTV_SET(i32 %88)
  %90 = load i32*, i32** @QSB_RTD, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @QSB_RAMAC_RW_WRITE, align 4
  %92 = call i32 @QSB_RAMAC_RW_SET(i32 %91)
  %93 = load i32, i32* @QSB_RAMAC_TSEL_SPT, align 4
  %94 = call i32 @QSB_RAMAC_TSEL_SET(i32 %93)
  %95 = or i32 %92, %94
  %96 = load i32, i32* @QSB_RAMAC_LH_LOW, align 4
  %97 = call i32 @QSB_RAMAC_LH_SET(i32 %96)
  %98 = or i32 %95, %97
  %99 = load i32, i32* %3, align 4
  %100 = and i32 %99, 1
  %101 = call i32 @QSB_RAMAC_TESEL_SET(i32 %100)
  %102 = or i32 %98, %101
  %103 = load i32*, i32** @QSB_RAMAC, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %58, %24
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %20

108:                                              ; preds = %20
  ret void
}

declare dso_local %struct.clk* @clk_get_fpi(...) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @QSB_ICDV_TAU_SET(i32) #1

declare dso_local i32 @QSB_SBL_SBL_SET(i32) #1

declare dso_local i32 @QSB_CFG_TSTEPC_SET(i32) #1

declare dso_local i32 @QSB_RTM_DM_SET(i32) #1

declare dso_local i32 @QSB_RTD_TTV_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_RW_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_TSEL_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_LH_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_TESEL_SET(i32) #1

declare dso_local i32 @QSB_SPT_PN_SET(i32) #1

declare dso_local i32 @QSB_SPT_INTRATE_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
