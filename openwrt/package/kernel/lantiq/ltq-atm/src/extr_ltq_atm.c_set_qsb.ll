; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_set_qsb.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_set_qsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.atm_qos = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.clk = type { i32 }
%union.qsb_queue_parameter_table = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%union.qsb_queue_vbr_parameter_table = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@FIRST_QSB_QID = common dso_local global i32 0, align 4
@__const.set_qsb.qsb_queue_parameter_table = private unnamed_addr constant { i32, [8 x i8] } { i32 0, [8 x i8] undef }, align 4
@__const.set_qsb.qsb_queue_vbr_parameter_table = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@qsb_tstep = common dso_local global i32 0, align 4
@QSB_TP_TS_MAX = common dso_local global i32 0, align 4
@g_atm_priv_data = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@QSB_WFQ_NONUBR_MAX = common dso_local global i32 0, align 4
@QSB_GCR_MIN = common dso_local global i32 0, align 4
@QSB_WFQ_UBR_BYPASS = common dso_local global i32 0, align 4
@QSB_QPT_SET_MASK = common dso_local global i32 0, align 4
@QSB_RTM = common dso_local global i32* null, align 8
@QSB_RTD = common dso_local global i32* null, align 8
@QSB_RAMAC_RW_WRITE = common dso_local global i32 0, align 4
@QSB_RAMAC_TSEL_QPT = common dso_local global i32 0, align 4
@QSB_RAMAC_LH_LOW = common dso_local global i32 0, align 4
@QSB_RAMAC = common dso_local global i32* null, align 8
@QSB_QVPT_SET_MASK = common dso_local global i32 0, align 4
@QSB_RAMAC_TSEL_VBR = common dso_local global i32 0, align 4
@ATM_ATMOPT_CLP = common dso_local global i32 0, align 4
@QSB_TAUS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.atm_qos*, i32)* @set_qsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_qsb(%struct.atm_vcc* %0, %struct.atm_qos* %1, i32 %2) #0 {
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.atm_qos*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.qsb_queue_parameter_table, align 4
  %11 = alloca %union.qsb_queue_vbr_parameter_table, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.atm_qos* %1, %struct.atm_qos** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = call %struct.clk* (...) @clk_get_fpi()
  store %struct.clk* %15, %struct.clk** %7, align 8
  %16 = load %struct.clk*, %struct.clk** %7, align 8
  %17 = call i32 @clk_get_rate(%struct.clk* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FIRST_QSB_QID, align 4
  %20 = add i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = bitcast %union.qsb_queue_parameter_table* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ({ i32, [8 x i8] }* @__const.set_qsb.qsb_queue_parameter_table to i8*), i64 12, i1 false)
  %22 = bitcast %union.qsb_queue_vbr_parameter_table* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.set_qsb.qsb_queue_vbr_parameter_table to i8*), i64 8, i1 false)
  %23 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %24 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %53

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @qsb_tstep, align 4
  %34 = mul i32 %32, %33
  %35 = lshr i32 %34, 5
  %36 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %37 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = udiv i32 %35, %39
  %41 = add i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @QSB_TP_TS_MAX, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = load i32, i32* @QSB_TP_TS_MAX, align 4
  br label %49

47:                                               ; preds = %31
  %48 = load i32, i32* %12, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %28
  %54 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %55 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 131
  br i1 %58, label %59, label %99

59:                                               ; preds = %53
  %60 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_atm_priv_data, i32 0, i32 1), align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_atm_priv_data, i32 0, i32 0), align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1000
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @qsb_tstep, align 4
  %80 = mul i32 %78, %79
  %81 = lshr i32 %80, 5
  %82 = load i32, i32* %14, align 4
  %83 = udiv i32 %81, %82
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @QSB_TP_TS_MAX, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %64
  %89 = load i32, i32* @QSB_TP_TS_MAX, align 4
  store i32 %89, i32* %12, align 4
  br label %95

90:                                               ; preds = %64
  %91 = load i32, i32* %12, align 4
  %92 = icmp ult i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %90
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i32, i32* %12, align 4
  %97 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %59, %53
  %100 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %101 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %146 [
    i32 132, label %104
    i32 128, label %104
    i32 129, label %107
    i32 130, label %107
    i32 131, label %147
  ]

104:                                              ; preds = %99, %99
  %105 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %151

107:                                              ; preds = %99, %99
  %108 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %109 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @QSB_WFQ_NONUBR_MAX, align 4
  %115 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %145

117:                                              ; preds = %107
  %118 = load i32, i32* @QSB_GCR_MIN, align 4
  %119 = load i32, i32* @QSB_WFQ_NONUBR_MAX, align 4
  %120 = mul i32 %118, %119
  %121 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %122 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = udiv i32 %120, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117
  %129 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  br label %144

131:                                              ; preds = %117
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @QSB_WFQ_NONUBR_MAX, align 4
  %134 = icmp ugt i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @QSB_WFQ_NONUBR_MAX, align 4
  %137 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %143

139:                                              ; preds = %131
  %140 = load i32, i32* %12, align 4
  %141 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %128
  br label %145

145:                                              ; preds = %144, %113
  br label %151

146:                                              ; preds = %99
  br label %147

147:                                              ; preds = %99, %146
  %148 = load i32, i32* @QSB_WFQ_UBR_BYPASS, align 4
  %149 = bitcast %union.qsb_queue_parameter_table* %10 to %struct.TYPE_14__*
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %145, %104
  %152 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %153 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 128
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.atm_qos*, %struct.atm_qos** %5, align 8
  %159 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 129
  br i1 %162, label %163, label %168

163:                                              ; preds = %157, %151
  %164 = bitcast %union.qsb_queue_vbr_parameter_table* %11 to %struct.TYPE_15__*
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  %166 = bitcast %union.qsb_queue_vbr_parameter_table* %11 to %struct.TYPE_15__*
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  br label %173

168:                                              ; preds = %157
  %169 = bitcast %union.qsb_queue_vbr_parameter_table* %11 to %struct.TYPE_15__*
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 4
  %171 = bitcast %union.qsb_queue_vbr_parameter_table* %11 to %struct.TYPE_15__*
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  store i32 0, i32* %172, align 4
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32, i32* @QSB_QPT_SET_MASK, align 4
  %175 = call i32 @QSB_RTM_DM_SET(i32 %174)
  %176 = load i32*, i32** @QSB_RTM, align 8
  store i32 %175, i32* %176, align 4
  %177 = bitcast %union.qsb_queue_parameter_table* %10 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @QSB_RTD_TTV_SET(i32 %178)
  %180 = load i32*, i32** @QSB_RTD, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* @QSB_RAMAC_RW_WRITE, align 4
  %182 = call i32 @QSB_RAMAC_RW_SET(i32 %181)
  %183 = load i32, i32* @QSB_RAMAC_TSEL_QPT, align 4
  %184 = call i32 @QSB_RAMAC_TSEL_SET(i32 %183)
  %185 = or i32 %182, %184
  %186 = load i32, i32* @QSB_RAMAC_LH_LOW, align 4
  %187 = call i32 @QSB_RAMAC_LH_SET(i32 %186)
  %188 = or i32 %185, %187
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @QSB_RAMAC_TESEL_SET(i32 %189)
  %191 = or i32 %188, %190
  %192 = load i32*, i32** @QSB_RAMAC, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* @QSB_QVPT_SET_MASK, align 4
  %194 = call i32 @QSB_RTM_DM_SET(i32 %193)
  %195 = load i32*, i32** @QSB_RTM, align 8
  store i32 %194, i32* %195, align 4
  %196 = bitcast %union.qsb_queue_vbr_parameter_table* %11 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @QSB_RTD_TTV_SET(i32 %197)
  %199 = load i32*, i32** @QSB_RTD, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* @QSB_RAMAC_RW_WRITE, align 4
  %201 = call i32 @QSB_RAMAC_RW_SET(i32 %200)
  %202 = load i32, i32* @QSB_RAMAC_TSEL_VBR, align 4
  %203 = call i32 @QSB_RAMAC_TSEL_SET(i32 %202)
  %204 = or i32 %201, %203
  %205 = load i32, i32* @QSB_RAMAC_LH_LOW, align 4
  %206 = call i32 @QSB_RAMAC_LH_SET(i32 %205)
  %207 = or i32 %204, %206
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @QSB_RAMAC_TESEL_SET(i32 %208)
  %210 = or i32 %207, %209
  %211 = load i32*, i32** @QSB_RAMAC, align 8
  store i32 %210, i32* %211, align 4
  ret void
}

declare dso_local %struct.clk* @clk_get_fpi(...) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @QSB_RTM_DM_SET(i32) #1

declare dso_local i32 @QSB_RTD_TTV_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_RW_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_TSEL_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_LH_SET(i32) #1

declare dso_local i32 @QSB_RAMAC_TESEL_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
