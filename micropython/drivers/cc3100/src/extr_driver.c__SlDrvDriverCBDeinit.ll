; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDriverCBDeinit.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvDriverCBDeinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@g_pCB = common dso_local global %struct.TYPE_7__* null, align 8
@MAX_CONCURRENT_ACTIONS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_SlDrvDriverCBDeinit() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 7
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = call i32 @sl_LockObjDelete(i32* %7)
  %9 = call i32 @OSI_RET_OK_CHECK(i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @sl_SyncObjDelete(i32* %12)
  %14 = call i32 @OSI_RET_OK_CHECK(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 6
  %17 = call i32 @sl_SyncObjDelete(i32* %16)
  %18 = call i32 @OSI_RET_OK_CHECK(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 5
  %21 = call i32 @sl_LockObjDelete(i32* %20)
  %22 = call i32 @OSI_RET_OK_CHECK(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = call i32 @sl_LockObjDelete(i32* %24)
  %26 = call i32 @OSI_RET_OK_CHECK(i32 %25)
  store i64 0, i64* %1, align 8
  br label %27

27:                                               ; preds = %40, %0
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i64, i64* %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @sl_SyncObjDelete(i32* %37)
  %39 = call i32 @OSI_RET_OK_CHECK(i32 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %1, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %1, align 8
  br label %27

43:                                               ; preds = %27
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_pCB, align 8
  %53 = call i32 @sl_Free(%struct.TYPE_7__* %52)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @g_pCB, align 8
  ret void
}

declare dso_local i32 @OSI_RET_OK_CHECK(i32) #1

declare dso_local i32 @sl_LockObjDelete(i32*) #1

declare dso_local i32 @sl_SyncObjDelete(i32*) #1

declare dso_local i32 @sl_Free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
