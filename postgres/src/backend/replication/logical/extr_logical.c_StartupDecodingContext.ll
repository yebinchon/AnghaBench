; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_StartupDecodingContext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_StartupDecodingContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__* }

@MyReplicationSlot = common dso_local global %struct.TYPE_12__* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Logical decoding context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@PROC_IN_LOGICAL_DECODING = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_15__* null, align 8
@wal_segment_size = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@begin_cb_wrapper = common dso_local global i32 0, align 4
@change_cb_wrapper = common dso_local global i32 0, align 4
@truncate_cb_wrapper = common dso_local global i32 0, align 4
@commit_cb_wrapper = common dso_local global i32 0, align 4
@message_cb_wrapper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @StartupDecodingContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @StartupDecodingContext(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @MyReplicationSlot, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %19, align 8
  %24 = load i32, i32* @CurrentMemoryContext, align 4
  %25 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %26 = call i32 @AllocSetContextCreate(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %20, align 4
  %28 = call i32 @MemoryContextSwitchTo(i32 %27)
  store i32 %28, i32* %21, align 4
  %29 = call %struct.TYPE_13__* @palloc0(i32 64)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %22, align 8
  %30 = load i32, i32* %20, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %9
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 10
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NameStr(i32 %41)
  %43 = call i32 @LoadOutputPlugin(i32* %37, i32 %42)
  br label %44

44:                                               ; preds = %35, %9
  %45 = call i32 (...) @IsTransactionOrTransactionBlock()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @ProcArrayLock, align 4
  %49 = load i32, i32* @LW_EXCLUSIVE, align 4
  %50 = call i32 @LWLockAcquire(i32 %48, i32 %49)
  %51 = load i32, i32* @PROC_IN_LOGICAL_DECODING, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MyPgXact, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @ProcArrayLock, align 4
  %57 = call i32 @LWLockRelease(i32 %56)
  br label %58

58:                                               ; preds = %47, %44
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 9
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %61, align 8
  %62 = load i32, i32* @wal_segment_size, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %65 = call i32 @XLogReaderAllocate(i32 %62, i32* null, i32 %63, %struct.TYPE_13__* %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %58
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @ereport(i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %58
  %79 = call %struct.TYPE_14__* (...) @ReorderBufferAllocate()
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 6
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @AllocateSnapshotBuilder(%struct.TYPE_14__* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 5
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %95, align 8
  %96 = load i32, i32* @begin_cb_wrapper, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 4
  store i32 %96, i32* %100, align 8
  %101 = load i32, i32* @change_cb_wrapper, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 6
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* @truncate_cb_wrapper, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  store i32 %106, i32* %110, align 8
  %111 = load i32, i32* @commit_cb_wrapper, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load i32, i32* @message_cb_wrapper, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  %121 = call i32 (...) @makeStringInfo()
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store i32* %133, i32** %135, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @MemoryContextSwitchTo(i32 %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  ret %struct.TYPE_13__* %141
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_13__* @palloc0(i32) #1

declare dso_local i32 @LoadOutputPlugin(i32*, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @IsTransactionOrTransactionBlock(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @XLogReaderAllocate(i32, i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_14__* @ReorderBufferAllocate(...) #1

declare dso_local i32 @AllocateSnapshotBuilder(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @makeStringInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
