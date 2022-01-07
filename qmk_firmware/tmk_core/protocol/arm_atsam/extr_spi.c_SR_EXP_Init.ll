; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_spi.c_SR_EXP_Init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_spi.c_SR_EXP_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_29__ }
%struct.TYPE_16__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@DC_SPI_INIT_BEGIN = common dso_local global i32 0, align 4
@CHAN_SERCOM_SPI = common dso_local global i32 0, align 4
@FREQ_SPI_DEFAULT = common dso_local global i32 0, align 4
@SR_EXP_RCLK_PIN = common dso_local global i32 0, align 4
@PORT = common dso_local global %struct.TYPE_21__* null, align 8
@SR_EXP_RCLK_PORT = common dso_local global i64 0, align 8
@SR_EXP_OE_N_PIN = common dso_local global i32 0, align 4
@SR_EXP_OE_N_PORT = common dso_local global i64 0, align 8
@SR_EXP_DATAOUT_MUX = common dso_local global i32 0, align 4
@SR_EXP_DATAOUT_PORT = common dso_local global i64 0, align 8
@SR_EXP_DATAOUT_PIN = common dso_local global i32 0, align 4
@SR_EXP_SCLK_MUX = common dso_local global i32 0, align 4
@SR_EXP_SCLK_PORT = common dso_local global i64 0, align 8
@SR_EXP_SCLK_PIN = common dso_local global i32 0, align 4
@SR_EXP_OE_N_DIS = common dso_local global i32 0, align 4
@SR_EXP_RCLK_HI = common dso_local global i32 0, align 4
@SR_EXP_SERCOM = common dso_local global %struct.TYPE_20__* null, align 8
@DC_SPI_SYNC_ENABLING = common dso_local global i32 0, align 4
@sr_exp_data = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@SR_EXP_OE_N_ENA = common dso_local global i32 0, align 4
@DC_SPI_INIT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SR_EXP_Init() #0 {
  %1 = load i32, i32* @DC_SPI_INIT_BEGIN, align 4
  %2 = call i32 @DBGC(i32 %1)
  %3 = load i32, i32* @CHAN_SERCOM_SPI, align 4
  %4 = load i32, i32* @FREQ_SPI_DEFAULT, align 4
  %5 = call i32 @CLK_set_spi_freq(i32 %3, i32 %4)
  %6 = load i32, i32* @SR_EXP_RCLK_PIN, align 4
  %7 = shl i32 1, %6
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PORT, align 8
  %9 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %11 = load i64, i64* @SR_EXP_RCLK_PORT, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store i32 %7, i32* %14, align 8
  %15 = load i32, i32* @SR_EXP_OE_N_PIN, align 4
  %16 = shl i32 1, %15
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PORT, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %20 = load i64, i64* @SR_EXP_OE_N_PORT, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  store i32 %16, i32* %23, align 8
  %24 = load i32, i32* @SR_EXP_DATAOUT_MUX, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PORT, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  %28 = load i64, i64* @SR_EXP_DATAOUT_PORT, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  %32 = load i32, i32* @SR_EXP_DATAOUT_PIN, align 4
  %33 = sdiv i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  store i32 %24, i32* %37, align 4
  %38 = load i32, i32* @SR_EXP_SCLK_MUX, align 4
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PORT, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %40, align 8
  %42 = load i64, i64* @SR_EXP_SCLK_PORT, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  %46 = load i32, i32* @SR_EXP_SCLK_PIN, align 4
  %47 = sdiv i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  store i32 %38, i32* %51, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PORT, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %53, align 8
  %55 = load i64, i64* @SR_EXP_DATAOUT_PORT, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = load i32, i32* @SR_EXP_DATAOUT_PIN, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** @PORT, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %65, align 8
  %67 = load i64, i64* @SR_EXP_SCLK_PORT, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %69, align 8
  %71 = load i32, i32* @SR_EXP_SCLK_PIN, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @SR_EXP_OE_N_DIS, align 4
  %77 = load i32, i32* @SR_EXP_RCLK_HI, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 3
  store i32 3, i32* %97, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 6
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 4
  store i32 3, i32* %107, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 5
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %121, %0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SR_EXP_SERCOM, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* @DC_SPI_SYNC_ENABLING, align 4
  %123 = call i32 @DBGC(i32 %122)
  br label %113

124:                                              ; preds = %113
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 9), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 7), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 5), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sr_exp_data, i32 0, i32 0, i32 6), align 8
  %125 = call i32 (...) @SR_EXP_WriteData()
  %126 = load i32, i32* @SR_EXP_OE_N_ENA, align 4
  %127 = load i32, i32* @DC_SPI_INIT_COMPLETE, align 4
  %128 = call i32 @DBGC(i32 %127)
  ret void
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @CLK_set_spi_freq(i32, i32) #1

declare dso_local i32 @SR_EXP_WriteData(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
