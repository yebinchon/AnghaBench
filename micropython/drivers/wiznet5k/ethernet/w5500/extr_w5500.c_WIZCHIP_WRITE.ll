; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5500/extr_w5500.c_WIZCHIP_WRITE.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/w5500/extr_w5500.c_WIZCHIP_WRITE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (...)*, i32 (...)* }

@WIZCHIP = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@_W5500_SPI_WRITE_ = common dso_local global i32 0, align 4
@_W5500_SPI_VDM_OP_ = common dso_local global i32 0, align 4
@LPC_SSP0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WIZCHIP_WRITE(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @WIZCHIP_CRITICAL_ENTER()
  %7 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 1), align 8
  %8 = call i32 (...) %7()
  %9 = load i32, i32* @_W5500_SPI_WRITE_, align 4
  %10 = load i32, i32* @_W5500_SPI_VDM_OP_, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 16711680
  %16 = ashr i32 %15, 16
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 65280
  %20 = ashr i32 %19, 8
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 255
  %24 = ashr i32 %23, 0
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @LPC_SSP0, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %30 = call i32 @Chip_SSP_WriteFrames_Blocking(i32 %28, i32* %29, i32 4)
  %31 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 0), align 8
  %32 = call i32 (...) %31()
  %33 = call i32 (...) @WIZCHIP_CRITICAL_EXIT()
  ret void
}

declare dso_local i32 @WIZCHIP_CRITICAL_ENTER(...) #1

declare dso_local i32 @Chip_SSP_WriteFrames_Blocking(i32, i32*, i32) #1

declare dso_local i32 @WIZCHIP_CRITICAL_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
