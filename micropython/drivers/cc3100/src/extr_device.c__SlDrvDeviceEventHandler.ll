; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_device.c__SlDrvDeviceEventHandler.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_device.c__SlDrvDeviceEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@MSG_306 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"ASSERT: _SlDrvDeviceEventHandler : invalid opcode = 0x%x = %1\00", align 1
@SL_DEVICE_ABORT_ERROR_EVENT = common dso_local global i32 0, align 4
@SL_DEVICE_FATAL_ERROR_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_SlDrvDeviceEventHandler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %3, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 129, label %10
    i32 128, label %13
    i32 131, label %16
    i32 130, label %17
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = call i32 @_sl_HandleAsync_InitComplete(%struct.TYPE_16__* %11)
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = call i32 @_sl_HandleAsync_Stop(%struct.TYPE_16__* %14)
  br label %29

16:                                               ; preds = %1
  br label %29

17:                                               ; preds = %1
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @MSG_306, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SL_ERROR_TRACE2(i32 %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %18, %17, %16, %13, %10
  ret void
}

declare dso_local i32 @_sl_HandleAsync_InitComplete(%struct.TYPE_16__*) #1

declare dso_local i32 @_sl_HandleAsync_Stop(%struct.TYPE_16__*) #1

declare dso_local i32 @SL_ERROR_TRACE2(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
