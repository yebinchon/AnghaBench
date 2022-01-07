; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_FuseInit.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_FuseInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRAM0_BASE = common dso_local global i64 0, align 8
@IRAM1_BASE = common dso_local global i64 0, align 8
@BRAM_BASE = common dso_local global i64 0, align 8
@ADSL_DILV_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @IFX_MEI_FuseInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IFX_MEI_FuseInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i64, i64* @IRAM0_BASE, align 8
  %6 = call i32 @IFX_MEI_DMAWrite(i32* %4, i64 %5, i32* %3, i32 1)
  %7 = load i32*, i32** %2, align 8
  %8 = load i64, i64* @IRAM0_BASE, align 8
  %9 = add nsw i64 %8, 4
  %10 = call i32 @IFX_MEI_DMAWrite(i32* %7, i64 %9, i32* %3, i32 1)
  %11 = load i32*, i32** %2, align 8
  %12 = load i64, i64* @IRAM1_BASE, align 8
  %13 = call i32 @IFX_MEI_DMAWrite(i32* %11, i64 %12, i32* %3, i32 1)
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* @IRAM1_BASE, align 8
  %16 = add nsw i64 %15, 4
  %17 = call i32 @IFX_MEI_DMAWrite(i32* %14, i64 %16, i32* %3, i32 1)
  %18 = load i32*, i32** %2, align 8
  %19 = load i64, i64* @BRAM_BASE, align 8
  %20 = call i32 @IFX_MEI_DMAWrite(i32* %18, i64 %19, i32* %3, i32 1)
  %21 = load i32*, i32** %2, align 8
  %22 = load i64, i64* @BRAM_BASE, align 8
  %23 = add nsw i64 %22, 4
  %24 = call i32 @IFX_MEI_DMAWrite(i32* %21, i64 %23, i32* %3, i32 1)
  %25 = load i32*, i32** %2, align 8
  %26 = load i64, i64* @ADSL_DILV_BASE, align 8
  %27 = call i32 @IFX_MEI_DMAWrite(i32* %25, i64 %26, i32* %3, i32 1)
  %28 = load i32*, i32** %2, align 8
  %29 = load i64, i64* @ADSL_DILV_BASE, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i32 @IFX_MEI_DMAWrite(i32* %28, i64 %30, i32* %3, i32 1)
  ret void
}

declare dso_local i32 @IFX_MEI_DMAWrite(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
