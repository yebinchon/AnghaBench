; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_clks.c_CLK_enable_timebase.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_clks.c_CLK_enable_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_69__ = type { %struct.TYPE_61__* }
%struct.TYPE_61__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { i32, i8* }
%struct.TYPE_68__ = type { %struct.TYPE_59__, %struct.TYPE_49__, %struct.TYPE_63__ }
%struct.TYPE_59__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_63__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i32 }
%struct.TYPE_67__ = type { %struct.TYPE_57__, %struct.TYPE_47__ }
%struct.TYPE_57__ = type { %struct.TYPE_56__, %struct.TYPE_54__, %struct.TYPE_51__ }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i32, i32 }
%struct.TYPE_54__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i32, i32, i64 }
%struct.TYPE_51__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i64, i64 }
%struct.TYPE_47__ = type { %struct.TYPE_46__, %struct.TYPE_44__, %struct.TYPE_42__, %struct.TYPE_76__, %struct.TYPE_74__*, %struct.TYPE_73__, %struct.TYPE_72__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_77__ }
%struct.TYPE_77__ = type { i32 }
%struct.TYPE_76__ = type { %struct.TYPE_75__ }
%struct.TYPE_75__ = type { i64, i64, i64, i64 }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_72__ = type { %struct.TYPE_71__ }
%struct.TYPE_71__ = type { i32, i64 }
%struct.TYPE_70__ = type { %struct.TYPE_66__*, %struct.TYPE_62__* }
%struct.TYPE_66__ = type { %struct.TYPE_65__ }
%struct.TYPE_65__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i32, i32, i32 }
%struct.TYPE_62__ = type { i32 }

@GCLK = common dso_local global %struct.TYPE_69__* null, align 8
@MCLK = common dso_local global %struct.TYPE_68__* null, align 8
@TC4 = common dso_local global %struct.TYPE_67__* null, align 8
@TC0 = common dso_local global %struct.TYPE_67__* null, align 8
@EVSYS = common dso_local global %struct.TYPE_70__* null, align 8
@DC_CLK_ENABLE_TIMEBASE_BEGIN = common dso_local global i32 0, align 4
@GEN_TC45 = common dso_local global i8* null, align 8
@FREQ_TC45_DEFAULT = common dso_local global i32 0, align 4
@TC4_GCLK_ID = common dso_local global i64 0, align 8
@DC_CLK_ENABLE_TIMEBASE_TC4_BEGIN = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_DISABLE = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_SWRST_1 = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_SWRST_2 = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_CLTRB = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_CC0 = common dso_local global i32 0, align 4
@TC4_IRQn = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC4_COMPLETE = common dso_local global i32 0, align 4
@TC0_GCLK_ID = common dso_local global i64 0, align 8
@TC1_GCLK_ID = common dso_local global i64 0, align 8
@DC_CLK_ENABLE_TIMEBASE_TC0_BEGIN = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC0_SYNC_DISABLE = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC0_SYNC_SWRST_1 = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC0_SYNC_SWRST_2 = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_TC0_COMPLETE = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_EVSYS_BEGIN = common dso_local global i32 0, align 4
@EVSYS_GCLK_ID_0 = common dso_local global i64 0, align 8
@EVSYS_ID_USER_PORT_EV_0 = common dso_local global i32 0, align 4
@EVSYS_CHANNEL_EDGSEL_RISING_EDGE_Val = common dso_local global i32 0, align 4
@EVSYS_CHANNEL_PATH_SYNCHRONOUS_Val = common dso_local global i32 0, align 4
@EVSYS_ID_GEN_TC4_MCX_0 = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_EVSYS_COMPLETE = common dso_local global i32 0, align 4
@DC_CLK_ENABLE_TIMEBASE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CLK_enable_timebase() #0 {
  %1 = alloca %struct.TYPE_69__*, align 8
  %2 = alloca %struct.TYPE_68__*, align 8
  %3 = alloca %struct.TYPE_67__*, align 8
  %4 = alloca %struct.TYPE_67__*, align 8
  %5 = alloca %struct.TYPE_70__*, align 8
  %6 = load %struct.TYPE_69__*, %struct.TYPE_69__** @GCLK, align 8
  store %struct.TYPE_69__* %6, %struct.TYPE_69__** %1, align 8
  %7 = load %struct.TYPE_68__*, %struct.TYPE_68__** @MCLK, align 8
  store %struct.TYPE_68__* %7, %struct.TYPE_68__** %2, align 8
  %8 = load %struct.TYPE_67__*, %struct.TYPE_67__** @TC4, align 8
  store %struct.TYPE_67__* %8, %struct.TYPE_67__** %3, align 8
  %9 = load %struct.TYPE_67__*, %struct.TYPE_67__** @TC0, align 8
  store %struct.TYPE_67__* %9, %struct.TYPE_67__** %4, align 8
  %10 = load %struct.TYPE_70__*, %struct.TYPE_70__** @EVSYS, align 8
  store %struct.TYPE_70__* %10, %struct.TYPE_70__** %5, align 8
  %11 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_BEGIN, align 4
  %12 = call i32 @DBGC(i32 %11)
  %13 = load i8*, i8** @GEN_TC45, align 8
  %14 = load i32, i32* @FREQ_TC45_DEFAULT, align 4
  %15 = call i32 @CLK_set_gclk_freq(i8* %13, i32 %14)
  %16 = call i32 (...) @CLK_init_osc()
  %17 = load %struct.TYPE_68__*, %struct.TYPE_68__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i8*, i8** @GEN_TC45, align 8
  %22 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %25 = load i64, i64* @TC4_GCLK_ID, align 8
  %26 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %27, i32 0, i32 1
  store i8* %21, i8** %28, align 8
  %29 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_61__*, %struct.TYPE_61__** %30, align 8
  %32 = load i64, i64* @TC4_GCLK_ID, align 8
  %33 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC4_BEGIN, align 4
  %37 = call i32 @DBGC(i32 %36)
  %38 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %51, %0
  %44 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_DISABLE, align 4
  %53 = call i32 @DBGC(i32 %52)
  br label %43

54:                                               ; preds = %43
  %55 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %68, %54
  %61 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_SWRST_1, align 4
  %70 = call i32 @DBGC(i32 %69)
  br label %60

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %80, %71
  %73 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_SWRST_2, align 4
  %82 = call i32 @DBGC(i32 %81)
  br label %72

83:                                               ; preds = %72
  %84 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %86, i32 0, i32 0
  store i32 5, i32* %87, align 8
  br label %88

88:                                               ; preds = %96, %83
  %89 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_CLTRB, align 4
  %98 = call i32 @DBGC(i32 %97)
  br label %88

99:                                               ; preds = %88
  %100 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_74__*, %struct.TYPE_74__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %104, i32 0, i32 0
  store i32 999, i32* %105, align 4
  br label %106

106:                                              ; preds = %114, %99
  %107 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC4_SYNC_CC0, align 4
  %116 = call i32 @DBGC(i32 %115)
  br label %106

117:                                              ; preds = %106
  %118 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  %128 = load i32, i32* @TC4_IRQn, align 4
  %129 = call i32 @NVIC_EnableIRQ(i32 %128)
  %130 = load %struct.TYPE_67__*, %struct.TYPE_67__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC4_COMPLETE, align 4
  %136 = call i32 @DBGC(i32 %135)
  %137 = load %struct.TYPE_68__*, %struct.TYPE_68__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  %141 = load i8*, i8** @GEN_TC45, align 8
  %142 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %143 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_61__*, %struct.TYPE_61__** %143, align 8
  %145 = load i64, i64* @TC0_GCLK_ID, align 8
  %146 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %147, i32 0, i32 1
  store i8* %141, i8** %148, align 8
  %149 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %150 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_61__*, %struct.TYPE_61__** %150, align 8
  %152 = load i64, i64* @TC0_GCLK_ID, align 8
  %153 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.TYPE_68__*, %struct.TYPE_68__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = load i8*, i8** @GEN_TC45, align 8
  %161 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %162 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_61__*, %struct.TYPE_61__** %162, align 8
  %164 = load i64, i64* @TC1_GCLK_ID, align 8
  %165 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %166, i32 0, i32 1
  store i8* %160, i8** %167, align 8
  %168 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %169 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_61__*, %struct.TYPE_61__** %169, align 8
  %171 = load i64, i64* @TC1_GCLK_ID, align 8
  %172 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC0_BEGIN, align 4
  %176 = call i32 @DBGC(i32 %175)
  %177 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %180, i32 0, i32 2
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %190, %117
  %183 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC0_SYNC_DISABLE, align 4
  %192 = call i32 @DBGC(i32 %191)
  br label %182

193:                                              ; preds = %182
  %194 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %207, %193
  %200 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC0_SYNC_SWRST_1, align 4
  %209 = call i32 @DBGC(i32 %208)
  br label %199

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %219, %210
  %212 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC0_SYNC_SWRST_2, align 4
  %221 = call i32 @DBGC(i32 %220)
  br label %211

222:                                              ; preds = %211
  %223 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %226, i32 0, i32 1
  store i32 2, i32* %227, align 4
  %228 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  %233 = load %struct.TYPE_67__*, %struct.TYPE_67__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %236, i32 0, i32 1
  store i32 2, i32* %237, align 4
  %238 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_TC0_COMPLETE, align 4
  %239 = call i32 @DBGC(i32 %238)
  %240 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_EVSYS_BEGIN, align 4
  %241 = call i32 @DBGC(i32 %240)
  %242 = load %struct.TYPE_68__*, %struct.TYPE_68__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %244, i32 0, i32 0
  store i32 1, i32* %245, align 4
  %246 = load i8*, i8** @GEN_TC45, align 8
  %247 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %248 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_61__*, %struct.TYPE_61__** %248, align 8
  %250 = load i64, i64* @EVSYS_GCLK_ID_0, align 8
  %251 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %252, i32 0, i32 1
  store i8* %246, i8** %253, align 8
  %254 = load %struct.TYPE_69__*, %struct.TYPE_69__** %1, align 8
  %255 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_61__*, %struct.TYPE_61__** %255, align 8
  %257 = load i64, i64* @EVSYS_GCLK_ID_0, align 8
  %258 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %259, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = load i32, i32* @EVSYS_ID_USER_PORT_EV_0, align 4
  %262 = load %struct.TYPE_70__*, %struct.TYPE_70__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_62__*, %struct.TYPE_62__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %264, i64 44
  %266 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %265, i32 0, i32 0
  store i32 %261, i32* %266, align 4
  %267 = load i32, i32* @EVSYS_CHANNEL_EDGSEL_RISING_EDGE_Val, align 4
  %268 = load %struct.TYPE_70__*, %struct.TYPE_70__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_66__*, %struct.TYPE_66__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %273, i32 0, i32 2
  store i32 %267, i32* %274, align 4
  %275 = load i32, i32* @EVSYS_CHANNEL_PATH_SYNCHRONOUS_Val, align 4
  %276 = load %struct.TYPE_70__*, %struct.TYPE_70__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_66__*, %struct.TYPE_66__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %281, i32 0, i32 1
  store i32 %275, i32* %282, align 4
  %283 = load i32, i32* @EVSYS_ID_GEN_TC4_MCX_0, align 4
  %284 = load %struct.TYPE_70__*, %struct.TYPE_70__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_66__*, %struct.TYPE_66__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %289, i32 0, i32 0
  store i32 %283, i32* %290, align 4
  %291 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_EVSYS_COMPLETE, align 4
  %292 = call i32 @DBGC(i32 %291)
  %293 = call i32 (...) @CLK_reset_time()
  %294 = call i32 (...) @ADC0_clock_init()
  %295 = load i32, i32* @DC_CLK_ENABLE_TIMEBASE_COMPLETE, align 4
  %296 = call i32 @DBGC(i32 %295)
  ret i32 0
}

declare dso_local i32 @DBGC(i32) #1

declare dso_local i32 @CLK_set_gclk_freq(i8*, i32) #1

declare dso_local i32 @CLK_init_osc(...) #1

declare dso_local i32 @NVIC_EnableIRQ(i32) #1

declare dso_local i32 @CLK_reset_time(...) #1

declare dso_local i32 @ADC0_clock_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
