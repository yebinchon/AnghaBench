; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_tasks.c_DRV_SPI0_PolledMasterRM8BitTasks.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_tasks.c_DRV_SPI0_PolledMasterRM8BitTasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DRV_SPI_OBJ = type { i64, %struct.TYPE_3__*, i32, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i32 (i32, i32, i32)*, i32 }

@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0D\0ASPI Driver: Error in dequeing.\00", align 1
@DRV_SPI_BUFFER_EVENT_PROCESSING = common dso_local global i32 0, align 4
@SPI_ID_1 = common dso_local global i32 0, align 4
@DRV_SPI_BUFFER_EVENT_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\0D\0ASPI Driver: Queue free element error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI0_PolledMasterRM8BitTasks(%struct.DRV_SPI_OBJ* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DRV_SPI_OBJ*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  store %struct.DRV_SPI_OBJ* %0, %struct.DRV_SPI_OBJ** %3, align 8
  store i64 0, i64* %5, align 8
  %10 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %11 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %162, %1
  %14 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %15 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %8, align 8
  %17 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %18 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %13
  %22 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %23 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %26 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %25, i32 0, i32 1
  %27 = bitcast %struct.TYPE_3__** %26 to i8*
  %28 = call i64 @DRV_SPI_SYS_QUEUE_DequeueLock(i32 %24, i8* %27)
  %29 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %166

33:                                               ; preds = %21
  %34 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %35 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp eq %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %166

39:                                               ; preds = %33
  %40 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %41 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %8, align 8
  %43 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %44 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %46 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %45, i32 0, i32 4
  %47 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %46, align 8
  %48 = icmp ne i32 (i32, i32, i32)* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %51 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %50, i32 0, i32 4
  %52 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %51, align 8
  %53 = load i32, i32* @DRV_SPI_BUFFER_EVENT_PROCESSING, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = ptrtoint %struct.TYPE_3__* %54 to i32
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %52(i32 %53, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %49, %39
  %61 = load i32, i32* @DRV_SPI_BUFFER_EVENT_PROCESSING, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @SPI_ID_1, align 4
  %65 = call i32 @PLIB_SPI_BufferClear(i32 %64)
  br label %66

66:                                               ; preds = %60, %13
  store volatile i32 0, i32* %4, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %77 = call i32 @DRV_SPI0_MasterRMSend8BitPolled(%struct.DRV_SPI_OBJ* %76)
  br label %78

78:                                               ; preds = %75, %66
  %79 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %80 = call i32 @DRV_SPI0_PolledErrorTasks(%struct.DRV_SPI_OBJ* %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %83, %86
  store volatile i64 %87, i64* %9, align 8
  %88 = load volatile i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %78
  %91 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %92 = call i32 @DRV_SPI0_MasterRMReceive8BitPolled(%struct.DRV_SPI_OBJ* %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %95, %98
  store volatile i64 %99, i64* %9, align 8
  br label %100

100:                                              ; preds = %90, %78
  %101 = load volatile i64, i64* %9, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %151

103:                                              ; preds = %100
  %104 = load i32, i32* @DRV_SPI_BUFFER_EVENT_COMPLETE, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  %109 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %108, align 8
  %110 = icmp ne i32 (i32, i32, i32)* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %103
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %113, align 8
  %115 = load i32, i32* @DRV_SPI_BUFFER_EVENT_COMPLETE, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = ptrtoint %struct.TYPE_3__* %116 to i32
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 %114(i32 %115, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %111, %103
  %123 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %124 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %123, i32 0, i32 3
  %125 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %124, align 8
  %126 = icmp ne i32 (i32, i32, i32)* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %129 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %128, i32 0, i32 3
  %130 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %129, align 8
  %131 = load i32, i32* @DRV_SPI_BUFFER_EVENT_COMPLETE, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = ptrtoint %struct.TYPE_3__* %132 to i32
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %130(i32 %131, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %127, %122
  %139 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %140 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %143 = call i64 @DRV_SPI_SYS_QUEUE_FreeElementLock(i32 %141, %struct.TYPE_3__* %142)
  %144 = load i64, i64* @DRV_SPI_SYS_QUEUE_SUCCESS, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = call i32 @SYS_ASSERT(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %166

148:                                              ; preds = %138
  %149 = load %struct.DRV_SPI_OBJ*, %struct.DRV_SPI_OBJ** %3, align 8
  %150 = getelementptr inbounds %struct.DRV_SPI_OBJ, %struct.DRV_SPI_OBJ* %149, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %150, align 8
  br label %151

151:                                              ; preds = %148, %100
  %152 = load i64, i64* %5, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %5, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* %6, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i64, i64* %7, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store volatile i32 1, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %157, %151
  br label %162

162:                                              ; preds = %161
  %163 = load volatile i32, i32* %4, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %13, label %165

165:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %146, %38, %31
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @DRV_SPI_SYS_QUEUE_DequeueLock(i32, i8*) #1

declare dso_local i32 @SYS_ASSERT(i32, i8*) #1

declare dso_local i32 @PLIB_SPI_BufferClear(i32) #1

declare dso_local i32 @DRV_SPI0_MasterRMSend8BitPolled(%struct.DRV_SPI_OBJ*) #1

declare dso_local i32 @DRV_SPI0_PolledErrorTasks(%struct.DRV_SPI_OBJ*) #1

declare dso_local i32 @DRV_SPI0_MasterRMReceive8BitPolled(%struct.DRV_SPI_OBJ*) #1

declare dso_local i64 @DRV_SPI_SYS_QUEUE_FreeElementLock(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
