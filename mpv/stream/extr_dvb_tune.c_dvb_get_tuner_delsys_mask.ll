; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_get_tuner_delsys_mask.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_dvb_get_tuner_delsys_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.dtv_property = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64* }
%struct.dtv_properties = type { i32, i32, i32, i32, %struct.dtv_property* }
%struct.dvb_frontend_info = type { i32, i32, i32, i32, %struct.dtv_property* }

@.str = private unnamed_addr constant [67 x i8] c"Querying tuner frontend type via pre-DVBv5 API for frontend FD %d\0A\00", align 1
@FE_GET_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"DVBv3: FE_GET_INFO error: %d, FD: %d\0A\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@DTV_API_VERSION = common dso_local global i32 0, align 4
@FE_GET_PROPERTY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"DVBv3: Queried tuner frontend type of device named '%s', FD: %d\0A\00", align 1
@SYS_DVBT = common dso_local global i32 0, align 4
@FE_CAN_2G_MODULATION = common dso_local global i32 0, align 4
@SYS_DVBT2 = common dso_local global i32 0, align 4
@SYS_DVBS = common dso_local global i32 0, align 4
@SYS_DVBS2 = common dso_local global i32 0, align 4
@SYS_DVBC_ANNEX_A = common dso_local global i32 0, align 4
@SYS_DVBC_ANNEX_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"DVBv3: Unknown tuner frontend type: %d\0A\00", align 1
@SYS_DVB__COUNT__ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"DVBv3: Tuner frontend type seems to be %s\0A\00", align 1
@DTV_ENUM_DELSYS = common dso_local global i32 0, align 4
@FE_CAN_16VSB = common dso_local global i32 0, align 4
@FE_CAN_8VSB = common dso_local global i32 0, align 4
@FE_CAN_QAM_256 = common dso_local global i32 0, align 4
@FE_CAN_QAM_64 = common dso_local global i32 0, align 4
@FE_CAN_QAM_AUTO = common dso_local global i32 0, align 4
@FE_CAN_TURBO_FEC = common dso_local global i32 0, align 4
@SYS_ATSC = common dso_local global i32 0, align 4
@SYS_DVBC_ANNEX_B = common dso_local global i32 0, align 4
@SYS_TURBO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_get_tuner_delsys_mask(i32 %0, %struct.mp_log* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.dtv_property], align 16
  %9 = alloca %struct.dtv_properties, align 8
  %10 = alloca %struct.dvb_frontend_info, align 8
  store i32 %0, i32* %4, align 4
  store %struct.mp_log* %1, %struct.mp_log** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %9, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %9, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %9, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %9, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.dtv_properties, %struct.dtv_properties* %9, i32 0, i32 4
  %16 = getelementptr inbounds [1 x %struct.dtv_property], [1 x %struct.dtv_property]* %8, i64 0, i64 0
  store %struct.dtv_property* %16, %struct.dtv_property** %15, align 8
  %17 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_verbose(%struct.mp_log* %17, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @memset(%struct.dvb_frontend_info* %10, i32 0, i32 24)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FE_GET_INFO, align 4
  %23 = call i64 @ioctl(i32 %21, i32 %22, %struct.dvb_frontend_info* %10)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %128

31:                                               ; preds = %2
  %32 = load i32, i32* @DTV_API_VERSION, align 4
  %33 = getelementptr inbounds [1 x %struct.dtv_property], [1 x %struct.dtv_property]* %8, i64 0, i64 0
  %34 = getelementptr inbounds %struct.dtv_property, %struct.dtv_property* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @FE_GET_PROPERTY, align 4
  %37 = bitcast %struct.dtv_properties* %9 to %struct.dvb_frontend_info*
  %38 = call i64 @ioctl(i32 %35, i32 %36, %struct.dvb_frontend_info* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds [1 x %struct.dtv_property], [1 x %struct.dtv_property]* %8, i64 0, i64 0
  %42 = getelementptr inbounds %struct.dtv_property, %struct.dtv_property* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 768, i32* %43, align 16
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend_info, %struct.dvb_frontend_info* %10, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_verbose(%struct.mp_log* %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  %50 = getelementptr inbounds %struct.dvb_frontend_info, %struct.dvb_frontend_info* %10, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %101 [
    i32 130, label %52
    i32 128, label %73
    i32 129, label %94
  ]

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SYS_DVBT, align 4
  %55 = call i32 @DELSYS_SET(i32 %53, i32 %54)
  %56 = getelementptr inbounds [1 x %struct.dtv_property], [1 x %struct.dtv_property]* %8, i64 0, i64 0
  %57 = getelementptr inbounds %struct.dtv_property, %struct.dtv_property* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 16
  %60 = icmp slt i32 %59, 1280
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %107

62:                                               ; preds = %52
  %63 = load i32, i32* @FE_CAN_2G_MODULATION, align 4
  %64 = getelementptr inbounds %struct.dvb_frontend_info, %struct.dvb_frontend_info* %10, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @SYS_DVBT2, align 4
  %71 = call i32 @DELSYS_SET(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %62
  br label %107

73:                                               ; preds = %44
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SYS_DVBS, align 4
  %76 = call i32 @DELSYS_SET(i32 %74, i32 %75)
  %77 = getelementptr inbounds [1 x %struct.dtv_property], [1 x %struct.dtv_property]* %8, i64 0, i64 0
  %78 = getelementptr inbounds %struct.dtv_property, %struct.dtv_property* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp slt i32 %80, 1280
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %107

83:                                               ; preds = %73
  %84 = load i32, i32* @FE_CAN_2G_MODULATION, align 4
  %85 = getelementptr inbounds %struct.dvb_frontend_info, %struct.dvb_frontend_info* %10, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @SYS_DVBS2, align 4
  %92 = call i32 @DELSYS_SET(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %83
  br label %107

94:                                               ; preds = %44
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @SYS_DVBC_ANNEX_A, align 4
  %97 = call i32 @DELSYS_SET(i32 %95, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @SYS_DVBC_ANNEX_C, align 4
  %100 = call i32 @DELSYS_SET(i32 %98, i32 %99)
  br label %107

101:                                              ; preds = %44
  %102 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend_info, %struct.dvb_frontend_info* %10, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %128

107:                                              ; preds = %94, %93, %82, %72, %61
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %123, %107
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @SYS_DVB__COUNT__, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @DELSYS_IS_SET(i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %123

118:                                              ; preds = %112
  %119 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @get_dvb_delsys(i32 %120)
  %122 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_verbose(%struct.mp_log* %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118, %117
  %124 = load i32, i32* %7, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %108

126:                                              ; preds = %108
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %101, %25
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @mp_verbose(%struct.mp_log*, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.dvb_frontend_info*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.dvb_frontend_info*) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, ...) #1

declare dso_local i32 @DELSYS_SET(i32, i32) #1

declare dso_local i32 @DELSYS_IS_SET(i32, i32) #1

declare dso_local i32 @get_dvb_delsys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
