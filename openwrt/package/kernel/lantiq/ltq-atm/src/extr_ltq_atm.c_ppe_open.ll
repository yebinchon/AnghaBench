; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_open.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_7__*, %struct.port* }
%struct.TYPE_7__ = type { %struct.atm_vcc* }
%struct.atm_vcc = type { i16, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.port = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }

@g_atm_priv_data = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@ATM_AAL5 = common dso_local global i64 0, align 8
@ATM_AAL0 = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@MAX_PVC_NUMBER = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@RX_DMA_CH_AAL = common dso_local global i32 0, align 4
@RX_DMA_CH_OAM = common dso_local global i32 0, align 4
@MBOX_IGU1_ISRC = common dso_local global i32* null, align 8
@MBOX_IGU1_IER = common dso_local global i32* null, align 8
@PPE_MAILBOX_IGU1_INT = common dso_local global i32 0, align 4
@FIRST_QSB_QID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @ppe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppe_open(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %11 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %10, i32 0, i32 0
  %12 = load i16, i16* %11, align 8
  store i16 %12, i16* %5, align 2
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %14 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.port*, %struct.port** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_atm_priv_data, i32 0, i32 2), align 8
  %17 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %18 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.port, %struct.port* %16, i64 %23
  store %struct.port* %24, %struct.port** %7, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %26 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ATM_AAL5, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %1
  %32 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %33 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATM_AAL0, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EPROTONOSUPPORT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %257

41:                                               ; preds = %31, %1
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %43 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 131
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %50 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.port*, %struct.port** %7, align 8
  %55 = getelementptr inbounds %struct.port, %struct.port* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.port*, %struct.port** %7, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = icmp sgt i64 %53, %60
  br i1 %61, label %104, label %62

62:                                               ; preds = %48, %41
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %64 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %71 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.port*, %struct.port** %7, align 8
  %76 = getelementptr inbounds %struct.port, %struct.port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.port*, %struct.port** %7, align 8
  %79 = getelementptr inbounds %struct.port, %struct.port* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = icmp sgt i64 %74, %81
  br i1 %82, label %104, label %83

83:                                               ; preds = %69, %62
  %84 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %85 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 130
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  %91 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %92 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.port*, %struct.port** %7, align 8
  %97 = getelementptr inbounds %struct.port, %struct.port* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.port*, %struct.port** %7, align 8
  %100 = getelementptr inbounds %struct.port, %struct.port* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = icmp sgt i64 %95, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %90, %69, %48
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %255

107:                                              ; preds = %90, %83
  %108 = load i16, i16* %5, align 2
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @find_vpivci(i16 signext %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @EADDRINUSE, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %255

116:                                              ; preds = %107
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_atm_priv_data, i32 0, i32 0), align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %116
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %137, %120
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @MAX_PVC_NUMBER, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = call i64 @test_and_set_bit(i32 %126, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_atm_priv_data, i32 0, i32 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @g_atm_priv_data, i32 0, i32 1), align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store %struct.atm_vcc* %130, %struct.atm_vcc** %135, align 8
  br label %140

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %121

140:                                              ; preds = %129, %121
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @MAX_PVC_NUMBER, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %255

147:                                              ; preds = %140
  %148 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %149 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %174 [
    i32 131, label %153
    i32 128, label %153
    i32 129, label %163
    i32 130, label %164
  ]

153:                                              ; preds = %147, %147
  %154 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %155 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.port*, %struct.port** %7, align 8
  %160 = getelementptr inbounds %struct.port, %struct.port* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %158
  store i64 %162, i64* %160, align 8
  br label %174

163:                                              ; preds = %147
  br label %174

164:                                              ; preds = %147
  %165 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %166 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.port*, %struct.port** %7, align 8
  %171 = getelementptr inbounds %struct.port, %struct.port* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, %169
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %147, %164, %163, %153
  %175 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %176 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %177 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %176, i32 0, i32 3
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @set_qsb(%struct.atm_vcc* %175, %struct.TYPE_10__* %177, i32 %178)
  %180 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %181 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %180, i32 0, i32 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %187 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i16, i16* %5, align 2
  %189 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %190 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %189, i32 0, i32 0
  store i16 %188, i16* %190, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %193 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @ATM_VF_READY, align 4
  %195 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %196 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %195, i32 0, i32 5
  %197 = call i32 @set_bit(i32 %194, i32* %196)
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %174
  %201 = load i32, i32* @RX_DMA_CH_AAL, align 4
  %202 = shl i32 1, %201
  %203 = load i32, i32* @RX_DMA_CH_OAM, align 4
  %204 = shl i32 1, %203
  %205 = or i32 %202, %204
  %206 = load i32*, i32** @MBOX_IGU1_ISRC, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* @RX_DMA_CH_AAL, align 4
  %208 = shl i32 1, %207
  %209 = load i32, i32* @RX_DMA_CH_OAM, align 4
  %210 = shl i32 1, %209
  %211 = or i32 %208, %210
  %212 = load i32*, i32** @MBOX_IGU1_IER, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* @PPE_MAILBOX_IGU1_INT, align 4
  %214 = call i32 @enable_irq(i32 %213)
  br label %215

215:                                              ; preds = %200, %174
  %216 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %217 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %216, i32 0, i32 4
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @FIRST_QSB_QID, align 4
  %224 = add nsw i32 %222, %223
  %225 = call %struct.TYPE_12__* @WTX_QUEUE_CONFIG(i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  store i32 %221, i32* %226, align 4
  %227 = load i16, i16* %5, align 2
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %231 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @ATM_AAL5, align 8
  %235 = icmp eq i64 %233, %234
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 1, i32 0
  %238 = call i32 @set_htu_entry(i16 signext %227, i32 %228, i32 %229, i32 %237, i32 0)
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @FIRST_QSB_QID, align 4
  %241 = add nsw i32 %239, %240
  %242 = add nsw i32 %241, 16
  %243 = shl i32 1, %242
  %244 = load i32*, i32** @MBOX_IGU1_ISRC, align 8
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %243
  store i32 %246, i32* %244, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* @FIRST_QSB_QID, align 4
  %249 = add nsw i32 %247, %248
  %250 = add nsw i32 %249, 16
  %251 = shl i32 1, %250
  %252 = load i32*, i32** @MBOX_IGU1_IER, align 8
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %251
  store i32 %254, i32* %252, align 4
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %215, %144, %113, %104
  %256 = load i32, i32* %4, align 4
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %255, %38
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i32 @find_vpivci(i16 signext, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @set_qsb(%struct.atm_vcc*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local %struct.TYPE_12__* @WTX_QUEUE_CONFIG(i32) #1

declare dso_local i32 @set_htu_entry(i16 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
