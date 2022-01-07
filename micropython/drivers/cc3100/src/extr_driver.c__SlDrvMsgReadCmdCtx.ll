; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvMsgReadCmdCtx.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvMsgReadCmdCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@TRUE = common dso_local global i64 0, align 8
@g_pCB = common dso_local global %struct.TYPE_7__* null, align 8
@CMD_RESP_CLASS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ASYNC_EVT_CLASS = common dso_local global i64 0, align 8
@_SlDrvMsgReadSpawnCtx = common dso_local global i64 0, align 8
@SL_OS_RET_CODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SlDrvMsgReadCmdCtx() #0 {
  br label %1

1:                                                ; preds = %54, %0
  %2 = load i64, i64* @TRUE, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %2, %5
  br i1 %6, label %7, label %55

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %9 = call i64 @_SL_PENDING_RX_MSG(%struct.TYPE_7__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = call i32 (...) @_SlDrvMsgRead()
  %13 = call i32 @VERIFY_RET_OK(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load i64, i64* @CMD_RESP_CLASS, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %11
  %26 = load i64, i64* @FALSE, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = call i32 @sl_SyncObjClear(i32* %30)
  br label %49

32:                                               ; preds = %11
  %33 = load i64, i64* @ASYNC_EVT_CLASS, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %33, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = call i32 (...) @_SlAsyncEventGenericHandler()
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @sl_Free(i32* %46)
  br label %48

48:                                               ; preds = %40, %32
  br label %49

49:                                               ; preds = %48, %25
  br label %54

50:                                               ; preds = %7
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = call i32 @_SlDrvSyncObjWaitForever(i32* %52)
  br label %54

54:                                               ; preds = %50, %49
  br label %1

55:                                               ; preds = %1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = call i32 @_SlDrvObjUnLock(i32* %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %60 = call i64 @_SL_PENDING_RX_MSG(%struct.TYPE_7__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i64, i64* @_SlDrvMsgReadSpawnCtx, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @sl_Spawn(i32 %64, i32* null, i32 0)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* @SL_OS_RET_CODE_OK, align 4
  ret i32 %67
}

declare dso_local i64 @_SL_PENDING_RX_MSG(%struct.TYPE_7__*) #1

declare dso_local i32 @VERIFY_RET_OK(i32) #1

declare dso_local i32 @_SlDrvMsgRead(...) #1

declare dso_local i32 @sl_SyncObjClear(i32*) #1

declare dso_local i32 @_SlAsyncEventGenericHandler(...) #1

declare dso_local i32 @sl_Free(i32*) #1

declare dso_local i32 @_SlDrvSyncObjWaitForever(i32*) #1

declare dso_local i32 @_SlDrvObjUnLock(i32*) #1

declare dso_local i32 @sl_Spawn(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
