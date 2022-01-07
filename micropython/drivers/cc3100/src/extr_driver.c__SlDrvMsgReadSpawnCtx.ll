; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvMsgReadSpawnCtx.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvMsgReadSpawnCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@g_pCB = common dso_local global %struct.TYPE_7__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@SL_RET_CODE_OK = common dso_local global i32 0, align 4
@OSI_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SlDrvMsgReadSpawnCtx(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = call i32 @_SlDrvObjLockWaitForever(i32* %5)
  %7 = load i64, i64* @FALSE, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %9 = call i64 @_SL_PENDING_RX_MSG(%struct.TYPE_7__* %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = call i32 @_SlDrvObjUnLock(i32* %13)
  %15 = load i32, i32* @SL_RET_CODE_OK, align 4
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = call i32 (...) @_SlDrvMsgRead()
  %18 = call i32 @VERIFY_RET_OK(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %46 [
    i32 131, label %28
    i32 129, label %44
    i32 128, label %44
    i32 130, label %45
  ]

28:                                               ; preds = %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* null, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @VERIFY_PROTOCOL(i32 %35)
  %37 = call i32 (...) @_SlAsyncEventGenericHandler()
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @sl_Free(i32* %42)
  br label %48

44:                                               ; preds = %16, %16
  br label %48

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %16, %45
  %47 = call i32 @VERIFY_PROTOCOL(i32 0)
  br label %48

48:                                               ; preds = %46, %44, %28
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = call i32 @_SlDrvObjUnLock(i32* %50)
  %52 = load i32, i32* @SL_RET_CODE_OK, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @_SlDrvObjLockWaitForever(i32*) #1

declare dso_local i64 @_SL_PENDING_RX_MSG(%struct.TYPE_7__*) #1

declare dso_local i32 @_SlDrvObjUnLock(i32*) #1

declare dso_local i32 @VERIFY_RET_OK(i32) #1

declare dso_local i32 @_SlDrvMsgRead(...) #1

declare dso_local i32 @VERIFY_PROTOCOL(i32) #1

declare dso_local i32 @_SlAsyncEventGenericHandler(...) #1

declare dso_local i32 @sl_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
