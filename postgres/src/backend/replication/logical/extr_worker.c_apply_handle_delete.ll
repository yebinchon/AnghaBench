; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@TTSOpsVirtual = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@LockTupleExclusive = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"logical replication could not find row for delete in replication target relation \22%s\22\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @apply_handle_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_handle_delete(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = call i32 (...) @ensure_transaction()
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @logicalrep_read_delete(i32 %14, %struct.TYPE_20__* %4)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RowExclusiveLock, align 4
  %18 = call %struct.TYPE_21__* @logicalrep_rel_open(i32 %16, i32 %17)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %3, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = call i32 @should_apply_changes_for_rel(%struct.TYPE_21__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = load i32, i32* @RowExclusiveLock, align 4
  %25 = call i32 @logicalrep_rel_close(%struct.TYPE_21__* %23, i32 %24)
  br label %135

26:                                               ; preds = %1
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %28 = call i32 @check_relation_updatable(%struct.TYPE_21__* %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = call %struct.TYPE_22__* @create_estate_for_relation(%struct.TYPE_21__* %29)
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %7, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @RelationGetDescr(i32 %34)
  %36 = call i32* @ExecInitExtraTupleSlot(%struct.TYPE_22__* %31, i32 %35, i32* @TTSOpsVirtual)
  store i32* %36, i32** %9, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = call i32* @table_slot_create(i32 %39, i32* %41)
  store i32* %42, i32** %10, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = load i32, i32* @NIL, align 4
  %45 = call i32 @EvalPlanQualInit(i32* %8, %struct.TYPE_22__* %43, i32* null, i32 %44, i32 -1)
  %46 = call i32 (...) @GetTransactionSnapshot()
  %47 = call i32 @PushActiveSnapshot(i32 %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ExecOpenIndices(i32 %50, i32 0)
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = call i32 @GetPerTupleMemoryContext(%struct.TYPE_22__* %52)
  %54 = call i32 @MemoryContextSwitchTo(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @slot_store_cstrings(i32* %55, %struct.TYPE_21__* %56, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @MemoryContextSwitchTo(i32 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @GetRelationIdentityOrPK(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @OidIsValid(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %26
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %69, %26
  %77 = phi i1 [ true, %26 ], [ %75, %69 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @Assert(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @OidIsValid(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @LockTupleExclusive, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @RelationFindReplTupleByIndex(i32 %86, i32 %87, i32 %88, i32* %89, i32* %90)
  store i32 %91, i32* %11, align 4
  br label %100

92:                                               ; preds = %76
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @LockTupleExclusive, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @RelationFindReplTupleSeq(i32 %95, i32 %96, i32* %97, i32* %98)
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %92, %83
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @EvalPlanQualSetSlot(i32* %8, i32* %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @ExecSimpleRelationDelete(%struct.TYPE_22__* %106, i32* %8, i32* %107)
  br label %116

109:                                              ; preds = %100
  %110 = load i32, i32* @DEBUG1, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @RelationGetRelationName(i32 %113)
  %115 = call i32 @elog(i32 %110, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %109, %103
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ExecCloseIndices(i32 %119)
  %121 = call i32 (...) @PopActiveSnapshot()
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %123 = call i32 @AfterTriggerEndQuery(%struct.TYPE_22__* %122)
  %124 = call i32 @EvalPlanQualEnd(i32* %8)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ExecResetTupleTable(i32 %127, i32 0)
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %130 = call i32 @FreeExecutorState(%struct.TYPE_22__* %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %132 = load i32, i32* @NoLock, align 4
  %133 = call i32 @logicalrep_rel_close(%struct.TYPE_21__* %131, i32 %132)
  %134 = call i32 (...) @CommandCounterIncrement()
  br label %135

135:                                              ; preds = %116, %22
  ret void
}

declare dso_local i32 @ensure_transaction(...) #1

declare dso_local i32 @logicalrep_read_delete(i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @logicalrep_rel_open(i32, i32) #1

declare dso_local i32 @should_apply_changes_for_rel(%struct.TYPE_21__*) #1

declare dso_local i32 @logicalrep_rel_close(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @check_relation_updatable(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @create_estate_for_relation(%struct.TYPE_21__*) #1

declare dso_local i32* @ExecInitExtraTupleSlot(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @table_slot_create(i32, i32*) #1

declare dso_local i32 @EvalPlanQualInit(i32*, %struct.TYPE_22__*, i32*, i32, i32) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @ExecOpenIndices(i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(%struct.TYPE_22__*) #1

declare dso_local i32 @slot_store_cstrings(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @GetRelationIdentityOrPK(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @RelationFindReplTupleByIndex(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @RelationFindReplTupleSeq(i32, i32, i32*, i32*) #1

declare dso_local i32 @EvalPlanQualSetSlot(i32*, i32*) #1

declare dso_local i32 @ExecSimpleRelationDelete(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @ExecCloseIndices(i32) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @AfterTriggerEndQuery(%struct.TYPE_22__*) #1

declare dso_local i32 @EvalPlanQualEnd(i32*) #1

declare dso_local i32 @ExecResetTupleTable(i32, i32) #1

declare dso_local i32 @FreeExecutorState(%struct.TYPE_22__*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
