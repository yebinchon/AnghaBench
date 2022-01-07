; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_DRV2605L.c_DRV_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_DRV2605L.c_DRV_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { double, i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, double, double, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }

@DRV_MODE = common dso_local global i32 0, align 4
@DRV_RATED_VOLT = common dso_local global i32 0, align 4
@RATED_VOLTAGE = common dso_local global double 0.000000e+00, align 8
@DRV_OVERDRIVE_CLAMP_VOLT = common dso_local global i32 0, align 4
@V_PEAK = common dso_local global double 0.000000e+00, align 8
@DRIVE_TIME = common dso_local global double 0.000000e+00, align 8
@BLANKING_TIME = common dso_local global double 0.000000e+00, align 8
@IDISS_TIME = common dso_local global double 0.000000e+00, align 8
@FB_ERM_LRA = common dso_local global i32 0, align 4
@FB_BRAKEFACTOR = common dso_local global i32 0, align 4
@FB_LOOPGAIN = common dso_local global i32 0, align 4
@DRV_FEEDBACK_CTRL = common dso_local global i32 0, align 4
@AC_COUPLE = common dso_local global i32 0, align 4
@STARTUP_BOOST = common dso_local global i32 0, align 4
@DRV_CTRL_1 = common dso_local global i32 0, align 4
@BIDIR_INPUT = common dso_local global i32 0, align 4
@BRAKE_STAB = common dso_local global i32 0, align 4
@SAMPLE_TIME = common dso_local global i32 0, align 4
@DRV_CTRL_2 = common dso_local global i32 0, align 4
@LRA_OPEN_LOOP = common dso_local global i32 0, align 4
@N_PWM_ANALOG = common dso_local global i32 0, align 4
@LRA_DRIVE_MODE = common dso_local global i32 0, align 4
@DATA_FORMAT_RTO = common dso_local global i32 0, align 4
@SUPPLY_COMP_DIS = common dso_local global i32 0, align 4
@ERM_OPEN_LOOP = common dso_local global i32 0, align 4
@NG_THRESH = common dso_local global i32 0, align 4
@DRV_CTRL_3 = common dso_local global i32 0, align 4
@ZC_DET_TIME = common dso_local global i32 0, align 4
@AUTO_CAL_TIME = common dso_local global i32 0, align 4
@DRV_CTRL_4 = common dso_local global i32 0, align 4
@DRV_LIB_SELECTION = common dso_local global i32 0, align 4
@LIB_SELECTION = common dso_local global i32 0, align 4
@DRV_GO = common dso_local global i32 0, align 4
@DRV_WAVEFORM_SEQ_1 = common dso_local global i32 0, align 4
@DRV_GREETING = common dso_local global i32 0, align 4
@F_LRA = common dso_local global i32 0, align 4
@V_RMS = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DRV_init() #0 {
  %1 = alloca %struct.TYPE_17__, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_20__, align 8
  %4 = alloca %struct.TYPE_19__, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = call i32 (...) @i2c_init()
  %7 = load i32, i32* @DRV_MODE, align 4
  %8 = call i32 @DRV_write(i32 %7, i32 7)
  %9 = load i32, i32* @DRV_RATED_VOLT, align 4
  %10 = load double, double* @RATED_VOLTAGE, align 8
  %11 = fdiv double %10, 2.133000e+01
  %12 = fmul double %11, 1.000000e+03
  %13 = fptosi double %12 to i32
  %14 = call i32 @DRV_write(i32 %9, i32 %13)
  %15 = load i32, i32* @DRV_OVERDRIVE_CLAMP_VOLT, align 4
  %16 = load double, double* @V_PEAK, align 8
  %17 = load double, double* @DRIVE_TIME, align 8
  %18 = load double, double* @BLANKING_TIME, align 8
  %19 = fadd double %17, %18
  %20 = load double, double* @IDISS_TIME, align 8
  %21 = fadd double %19, %20
  %22 = fmul double %16, %21
  %23 = fdiv double %22, 2.133000e-02
  %24 = load double, double* @DRIVE_TIME, align 8
  %25 = fsub double %24, 3.000000e-04
  %26 = fdiv double %23, %25
  %27 = fptosi double %26 to i32
  %28 = call i32 @DRV_write(i32 %15, i32 %27)
  %29 = load i32, i32* @FB_ERM_LRA, align 4
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @FB_BRAKEFACTOR, align 4
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @FB_LOOPGAIN, align 4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @DRV_FEEDBACK_CTRL, align 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @DRV_write(i32 %40, i32 %43)
  %45 = load double, double* @DRIVE_TIME, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store double %45, double* %47, align 8
  %48 = load i32, i32* @AC_COUPLE, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @STARTUP_BOOST, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @DRV_CTRL_1, align 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %2, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @DRV_write(i32 %54, i32 %57)
  %59 = load i32, i32* @BIDIR_INPUT, align 4
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @BRAKE_STAB, align 4
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @SAMPLE_TIME, align 4
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load double, double* @BLANKING_TIME, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store double %68, double* %70, align 8
  %71 = load double, double* @IDISS_TIME, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  store double %71, double* %73, align 8
  %74 = load i32, i32* @DRV_CTRL_2, align 4
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @DRV_write(i32 %74, i32 %77)
  %79 = load i32, i32* @LRA_OPEN_LOOP, align 4
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @N_PWM_ANALOG, align 4
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @LRA_DRIVE_MODE, align 4
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @DATA_FORMAT_RTO, align 4
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @SUPPLY_COMP_DIS, align 4
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @ERM_OPEN_LOOP, align 4
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @NG_THRESH, align 4
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @DRV_CTRL_3, align 4
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @DRV_write(i32 %100, i32 %103)
  %105 = load i32, i32* @ZC_DET_TIME, align 4
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @AUTO_CAL_TIME, align 4
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @DRV_CTRL_4, align 4
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @DRV_write(i32 %111, i32 %114)
  %116 = load i32, i32* @DRV_LIB_SELECTION, align 4
  %117 = load i32, i32* @LIB_SELECTION, align 4
  %118 = call i32 @DRV_write(i32 %116, i32 %117)
  %119 = load i32, i32* @DRV_GO, align 4
  %120 = call i32 @DRV_write(i32 %119, i32 1)
  %121 = load i32, i32* @DRV_MODE, align 4
  %122 = call i32 @DRV_write(i32 %121, i32 0)
  %123 = load i32, i32* @DRV_GO, align 4
  %124 = call i32 @DRV_write(i32 %123, i32 0)
  %125 = load i32, i32* @DRV_WAVEFORM_SEQ_1, align 4
  %126 = load i32, i32* @DRV_GREETING, align 4
  %127 = call i32 @DRV_write(i32 %125, i32 %126)
  %128 = load i32, i32* @DRV_GO, align 4
  %129 = call i32 @DRV_write(i32 %128, i32 1)
  ret void
}

declare dso_local i32 @i2c_init(...) #1

declare dso_local i32 @DRV_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
