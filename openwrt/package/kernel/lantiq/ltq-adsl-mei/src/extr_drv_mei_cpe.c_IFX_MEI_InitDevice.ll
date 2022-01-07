; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_InitDevice.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_InitDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, i64, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i32* }

@dsl_devices = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@sDanube_Mei_Private = common dso_local global i32* null, align 8
@MAX_BAR_REGISTERS = common dso_local global i32 0, align 4
@LTQ_MEI_INT = common dso_local global i32 0, align 4
@IFX_DFEIR = common dso_local global i64 0, align 8
@LTQ_MEI_DYING_GASP_INT = common dso_local global i32 0, align 4
@IFX_DYING_GASP = common dso_local global i64 0, align 8
@KSEG1 = common dso_local global i64 0, align 8
@LTQ_MEI_BASE_ADDR = common dso_local global i64 0, align 8
@LTQ_PMU_PWDCR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"arcq\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"arcr\00", align 1
@IFX_MEI_IrqHandle = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"DFEIR\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"request_irq %d failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @IFX_MEI_InitDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_InitDevice(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dsl_devices, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 %8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %106

15:                                               ; preds = %1
  %16 = load i32*, i32** @sDanube_Mei_Private, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @memset(i32* %24, i32 0, i32 4)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = call %struct.TYPE_7__* @DSL_DEV_PRIVATE(%struct.TYPE_6__* %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* @MAX_BAR_REGISTERS, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %30, i32 0, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %15
  %39 = load i32, i32* @LTQ_MEI_INT, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @IFX_DFEIR, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* @LTQ_MEI_DYING_GASP_INT, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @IFX_DYING_GASP, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load i64, i64* @KSEG1, align 8
  %52 = load i64, i64* @LTQ_MEI_BASE_ADDR, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i32*, i32** @LTQ_PMU_PWDCR, align 8
  %57 = call i32 @ltq_r32(i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, -33346
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** @LTQ_PMU_PWDCR, align 8
  %62 = call i32 @ltq_w32(i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %38, %15
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = call %struct.TYPE_7__* @DSL_DEV_PRIVATE(%struct.TYPE_6__* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = call %struct.TYPE_7__* @DSL_DEV_PRIVATE(%struct.TYPE_6__* %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = call %struct.TYPE_7__* @DSL_DEV_PRIVATE(%struct.TYPE_6__* %72)
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @MEI_INIT_WAKELIST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = call %struct.TYPE_7__* @DSL_DEV_PRIVATE(%struct.TYPE_6__* %77)
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MEI_INIT_WAKELIST(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = call %struct.TYPE_7__* @DSL_DEV_PRIVATE(%struct.TYPE_6__* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @MEI_MUTEX_INIT(i32 %85, i32 1)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @IFX_DFEIR, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFX_MEI_IrqHandle, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = call i64 @request_irq(i32 %92, i32 %93, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %63
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @IFX_DFEIR, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %2, align 4
  br label %106

105:                                              ; preds = %63
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %97, %12
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @DSL_DEV_PRIVATE(%struct.TYPE_6__*) #1

declare dso_local i32 @ltq_r32(i32*) #1

declare dso_local i32 @ltq_w32(i32, i32*) #1

declare dso_local i32 @MEI_INIT_WAKELIST(i8*, i32) #1

declare dso_local i32 @MEI_MUTEX_INIT(i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
