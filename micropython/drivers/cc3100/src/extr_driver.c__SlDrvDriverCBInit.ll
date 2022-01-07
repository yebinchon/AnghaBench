; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDriverCBInit.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDriverCBInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_8__*, i32, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }

@g_pCB = common dso_local global %struct.TYPE_8__* null, align 8
@RxIrqCnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"CmdSyncObj\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"GlobalLockObj\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ProtectionLockObj\00", align 1
@MAX_CONCURRENT_ACTIONS = common dso_local global i32 0, align 4
@SL_MAX_SOCKETS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"SyncObj\00", align 1
@FLOW_CONT_MIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"TxLockObj\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"TxSyncObj\00", align 1
@gFirstCmdMode = common dso_local global i64 0, align 8
@g_StatMem = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_SlDrvDriverCBInit() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call %struct.TYPE_8__* @sl_Malloc(i32 4)
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** @g_pCB, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %4 = call i32 @MALLOC_OK_CHECK(%struct.TYPE_8__* %3)
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %6 = call i32 @_SlDrvMemZero(%struct.TYPE_8__* %5, i32 4)
  store i64 0, i64* @RxIrqCnt, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 10
  %9 = call i32 @sl_SyncObjCreate(i32* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @OSI_RET_OK_CHECK(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 10
  %13 = call i32 @sl_SyncObjClear(i32* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 9
  %16 = call i32 @sl_LockObjCreate(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @OSI_RET_OK_CHECK(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 8
  %20 = call i32 @sl_LockObjCreate(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @OSI_RET_OK_CHECK(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 0
  %26 = load i32, i32* @MAX_CONCURRENT_ACTIONS, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @_SlDrvMemZero(%struct.TYPE_8__* %25, i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %72, %0
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @MAX_CONCURRENT_ACTIONS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %39, i32* %46, align 8
  %47 = load i32, i32* @SL_MAX_SOCKETS, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  store i32 %47, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  %62 = call i32 @sl_SyncObjCreate(i32* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @OSI_RET_OK_CHECK(i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = call i32 @sl_SyncObjClear(i32* %70)
  br label %72

72:                                               ; preds = %37
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %33

75:                                               ; preds = %33
  %76 = load i32, i32* @MAX_CONCURRENT_ACTIONS, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @MAX_CONCURRENT_ACTIONS, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @FLOW_CONT_MIN, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  store i32 %82, i32* %85, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = call i32 @sl_LockObjCreate(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %90 = call i32 @OSI_RET_OK_CHECK(i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pCB, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = call i32 @sl_SyncObjCreate(i32* %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %95 = call i32 @OSI_RET_OK_CHECK(i32 %94)
  store i64 0, i64* @gFirstCmdMode, align 8
  ret void
}

declare dso_local %struct.TYPE_8__* @sl_Malloc(i32) #1

declare dso_local i32 @MALLOC_OK_CHECK(%struct.TYPE_8__*) #1

declare dso_local i32 @_SlDrvMemZero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @OSI_RET_OK_CHECK(i32) #1

declare dso_local i32 @sl_SyncObjCreate(i32*, i8*) #1

declare dso_local i32 @sl_SyncObjClear(i32*) #1

declare dso_local i32 @sl_LockObjCreate(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
