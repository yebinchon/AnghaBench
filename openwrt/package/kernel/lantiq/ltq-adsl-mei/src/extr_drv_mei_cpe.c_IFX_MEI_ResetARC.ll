; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_ResetARC.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_ResetARC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LTQ_RCU_RST = common dso_local global i64 0, align 8
@LTQ_RCU_RST_REQ_DFE = common dso_local global i32 0, align 4
@LTQ_RCU_RST_REQ_AFE = common dso_local global i32 0, align 4
@ME_RST_CTRL = common dso_local global i64 0, align 8
@MEI_SOFT_RESET = common dso_local global i32 0, align 4
@DSL_DEV_MEI_ERR_SUCCESS = common dso_local global i32 0, align 4
@BSP_PPE32_SRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @IFX_MEI_ResetARC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IFX_MEI_ResetARC(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @IFX_MEI_HaltArc(i32* %4)
  %6 = load i64, i64* @LTQ_RCU_RST, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 @IFX_MEI_LongWordRead(i32 %7, i32* %3)
  %9 = load i64, i64* @LTQ_RCU_RST, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LTQ_RCU_RST_REQ_DFE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LTQ_RCU_RST_REQ_AFE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @IFX_MEI_LongWordWrite(i32 %10, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i64, i64* @ME_RST_CTRL, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @MEI_SOFT_RESET, align 4
  %21 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %17, i32 %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i64, i64* @ME_RST_CTRL, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %22, i32 %24, i32 0)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @IFX_MEI_IRQDisable(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @IFX_MEI_EnableCLK(i32* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call %struct.TYPE_2__* @DSL_DEV_PRIVATE(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @DSL_DEV_MEI_ERR_SUCCESS, align 4
  ret i32 %33
}

declare dso_local i32 @IFX_MEI_HaltArc(i32*) #1

declare dso_local i32 @IFX_MEI_LongWordRead(i32, i32*) #1

declare dso_local i32 @IFX_MEI_LongWordWrite(i32, i32) #1

declare dso_local i32 @IFX_MEI_LongWordWriteOffset(i32*, i32, i32) #1

declare dso_local i32 @IFX_MEI_IRQDisable(i32*) #1

declare dso_local i32 @IFX_MEI_EnableCLK(i32*) #1

declare dso_local %struct.TYPE_2__* @DSL_DEV_PRIVATE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
