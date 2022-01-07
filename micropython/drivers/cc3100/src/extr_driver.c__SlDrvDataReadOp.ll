; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDataReadOp.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDataReadOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i64*, i32* }

@MAX_CONCURRENT_ACTIONS = common dso_local global i64 0, align 8
@BSD_SOCKET_ID_MASK = common dso_local global i32 0, align 4
@SL_MAX_SOCKETS = common dso_local global i32 0, align 4
@SL_EBADF = common dso_local global i64 0, align 8
@RECV_ID = common dso_local global i32 0, align 4
@SL_POOL_IS_EMPTY = common dso_local global i64 0, align 8
@g_pCB = common dso_local global %struct.TYPE_12__* null, align 8
@FLOW_CONT_MIN = common dso_local global i64 0, align 8
@SL_OS_RET_CODE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_SlDrvDataReadOp(i32 %0, i32* %1, i8* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %13 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* null, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY_PROTOCOL(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 0, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY_PROTOCOL(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BSD_SOCKET_ID_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @SL_MAX_SOCKETS, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i64, i64* @SL_EBADF, align 8
  store i64 %32, i64* %5, align 8
  br label %124

33:                                               ; preds = %4
  %34 = load i32, i32* @RECV_ID, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BSD_SOCKET_ID_MASK, align 4
  %37 = and i32 %35, %36
  %38 = call i64 @_SlDrvWaitForPoolObj(i32 %34, i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* @SL_POOL_IS_EMPTY, align 8
  store i64 %43, i64* %5, align 8
  br label %124

44:                                               ; preds = %33
  %45 = call i32 (...) @_SlDrvProtectionObjLockWaitForever()
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32* %48, i32** %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to i64*
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i64* %51, i64** %52, align 8
  %53 = bitcast %struct.TYPE_11__* %12 to i64*
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i64* %53, i64** %59, align 8
  %60 = call i32 (...) @_SlDrvProtectionObjUnLock()
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = call i32 @_SlDrvObjLockWaitForever(i32* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = call i32 @sl_SyncObjClear(i32* %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FLOW_CONT_MIN, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %44
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = call i32 @_SlDrvSyncObjWaitForever(i32* %78)
  br label %80

80:                                               ; preds = %75, %44
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = call i32 @_SlDrvObjLockWaitForever(i32* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @FLOW_CONT_MIN, align 8
  %89 = icmp sgt i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @VERIFY_PROTOCOL(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = call i32 @_SlDrvObjUnLock(i32* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i64*
  %105 = call i64 @_SlDrvMsgWrite(i32* %101, %struct.TYPE_10__* %102, i64* %104)
  store i64 %105, i64* %10, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = call i32 @_SlDrvObjUnLock(i32* %107)
  %109 = load i64, i64* @SL_OS_RET_CODE_OK, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %80
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_pCB, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = call i32 @_SlDrvSyncObjWaitForever(i32* %118)
  br label %120

120:                                              ; preds = %112, %80
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @_SlDrvReleasePoolObj(i64 %121)
  %123 = load i64, i64* %10, align 8
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %120, %42, %31
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @VERIFY_PROTOCOL(i32) #1

declare dso_local i64 @_SlDrvWaitForPoolObj(i32, i32) #1

declare dso_local i32 @_SlDrvProtectionObjLockWaitForever(...) #1

declare dso_local i32 @_SlDrvProtectionObjUnLock(...) #1

declare dso_local i32 @_SlDrvObjLockWaitForever(i32*) #1

declare dso_local i32 @sl_SyncObjClear(i32*) #1

declare dso_local i32 @_SlDrvSyncObjWaitForever(i32*) #1

declare dso_local i32 @_SlDrvObjUnLock(i32*) #1

declare dso_local i64 @_SlDrvMsgWrite(i32*, %struct.TYPE_10__*, i64*) #1

declare dso_local i32 @_SlDrvReleasePoolObj(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
