; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_clks.c_CLK_oscctrl_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_clks.c_CLK_oscctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_30__*, %struct.TYPE_41__, %struct.TYPE_39__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_45__, %struct.TYPE_43__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i64, i64 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i64, i64 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32, i64 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_39__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_37__ = type { %struct.TYPE_34__, %struct.TYPE_32__* }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_38__ = type { i32, i32*, i32, i32* }

@OSCCTRL = common dso_local global %struct.TYPE_36__* null, align 8
@GCLK = common dso_local global %struct.TYPE_37__* null, align 8
@DC_CLK_OSC_INIT_BEGIN = common dso_local global i32 0, align 4
@FREQ_DFLL_DEFAULT = common dso_local global i32 0, align 4
@system_clks = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@DC_CLK_OSC_INIT_XOSC0_SYNC = common dso_local global i32 0, align 4
@FREQ_XOSC0 = common dso_local global i32 0, align 4
@USE_DPLL_IND = common dso_local global i64 0, align 8
@DC_CLK_OSC_INIT_DPLL_SYNC_DISABLE = common dso_local global i32 0, align 4
@PLL_RATIO = common dso_local global i32 0, align 4
@DC_CLK_OSC_INIT_DPLL_SYNC_RATIO = common dso_local global i32 0, align 4
@DC_CLK_OSC_INIT_DPLL_SYNC_ENABLE = common dso_local global i32 0, align 4
@DC_CLK_OSC_INIT_DPLL_WAIT_LOCK = common dso_local global i32 0, align 4
@DC_CLK_OSC_INIT_DPLL_WAIT_CLKRDY = common dso_local global i32 0, align 4
@USE_DPLL_DEF = common dso_local global i32 0, align 4
@GEN_DPLL0 = common dso_local global i64 0, align 8
@DC_CLK_OSC_INIT_GCLK_SYNC_GENCTRL0 = common dso_local global i32 0, align 4
@USEC_DELAY_LOOP_CYCLES = common dso_local global i32 0, align 4
@usec_delay_mult = common dso_local global i32 0, align 4
@DC_CLK_OSC_INIT_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CLK_oscctrl_init() #0 {
  %1 = alloca %struct.TYPE_36__*, align 8
  %2 = alloca %struct.TYPE_37__*, align 8
  %3 = load %struct.TYPE_36__*, %struct.TYPE_36__** @OSCCTRL, align 8
  store %struct.TYPE_36__* %3, %struct.TYPE_36__** %1, align 8
  %4 = load %struct.TYPE_37__*, %struct.TYPE_37__** @GCLK, align 8
  store %struct.TYPE_37__* %4, %struct.TYPE_37__** %2, align 8
  %5 = load i32, i32* @DC_CLK_OSC_INIT_BEGIN, align 4
  %6 = call i32 @DBGC(i32 %5)
  %7 = load i32, i32* @FREQ_DFLL_DEFAULT, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 0), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 0), align 8
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 1), align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %21, i32 0, i32 1
  store i32 13, i32* %22, align 4
  %23 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_39__*, %struct.TYPE_39__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 3
  store i32 5, i32* %34, align 4
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_39__*, %struct.TYPE_39__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 4
  store i32 3, i32* %40, align 8
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_39__*, %struct.TYPE_39__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %66, %0
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @DC_CLK_OSC_INIT_XOSC0_SYNC, align 4
  %68 = call i32 @DBGC(i32 %67)
  br label %59

69:                                               ; preds = %59
  %70 = load i32, i32* @FREQ_XOSC0, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 2), align 8
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %72, align 8
  %74 = load i64, i64* @USE_DPLL_IND, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %90, %69
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %81, align 8
  %83 = load i64, i64* @USE_DPLL_IND, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load i32, i32* @DC_CLK_OSC_INIT_DPLL_SYNC_DISABLE, align 4
  %92 = call i32 @DBGC(i32 %91)
  br label %79

93:                                               ; preds = %79
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %95, align 8
  %97 = load i64, i64* @USE_DPLL_IND, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  store i32 2, i32* %101, align 4
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %103, align 8
  %105 = load i64, i64* @USE_DPLL_IND, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  store i32 7, i32* %109, align 4
  %110 = load i32, i32* @PLL_RATIO, align 4
  %111 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %112 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %112, align 8
  %114 = load i64, i64* @USE_DPLL_IND, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 0
  store i32 %110, i32* %118, align 8
  br label %119

119:                                              ; preds = %130, %93
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %121, align 8
  %123 = load i64, i64* @USE_DPLL_IND, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %119
  %131 = load i32, i32* @DC_CLK_OSC_INIT_DPLL_SYNC_RATIO, align 4
  %132 = call i32 @DBGC(i32 %131)
  br label %119

133:                                              ; preds = %119
  %134 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %135, align 8
  %137 = load i64, i64* @USE_DPLL_IND, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %143, align 8
  %145 = load i64, i64* @USE_DPLL_IND, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  br label %150

150:                                              ; preds = %161, %133
  %151 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %152, align 8
  %154 = load i64, i64* @USE_DPLL_IND, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load i32, i32* @DC_CLK_OSC_INIT_DPLL_SYNC_ENABLE, align 4
  %163 = call i32 @DBGC(i32 %162)
  br label %150

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %176, %164
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %167 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %167, align 8
  %169 = load i64, i64* @USE_DPLL_IND, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load i32, i32* @DC_CLK_OSC_INIT_DPLL_WAIT_LOCK, align 4
  %178 = call i32 @DBGC(i32 %177)
  br label %165

179:                                              ; preds = %165
  br label %180

180:                                              ; preds = %191, %179
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %182, align 8
  %184 = load i64, i64* @USE_DPLL_IND, align 8
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %180
  %192 = load i32, i32* @DC_CLK_OSC_INIT_DPLL_WAIT_CLKRDY, align 4
  %193 = call i32 @DBGC(i32 %192)
  br label %180

194:                                              ; preds = %180
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 2), align 8
  %196 = sdiv i32 %195, 2
  %197 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %198 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %198, align 8
  %200 = load i64, i64* @USE_DPLL_IND, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  %207 = sdiv i32 %196, %206
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %209, align 8
  %211 = load i64, i64* @USE_DPLL_IND, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  %218 = mul nsw i32 %207, %217
  %219 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 3), align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @USE_DPLL_DEF, align 4
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %223, align 8
  %225 = load i64, i64* @GEN_DPLL0, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %227, i32 0, i32 0
  store i32 %221, i32* %228, align 4
  br label %229

229:                                              ; preds = %236, %194
  %230 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %229
  %237 = load i32, i32* @DC_CLK_OSC_INIT_GCLK_SYNC_GENCTRL0, align 4
  %238 = call i32 @DBGC(i32 %237)
  br label %229

239:                                              ; preds = %229
  %240 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 3), align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 1), align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %242, i32* %244, align 4
  %245 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @system_clks, i32 0, i32 1), align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @USEC_DELAY_LOOP_CYCLES, align 4
  %249 = mul nsw i32 %248, 1000000
  %250 = sdiv i32 %247, %249
  store i32 %250, i32* @usec_delay_mult, align 4
  %251 = load i32, i32* @usec_delay_mult, align 4
  %252 = icmp slt i32 %251, 1
  br i1 %252, label %253, label %254

253:                                              ; preds = %239
  store i32 1, i32* @usec_delay_mult, align 4
  br label %254

254:                                              ; preds = %253, %239
  %255 = load i32, i32* @DC_CLK_OSC_INIT_COMPLETE, align 4
  %256 = call i32 @DBGC(i32 %255)
  ret void
}

declare dso_local i32 @DBGC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
