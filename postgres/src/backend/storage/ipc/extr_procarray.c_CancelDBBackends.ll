; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_CancelDBBackends.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_CancelDBBackends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@procArray = common dso_local global %struct.TYPE_9__* null, align 8
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@allProcs = common dso_local global %struct.TYPE_10__* null, align 8
@InvalidOid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CancelDBBackends(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @procArray, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  store i64 0, i64* %9, align 8
  %14 = load i32, i32* @ProcArrayLock, align 4
  %15 = load i32, i32* @LW_EXCLUSIVE, align 4
  %16 = call i32 @LWLockAcquire(i32 %14, i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @allProcs, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %11, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @InvalidOid, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %23
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38, %23
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @GET_VXID_FROM_PGPROC(i32 %47, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %45)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %5, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SendProcSignal(i64 %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %44
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %17

68:                                               ; preds = %17
  %69 = load i32, i32* @ProcArrayLock, align 4
  %70 = call i32 @LWLockRelease(i32 %69)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @GET_VXID_FROM_PGPROC(i32, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @SendProcSignal(i64, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
