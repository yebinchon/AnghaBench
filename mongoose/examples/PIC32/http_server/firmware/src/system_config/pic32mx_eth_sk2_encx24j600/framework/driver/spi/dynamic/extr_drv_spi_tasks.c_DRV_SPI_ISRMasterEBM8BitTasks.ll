; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_tasks.c_DRV_SPI_ISRMasterEBM8BitTasks.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/http_server/firmware/src/system_config/pic32mx_eth_sk2_encx24j600/framework/driver/spi/dynamic/extr_drv_spi_tasks.c_DRV_SPI_ISRMasterEBM8BitTasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_DRIVER_OBJECT = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32, i64, i32 (i32, i32, i32)*, i32 }
%struct.TYPE_5__ = type { i64, i32 (i32, i32, i32)*, i32 (i32, i32, i32)* }

@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0D\0ASPI Driver: Error in dequeing.\00", align 1
@DRV_SPI_BUFFER_EVENT_PROCESSING = common dso_local global i32 0, align 4
@SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_1HALF_EMPTY_OR_MORE = common dso_local global i32 0, align 4
@SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_1HALF_FULL_OR_MORE = common dso_local global i32 0, align 4
@DRV_SPI_BUFFER_EVENT_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\0D\0ASPI Driver: Queue free element error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_ISRMasterEBM8BitTasks(%struct.DRV_SPI_DRIVER_OBJECT* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DRV_SPI_DRIVER_OBJECT*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.DRV_SPI_DRIVER_OBJECT* %0, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %10 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %11 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @SYS_INT_SourceDisable(i32 %12)
  %14 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %15 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SYS_INT_SourceDisable(i32 %16)
  %18 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %19 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SYS_INT_SourceDisable(i32 %20)
  br label %22

22:                                               ; preds = %269, %1
  %23 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %24 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %23, i32 0, i32 6
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %5, align 8
  %26 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %27 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %30 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %29, i32 0, i32 6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp eq %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %125

33:                                               ; preds = %22
  %34 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %35 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %38 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %37, i32 0, i32 6
  %39 = bitcast %struct.TYPE_4__** %38 to i8*
  %40 = call i64 @DRV_SPI_SYS_QUEUE_Dequeue(i32 %36, i8* %39)
  %41 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %281

45:                                               ; preds = %33
  %46 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %47 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %46, i32 0, i32 6
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %52 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %281

53:                                               ; preds = %45
  %54 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %55 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %54, i32 0, i32 6
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %5, align 8
  %57 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %58 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %57, i32 0, i32 9
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = icmp ne i32 (i32, i32, i32)* %65, null
  br i1 %66, label %67, label %78

67:                                               ; preds = %53
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %69, align 8
  %71 = load i32, i32* @DRV_SPI_BUFFER_EVENT_PROCESSING, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = ptrtoint %struct.TYPE_4__* %72 to i32
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %70(i32 %71, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %67, %53
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %83 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %89 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SYS_CLK_PeripheralFrequencyGet(i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @PLIB_SPI_BaudRateSet(i32 %87, i32 %91, i64 %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %100 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %86, %78
  %102 = load i32, i32* @DRV_SPI_BUFFER_EVENT_PROCESSING, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load i32, i32* %6, align 4
  %113 = call i64 @PLIB_SPI_RX_8BIT_FIFO_SIZE(i32 %112)
  %114 = icmp sgt i64 %111, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %101
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @SPI_FIFO_INTERRUPT_WHEN_TRANSMIT_BUFFER_IS_1HALF_EMPTY_OR_MORE, align 4
  %118 = call i32 @PLIB_SPI_FIFOInterruptModeSelect(i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @SPI_FIFO_INTERRUPT_WHEN_RECEIVE_BUFFER_IS_1HALF_FULL_OR_MORE, align 4
  %121 = call i32 @PLIB_SPI_FIFOInterruptModeSelect(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %115, %101
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @PLIB_SPI_BufferClear(i32 %123)
  br label %125

125:                                              ; preds = %122, %22
  store volatile i32 0, i32* %4, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %136 = call i32 @DRV_SPI_MasterEBMSend8BitISR(%struct.DRV_SPI_DRIVER_OBJECT* %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %139 = call i32 @DRV_SPI_ISRErrorTasks(%struct.DRV_SPI_DRIVER_OBJECT* %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %142, %145
  store volatile i64 %146, i64* %8, align 8
  %147 = load volatile i64, i64* %8, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %137
  %150 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %151 = call i32 @DRV_SPI_MasterEBMReceive8BitISR(%struct.DRV_SPI_DRIVER_OBJECT* %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %154, %157
  store volatile i64 %158, i64* %8, align 8
  br label %159

159:                                              ; preds = %149, %137
  %160 = load volatile i64, i64* %8, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %223

162:                                              ; preds = %159
  %163 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %164 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %163, i32 0, i32 2
  store i32 0, i32* %164, align 8
  %165 = load i32, i32* @DRV_SPI_BUFFER_EVENT_COMPLETE, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 6
  %170 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %169, align 8
  %171 = icmp ne i32 (i32, i32, i32)* %170, null
  br i1 %171, label %172, label %183

172:                                              ; preds = %162
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 6
  %175 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %174, align 8
  %176 = load i32, i32* @DRV_SPI_BUFFER_EVENT_COMPLETE, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %178 = ptrtoint %struct.TYPE_4__* %177 to i32
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i32 %175(i32 %176, i32 %178, i32 %181)
  br label %183

183:                                              ; preds = %172, %162
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %187, %struct.TYPE_5__** %9, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %189, align 8
  %191 = icmp ne i32 (i32, i32, i32)* %190, null
  br i1 %191, label %192, label %203

192:                                              ; preds = %183
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 1
  %195 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %194, align 8
  %196 = load i32, i32* @DRV_SPI_BUFFER_EVENT_COMPLETE, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %198 = ptrtoint %struct.TYPE_4__* %197 to i32
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %195(i32 %196, i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %192, %183
  %204 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %205 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %208 = call i64 @DRV_SPI_SYS_QUEUE_FreeElement(i32 %206, %struct.TYPE_4__* %207)
  %209 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %281

213:                                              ; preds = %203
  %214 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %215 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %214, i32 0, i32 6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %215, align 8
  %216 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %217 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @DRV_SPI_SYS_QUEUE_IsEmpty(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %213
  store volatile i32 1, i32* %4, align 4
  br label %269

222:                                              ; preds = %213
  br label %272

223:                                              ; preds = %159
  %224 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %225 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %224, i32 0, i32 6
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = icmp ne %struct.TYPE_4__* %226, null
  br i1 %227, label %228, label %268

228:                                              ; preds = %223
  %229 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %230 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @SYS_INT_SourceStatusClear(i32 %231)
  %233 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %234 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @SYS_INT_SourceStatusClear(i32 %235)
  %237 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %238 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @SYS_INT_SourceStatusClear(i32 %239)
  %241 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %242 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i64 @SYS_INT_SourceStatusGet(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %228
  %247 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %248 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @SYS_INT_SourceStatusGet(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %246
  %253 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %254 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @SYS_INT_SourceStatusGet(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %252, %246, %228
  store volatile i32 1, i32* %4, align 4
  br label %269

259:                                              ; preds = %252
  %260 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %261 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @SYS_INT_SourceEnable(i32 %262)
  %264 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %265 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @SYS_INT_SourceEnable(i32 %266)
  store i32 0, i32* %2, align 4
  br label %281

268:                                              ; preds = %223
  br label %269

269:                                              ; preds = %268, %258, %221
  %270 = load volatile i32, i32* %4, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %22, label %272

272:                                              ; preds = %269, %222
  %273 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %274 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @SYS_INT_SourceStatusClear(i32 %275)
  %277 = load %struct.DRV_SPI_DRIVER_OBJECT*, %struct.DRV_SPI_DRIVER_OBJECT** %3, align 8
  %278 = getelementptr inbounds %struct.DRV_SPI_DRIVER_OBJECT, %struct.DRV_SPI_DRIVER_OBJECT* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @SYS_INT_SourceStatusClear(i32 %279)
  store i32 0, i32* %2, align 4
  br label %281

281:                                              ; preds = %272, %259, %211, %50, %43
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local i32 @SYS_INT_SourceDisable(i32) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_Dequeue(i32, i8*) #1

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

declare dso_local i32 @PLIB_SPI_BaudRateSet(i32, i32, i64) #1

declare dso_local i32 @SYS_CLK_PeripheralFrequencyGet(i32) #1

declare dso_local i64 @PLIB_SPI_RX_8BIT_FIFO_SIZE(i32) #1

declare dso_local i32 @PLIB_SPI_FIFOInterruptModeSelect(i32, i32) #1

declare dso_local i32 @PLIB_SPI_BufferClear(i32) #1

declare dso_local i32 @DRV_SPI_MasterEBMSend8BitISR(%struct.DRV_SPI_DRIVER_OBJECT*) #1

declare dso_local i32 @DRV_SPI_ISRErrorTasks(%struct.DRV_SPI_DRIVER_OBJECT*) #1

declare dso_local i32 @DRV_SPI_MasterEBMReceive8BitISR(%struct.DRV_SPI_DRIVER_OBJECT*) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_FreeElement(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @DRV_SPI_SYS_QUEUE_IsEmpty(i32) #1

declare dso_local i32 @SYS_INT_SourceStatusClear(i32) #1

declare dso_local i64 @SYS_INT_SourceStatusGet(i32) #1

declare dso_local i32 @SYS_INT_SourceEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
