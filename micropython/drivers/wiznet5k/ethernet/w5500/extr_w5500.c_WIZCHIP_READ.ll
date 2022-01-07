; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5500/extr_w5500.c_WIZCHIP_READ.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5500/extr_w5500.c_WIZCHIP_READ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)*, i32 (...)* }

@WIZCHIP = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@_W5500_SPI_READ_ = common dso_local global i32 0, align 4
@_W5500_SPI_VDM_OP_ = common dso_local global i32 0, align 4
@LPC_SSP0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WIZCHIP_READ(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @WIZCHIP_CRITICAL_ENTER()
  %6 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 1), align 8
  %7 = call i32 (...) %6()
  %8 = load i32, i32* @_W5500_SPI_READ_, align 4
  %9 = load i32, i32* @_W5500_SPI_VDM_OP_, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 16711680
  %15 = ashr i32 %14, 16
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 65280
  %19 = ashr i32 %18, 8
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 255
  %23 = ashr i32 %22, 0
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @LPC_SSP0, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %27 = call i32 @Chip_SSP_WriteFrames_Blocking(i32 %25, i32* %26, i32 3)
  %28 = load i32, i32* @LPC_SSP0, align 4
  %29 = call i32 @Chip_SSP_ReadFrames_Blocking(i32 %28, i32* %3, i32 1)
  %30 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 0), align 8
  %31 = call i32 (...) %30()
  %32 = call i32 (...) @WIZCHIP_CRITICAL_EXIT()
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @WIZCHIP_CRITICAL_ENTER(...) #1

declare dso_local i32 @Chip_SSP_WriteFrames_Blocking(i32, i32*, i32) #1

declare dso_local i32 @Chip_SSP_ReadFrames_Blocking(i32, i32*, i32) #1

declare dso_local i32 @WIZCHIP_CRITICAL_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
