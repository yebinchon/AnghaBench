; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDataWriteOp.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDataWriteOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }

@SL_EAGAIN = common dso_local global i32 0, align 4
@g_pCB = common dso_local global %struct.TYPE_4__* null, align 8
@BSD_SOCKET_ID_MASK = common dso_local global i32 0, align 4
@SL_SOC_ERROR = common dso_local global i32 0, align 4
@FLOW_CONT_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SlDrvDataWriteOp(i32 %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* @SL_EAGAIN, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %4, %79
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i32 @_SlDrvObjLockWaitForever(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = call i32 @sl_SyncObjClear(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BSD_SOCKET_ID_MASK, align 4
  %26 = and i32 %24, %25
  %27 = shl i32 1, %26
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %12
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = call i32 @_SlDrvObjUnLock(i32* %33)
  %35 = load i32, i32* @SL_SOC_ERROR, align 4
  store i32 %35, i32* %5, align 4
  br label %110

36:                                               ; preds = %12
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FLOW_CONT_MIN, align 8
  %42 = add nsw i64 %41, 1
  %43 = icmp sle i64 %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @BSD_SOCKET_ID_MASK, align 4
  %50 = and i32 %48, %49
  %51 = shl i32 1, %50
  %52 = and i32 %47, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @_SlDrvObjUnLock(i32* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %110

60:                                               ; preds = %44
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = call i32 @_SlDrvSyncObjWaitForever(i32* %63)
  br label %65

65:                                               ; preds = %60, %36
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @FLOW_CONT_MIN, align 8
  %71 = add nsw i64 %70, 1
  %72 = icmp sgt i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %80

74:                                               ; preds = %65
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = call i32 @_SlDrvObjUnLock(i32* %77)
  br label %79

79:                                               ; preds = %74
  br label %12

80:                                               ; preds = %73
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = call i32 @_SlDrvObjLockWaitForever(i32* %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @FLOW_CONT_MIN, align 8
  %89 = add nsw i64 %88, 1
  %90 = icmp sgt i64 %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @VERIFY_PROTOCOL(i32 %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = call i32 @_SlDrvObjUnLock(i32* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @_SlDrvMsgWrite(i32* %102, i32* %103, i8* %104)
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = call i32 @_SlDrvObjUnLock(i32* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %80, %54, %30
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @_SlDrvObjLockWaitForever(i32*) #1

declare dso_local i32 @sl_SyncObjClear(i32*) #1

declare dso_local i32 @_SlDrvObjUnLock(i32*) #1

declare dso_local i32 @_SlDrvSyncObjWaitForever(i32*) #1

declare dso_local i32 @VERIFY_PROTOCOL(i32) #1

declare dso_local i32 @_SlDrvMsgWrite(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
