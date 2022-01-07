; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/boards/pca10059/modules/extr_recover_uicr_regout0.c_board_modules_init0.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/boards/pca10059/modules/extr_recover_uicr_regout0.c_board_modules_init0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@NRF_NVMC = common dso_local global %struct.TYPE_4__* null, align 8
@NVMC_READY_READY_Ready = common dso_local global i64 0, align 8
@NVMC_CONFIG_WEN_Wen = common dso_local global i32 0, align 4
@UICR_REGOUT0_VOUT_3V3 = common dso_local global i32 0, align 4
@UICR_REGOUT0_VOUT_Msk = common dso_local global i32 0, align 4
@UICR_REGOUT0_VOUT_Pos = common dso_local global i32 0, align 4
@NRF_UICR = common dso_local global %struct.TYPE_3__* null, align 8
@NVMC_CONFIG_WEN_Ren = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @board_modules_init0() #0 {
  %1 = call i64 (...) @uicr_REGOUT0_erased()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %50

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %10, %3
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NRF_NVMC, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NVMC_READY_READY_Ready, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %4

11:                                               ; preds = %4
  %12 = load i32, i32* @NVMC_CONFIG_WEN_Wen, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NRF_NVMC, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %15

15:                                               ; preds = %21, %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NRF_NVMC, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVMC_READY_READY_Ready, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %15

22:                                               ; preds = %15
  %23 = load i32, i32* @UICR_REGOUT0_VOUT_3V3, align 4
  %24 = load i32, i32* @UICR_REGOUT0_VOUT_Msk, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @UICR_REGOUT0_VOUT_Pos, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @NRF_UICR, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %36, %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NRF_NVMC, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NVMC_READY_READY_Ready, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %30

37:                                               ; preds = %30
  %38 = load i32, i32* @NVMC_CONFIG_WEN_Ren, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NRF_NVMC, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %47, %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NRF_NVMC, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NVMC_READY_READY_Ready, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %41

48:                                               ; preds = %41
  %49 = call i32 (...) @NVIC_SystemReset()
  br label %50

50:                                               ; preds = %48, %0
  ret void
}

declare dso_local i64 @uicr_REGOUT0_erased(...) #1

declare dso_local i32 @NVIC_SystemReset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
