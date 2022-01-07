; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvCmdOp.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvCmdOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@g_pCB = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@DBG_MSG = common dso_local global i32 0, align 4
@MSG_312 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"_SlDrvCmdOp: call _SlDrvMsgWrite\00", align 1
@SL_OS_RET_CODE_OK = common dso_local global i64 0, align 8
@gFirstCmdMode = common dso_local global i32 0, align 4
@CPU_FREQ_IN_MHZ = common dso_local global i32 0, align 4
@USEC_DELAY = common dso_local global i32 0, align 4
@MSG_314 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"_SlDrvCmdOp: exited _SlDrvMsgReadCmdCtx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_SlDrvCmdOp(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pCB, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @_SlDrvObjLockWaitForever(i32* %10)
  %12 = load i32, i32* @TRUE, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pCB, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DBG_MSG, align 4
  %16 = load i32, i32* @MSG_312, align 4
  %17 = call i32 @SL_TRACE0(i32 %15, i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @_SlDrvMsgWrite(i32* %18, i32* %19, i8* %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* @SL_OS_RET_CODE_OK, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = load i32, i32* @gFirstCmdMode, align 4
  %27 = icmp eq i32 0, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  store volatile i32 0, i32* %8, align 4
  store i32 1, i32* @gFirstCmdMode, align 4
  %29 = load i32, i32* @CPU_FREQ_IN_MHZ, align 4
  %30 = load i32, i32* @USEC_DELAY, align 4
  %31 = mul nsw i32 %29, %30
  store volatile i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %36, %28
  %33 = load volatile i32, i32* %8, align 4
  %34 = add nsw i32 %33, -1
  store volatile i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %32

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %25
  %39 = call i64 (...) @_SlDrvMsgReadCmdCtx()
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* @DBG_MSG, align 4
  %41 = load i32, i32* @MSG_314, align 4
  %42 = call i32 @SL_TRACE0(i32 %40, i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %47

43:                                               ; preds = %3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_pCB, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @_SlDrvObjUnLock(i32* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local i32 @_SlDrvObjLockWaitForever(i32*) #1

declare dso_local i32 @SL_TRACE0(i32, i32, i8*) #1

declare dso_local i64 @_SlDrvMsgWrite(i32*, i32*, i8*) #1

declare dso_local i64 @_SlDrvMsgReadCmdCtx(...) #1

declare dso_local i32 @_SlDrvObjUnLock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
