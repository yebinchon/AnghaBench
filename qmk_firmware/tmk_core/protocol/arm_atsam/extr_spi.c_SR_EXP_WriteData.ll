; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_spi.c_SR_EXP_WriteData.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_spi.c_SR_EXP_WriteData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SR_EXP_RCLK_LO = common dso_local global i32 0, align 4
@SR_EXP_SERCOM = common dso_local global %struct.TYPE_14__* null, align 8
@DC_SPI_WRITE_DRE = common dso_local global i32 0, align 4
@sr_exp_data = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@DC_SPI_WRITE_TXC_1 = common dso_local global i32 0, align 4
@DC_SPI_WRITE_TXC_2 = common dso_local global i32 0, align 4
@SR_EXP_RCLK_HI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SR_EXP_WriteData() #0 {
  %1 = load i32, i32* @SR_EXP_RCLK_LO, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SR_EXP_SERCOM, align 8
  %4 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @DC_SPI_WRITE_DRE, align 4
  %13 = call i32 @DBGC(i32 %12)
  br label %2

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sr_exp_data, i32 0, i32 0), align 4
  %16 = and i32 %15, 255
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SR_EXP_SERCOM, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  br label %22

22:                                               ; preds = %31, %14
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SR_EXP_SERCOM, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @DC_SPI_WRITE_TXC_1, align 4
  %33 = call i32 @DBGC(i32 %32)
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sr_exp_data, i32 0, i32 0), align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SR_EXP_SERCOM, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %52, %34
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SR_EXP_SERCOM, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @DC_SPI_WRITE_TXC_2, align 4
  %54 = call i32 @DBGC(i32 %53)
  br label %43

55:                                               ; preds = %43
  %56 = load i32, i32* @SR_EXP_RCLK_HI, align 4
  ret void
}

declare dso_local i32 @DBGC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
