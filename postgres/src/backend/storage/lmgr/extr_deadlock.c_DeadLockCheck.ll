; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_DeadLockCheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_deadlock.c_DeadLockCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__**, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@nCurConstraints = common dso_local global i64 0, align 8
@nPossibleConstraints = common dso_local global i64 0, align 8
@nWaitOrders = common dso_local global i32 0, align 4
@blocking_autovacuum_proc = common dso_local global i32* null, align 8
@possibleConstraints = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"deadlock seems to have disappeared\00", align 1
@DS_HARD_DEADLOCK = common dso_local global i32 0, align 4
@waitOrders = common dso_local global %struct.TYPE_15__* null, align 8
@DS_SOFT_DEADLOCK = common dso_local global i32 0, align 4
@DS_BLOCKED_BY_AUTOVACUUM = common dso_local global i32 0, align 4
@DS_NO_DEADLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DeadLockCheck(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 0, i64* @nCurConstraints, align 8
  store i64 0, i64* @nPossibleConstraints, align 8
  store i32 0, i32* @nWaitOrders, align 4
  store i32* null, i32** @blocking_autovacuum_proc, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = call i64 @DeadLockCheckRecurse(%struct.TYPE_13__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = call i32 (...) @TRACE_POSTGRESQL_DEADLOCK_FOUND()
  store i32 0, i32* @nWaitOrders, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = load i32, i32* @possibleConstraints, align 4
  %18 = call i32 @FindLockCycle(%struct.TYPE_13__* %16, i32 %17, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @FATAL, align 4
  %22 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32, i32* @DS_HARD_DEADLOCK, align 4
  store i32 %24, i32* %2, align 4
  br label %101

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %86, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @nWaitOrders, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** @waitOrders, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %7, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** @waitOrders, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %41, align 8
  store %struct.TYPE_13__** %42, %struct.TYPE_13__*** %8, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @waitOrders, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = call i32 @ProcQueueInit(%struct.TYPE_12__* %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %78, %30
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %67, i64 %69
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = call i32 @SHMQueueInsertBefore(i32* %66, i32* %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = call i32 @GetLocksMethodTable(%struct.TYPE_14__* %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = call i32 @ProcLockWakeup(i32 %83, %struct.TYPE_14__* %84)
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %26

89:                                               ; preds = %26
  %90 = load i32, i32* @nWaitOrders, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @DS_SOFT_DEADLOCK, align 4
  store i32 %93, i32* %2, align 4
  br label %101

94:                                               ; preds = %89
  %95 = load i32*, i32** @blocking_autovacuum_proc, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @DS_BLOCKED_BY_AUTOVACUUM, align 4
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @DS_NO_DEADLOCK, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %99, %97, %92, %23
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @DeadLockCheckRecurse(%struct.TYPE_13__*) #1

declare dso_local i32 @TRACE_POSTGRESQL_DEADLOCK_FOUND(...) #1

declare dso_local i32 @FindLockCycle(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ProcQueueInit(%struct.TYPE_12__*) #1

declare dso_local i32 @SHMQueueInsertBefore(i32*, i32*) #1

declare dso_local i32 @ProcLockWakeup(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @GetLocksMethodTable(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
