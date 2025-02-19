; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/simplelink/oslib/extr_osi_freertos.c_osi_Spawn.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/simplelink/oslib/extr_osi_freertos.c_osi_Spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@pdFALSE = common dso_local global i64 0, align 8
@xHigherPriorityTaskWoken = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i64 0, align 8
@xSimpleLinkSpawnQueue = common dso_local global i32 0, align 4
@OSI_OK = common dso_local global i32 0, align 4
@OSI_OPERATION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osi_Spawn(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = load i64, i64* @pdFALSE, align 8
  store i64 %13, i64* @xHigherPriorityTaskWoken, align 8
  %14 = load i64, i64* @pdTRUE, align 8
  %15 = load i32, i32* @xSimpleLinkSpawnQueue, align 4
  %16 = call i64 @xQueueSendFromISR(i32 %15, %struct.TYPE_3__* %8, i64* @xHigherPriorityTaskWoken)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i64, i64* @xHigherPriorityTaskWoken, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @taskYIELD()
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @OSI_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @OSI_OPERATION_FAILED, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @xQueueSendFromISR(i32, %struct.TYPE_3__*, i64*) #1

declare dso_local i32 @taskYIELD(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
