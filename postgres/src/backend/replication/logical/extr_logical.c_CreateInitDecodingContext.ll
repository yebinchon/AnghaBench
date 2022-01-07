; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_CreateInitDecodingContext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_CreateInitDecodingContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i8*, %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i64, i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_14__*, %struct.TYPE_13__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@InvalidTransactionId = common dso_local global i64 0, align 8
@MyReplicationSlot = common dso_local global %struct.TYPE_15__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cannot perform logical decoding without an acquired slot\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"cannot initialize logical decoding without a specified plugin\00", align 1
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"cannot use physical replication slot for logical decoding\00", align 1
@MyDatabaseId = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"replication slot \22%s\22 was not created in this database\00", align 1
@ERRCODE_ACTIVE_SQL_TRANSACTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"cannot create logical replication slot in transaction that has performed writes\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @CreateInitDecodingContext(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i64, i64* @InvalidTransactionId, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %17, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** @MyReplicationSlot, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %18, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %25 = icmp eq %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load i32, i32* @ERROR, align 4
  %28 = call i32 @elog(i32 %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @ERROR, align 4
  %34 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %37 = call i64 @SlotIsPhysical(%struct.TYPE_15__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %42 = call i32 @errcode(i32 %41)
  %43 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @ereport(i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MyDatabaseId, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @NameStr(i32 %59)
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = call i32 @ereport(i32 %53, i32 %61)
  br label %63

63:                                               ; preds = %52, %45
  %64 = call i64 (...) @IsTransactionState()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = call i64 (...) @GetTopTransactionIdIfAny()
  %68 = load i64, i64* @InvalidTransactionId, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_ACTIVE_SQL_TRANSACTION, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %66, %63
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = call i32 @SpinLockAcquire(i32* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @NameStr(i32 %83)
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* @NAMEDATALEN, align 4
  %87 = call i32 @StrNCpy(i32 %84, i8* %85, i32 %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = call i32 @SpinLockRelease(i32* %89)
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @XLogRecPtrIsInvalid(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %76
  %95 = call i32 (...) @ReplicationSlotReserveWal()
  br label %107

96:                                               ; preds = %76
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = call i32 @SpinLockAcquire(i32* %98)
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = call i32 @SpinLockRelease(i32* %105)
  br label %107

107:                                              ; preds = %96, %94
  %108 = load i32, i32* @ProcArrayLock, align 4
  %109 = load i32, i32* @LW_EXCLUSIVE, align 4
  %110 = call i32 @LWLockAcquire(i32 %108, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i8* @GetOldestSafeDecodingTransactionId(i32 %114)
  store i8* %115, i8** %17, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = call i32 @SpinLockAcquire(i32* %117)
  %119 = load i8*, i8** %17, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %107
  %129 = load i8*, i8** %17, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %107
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = call i32 @SpinLockRelease(i32* %134)
  %136 = call i32 @ReplicationSlotsComputeRequiredXmin(i32 1)
  %137 = load i32, i32* @ProcArrayLock, align 4
  %138 = call i32 @LWLockRelease(i32 %137)
  %139 = call i32 (...) @ReplicationSlotMarkDirty()
  %140 = call i32 (...) @ReplicationSlotSave()
  %141 = load i32, i32* @NIL, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i8*, i8** %17, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call %struct.TYPE_16__* @StartupDecodingContext(i32 %141, i32 %142, i8* %143, i32 %144, i32 0, i32 %145, i32 %146, i32 %147, i32 %148)
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %19, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @MemoryContextSwitchTo(i32 %152)
  store i32 %153, i32* %20, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %132
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = call i32 @startup_cb_wrapper(%struct.TYPE_16__* %160, %struct.TYPE_17__* %162, i32 1)
  br label %164

164:                                              ; preds = %159, %132
  %165 = load i32, i32* %20, align 4
  %166 = call i32 @MemoryContextSwitchTo(i32 %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  ret %struct.TYPE_16__* %175
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @SlotIsPhysical(%struct.TYPE_15__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i64 @GetTopTransactionIdIfAny(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @StrNCpy(i32, i8*, i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i64 @XLogRecPtrIsInvalid(i32) #1

declare dso_local i32 @ReplicationSlotReserveWal(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i8* @GetOldestSafeDecodingTransactionId(i32) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredXmin(i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ReplicationSlotMarkDirty(...) #1

declare dso_local i32 @ReplicationSlotSave(...) #1

declare dso_local %struct.TYPE_16__* @StartupDecodingContext(i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @startup_cb_wrapper(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
