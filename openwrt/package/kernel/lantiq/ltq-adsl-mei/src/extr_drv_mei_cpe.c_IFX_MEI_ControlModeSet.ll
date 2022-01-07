; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_ControlModeSet.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_IFX_MEI_ControlModeSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ME_DBG_MASTER = common dso_local global i64 0, align 8
@HOST_MSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"IFX_MEI_ControlModeSet: unkonwn mode [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @IFX_MEI_ControlModeSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IFX_MEI_ControlModeSet(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i64, i64* @ME_DBG_MASTER, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @IFX_MEI_LongWordReadOffset(i32* %6, i32 %8, i32* %5)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %20 [
    i32 129, label %11
    i32 128, label %16
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @HOST_MSTR, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @HOST_MSTR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %29

23:                                               ; preds = %16, %11
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* @ME_DBG_MASTER, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @IFX_MEI_LongWordWriteOffset(i32* %24, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @IFX_MEI_LongWordReadOffset(i32*, i32, i32*) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*, i32) #1

declare dso_local i32 @IFX_MEI_LongWordWriteOffset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
