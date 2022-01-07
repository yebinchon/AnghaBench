; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slotfuncs.c_pg_logical_replication_slot_advance.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slotfuncs.c_pg_logical_replication_slot_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@CurrentResourceOwner = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@NIL = common dso_local global i32 0, align 4
@logical_read_local_xlog_page = common dso_local global i32 0, align 4
@MyReplicationSlot = common dso_local global %struct.TYPE_12__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @pg_logical_replication_slot_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pg_logical_replication_slot_advance(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %9, i32* %4, align 4
  %10 = call i32 (...) @PG_TRY()
  %11 = load i64, i64* @InvalidXLogRecPtr, align 8
  %12 = load i32, i32* @NIL, align 4
  %13 = load i32, i32* @logical_read_local_xlog_page, align 4
  %14 = call %struct.TYPE_10__* @CreateDecodingContext(i64 %11, i32 %12, i32 1, i32 %13, i32* null, i32* null, i32* null)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyReplicationSlot, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyReplicationSlot, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = call i32 (...) @InvalidateSystemCaches()
  br label %24

24:                                               ; preds = %83, %1
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @XLogRecPtrIsInvalid(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %2, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %50, label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @XLogRecPtrIsInvalid(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %2, align 8
  %47 = icmp slt i64 %45, %46
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi i1 [ false, %32 ], [ %47, %40 ]
  br label %50

50:                                               ; preds = %48, %28
  %51 = phi i1 [ true, %28 ], [ %49, %48 ]
  br i1 %51, label %52, label %85

52:                                               ; preds = %50
  store i8* null, i8** %7, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32* @XLogReadRecord(%struct.TYPE_11__* %55, i64 %56, i8** %7)
  store i32* %57, i32** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @elog(i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i64, i64* @InvalidXLogRecPtr, align 8
  store i64 %65, i64* %5, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = call i32 @LogicalDecodingProcessRecord(%struct.TYPE_10__* %69, %struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i64, i64* %2, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sle i64 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %85

83:                                               ; preds = %74
  %84 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %24

85:                                               ; preds = %82, %50
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* @CurrentResourceOwner, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @InvalidXLogRecPtr, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %85
  %95 = load i64, i64* %2, align 8
  %96 = call i32 @LogicalConfirmReceivedLocation(i64 %95)
  %97 = call i32 (...) @ReplicationSlotMarkDirty()
  br label %98

98:                                               ; preds = %94, %85
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyReplicationSlot, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %6, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = call i32 @FreeDecodingContext(%struct.TYPE_10__* %103)
  %105 = call i32 (...) @InvalidateSystemCaches()
  %106 = call i32 (...) @PG_CATCH()
  %107 = call i32 (...) @InvalidateSystemCaches()
  %108 = call i32 (...) @PG_RE_THROW()
  %109 = call i32 (...) @PG_END_TRY()
  %110 = load i64, i64* %6, align 8
  ret i64 %110
}

declare dso_local i32 @PG_TRY(...) #1

declare dso_local %struct.TYPE_10__* @CreateDecodingContext(i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @InvalidateSystemCaches(...) #1

declare dso_local i32 @XLogRecPtrIsInvalid(i64) #1

declare dso_local i32* @XLogReadRecord(%struct.TYPE_11__*, i64, i8**) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32 @LogicalDecodingProcessRecord(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @LogicalConfirmReceivedLocation(i64) #1

declare dso_local i32 @ReplicationSlotMarkDirty(...) #1

declare dso_local i32 @FreeDecodingContext(%struct.TYPE_10__*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
