; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_update.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@TTSOpsVirtual = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@LockTupleExclusive = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"logical replication did not find row for update in replication target relation \22%s\22\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @apply_handle_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_handle_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__, align 4
  %9 = alloca %struct.TYPE_22__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = call i32 (...) @ensure_transaction()
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @logicalrep_read_update(i32 %16, i32* %10, %struct.TYPE_22__* %8, %struct.TYPE_22__* %9)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @RowExclusiveLock, align 4
  %20 = call %struct.TYPE_23__* @logicalrep_rel_open(i32 %18, i32 %19)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %3, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = call i32 @should_apply_changes_for_rel(%struct.TYPE_23__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = load i32, i32* @RowExclusiveLock, align 4
  %27 = call i32 @logicalrep_rel_close(%struct.TYPE_23__* %25, i32 %26)
  br label %168

28:                                               ; preds = %1
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = call i32 @check_relation_updatable(%struct.TYPE_23__* %29)
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = call %struct.TYPE_24__* @create_estate_for_relation(%struct.TYPE_23__* %31)
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %6, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @RelationGetDescr(i32 %36)
  %38 = call i32* @ExecInitExtraTupleSlot(%struct.TYPE_24__* %33, i32 %37, i32* @TTSOpsVirtual)
  store i32* %38, i32** %12, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = call i32* @table_slot_create(i32 %41, i32* %43)
  store i32* %44, i32** %11, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %46 = load i32, i32* @NIL, align 4
  %47 = call i32 @EvalPlanQualInit(i32* %7, %struct.TYPE_24__* %45, i32* null, i32 %46, i32 -1)
  %48 = call i32 (...) @GetTransactionSnapshot()
  %49 = call i32 @PushActiveSnapshot(i32 %48)
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ExecOpenIndices(i32 %52, i32 0)
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %55 = call i32 @GetPerTupleMemoryContext(%struct.TYPE_24__* %54)
  %56 = call i32 @MemoryContextSwitchTo(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %28
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  br label %67

64:                                               ; preds = %28
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i32 [ %63, %61 ], [ %66, %64 ]
  %69 = call i32 @slot_store_cstrings(i32* %57, %struct.TYPE_23__* %58, i32 %68)
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @MemoryContextSwitchTo(i32 %70)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @GetRelationIdentityOrPK(i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @OidIsValid(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %67
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %86, %79
  %90 = phi i1 [ false, %79 ], [ %88, %86 ]
  br label %91

91:                                               ; preds = %89, %67
  %92 = phi i1 [ true, %67 ], [ %90, %89 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @OidIsValid(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @LockTupleExclusive, align 4
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @RelationFindReplTupleByIndex(i32 %101, i32 %102, i32 %103, i32* %104, i32* %105)
  store i32 %106, i32* %13, align 4
  br label %115

107:                                              ; preds = %91
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @LockTupleExclusive, align 4
  %112 = load i32*, i32** %12, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @RelationFindReplTupleSeq(i32 %110, i32 %111, i32* %112, i32* %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %107, %98
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @ExecClearTuple(i32* %116)
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = call i32 @GetPerTupleMemoryContext(%struct.TYPE_24__* %121)
  %123 = call i32 @MemoryContextSwitchTo(i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32*, i32** %12, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @ExecCopySlot(i32* %124, i32* %125)
  %127 = load i32*, i32** %12, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @slot_modify_cstrings(i32* %127, %struct.TYPE_23__* %128, i32 %130, i32 %132)
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @MemoryContextSwitchTo(i32 %134)
  %136 = load i32*, i32** %12, align 8
  %137 = call i32 @EvalPlanQualSetSlot(i32* %7, i32* %136)
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = call i32 @ExecSimpleRelationUpdate(%struct.TYPE_24__* %138, i32* %7, i32* %139, i32* %140)
  br label %149

142:                                              ; preds = %115
  %143 = load i32, i32* @DEBUG1, align 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @RelationGetRelationName(i32 %146)
  %148 = call i32 @elog(i32 %143, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %142, %120
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ExecCloseIndices(i32 %152)
  %154 = call i32 (...) @PopActiveSnapshot()
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = call i32 @AfterTriggerEndQuery(%struct.TYPE_24__* %155)
  %157 = call i32 @EvalPlanQualEnd(i32* %7)
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ExecResetTupleTable(i32 %160, i32 0)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %163 = call i32 @FreeExecutorState(%struct.TYPE_24__* %162)
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %165 = load i32, i32* @NoLock, align 4
  %166 = call i32 @logicalrep_rel_close(%struct.TYPE_23__* %164, i32 %165)
  %167 = call i32 (...) @CommandCounterIncrement()
  br label %168

168:                                              ; preds = %149, %24
  ret void
}

declare dso_local i32 @ensure_transaction(...) #1

declare dso_local i32 @logicalrep_read_update(i32, i32*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @logicalrep_rel_open(i32, i32) #1

declare dso_local i32 @should_apply_changes_for_rel(%struct.TYPE_23__*) #1

declare dso_local i32 @logicalrep_rel_close(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @check_relation_updatable(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @create_estate_for_relation(%struct.TYPE_23__*) #1

declare dso_local i32* @ExecInitExtraTupleSlot(%struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @table_slot_create(i32, i32*) #1

declare dso_local i32 @EvalPlanQualInit(i32*, %struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @ExecOpenIndices(i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(%struct.TYPE_24__*) #1

declare dso_local i32 @slot_store_cstrings(i32*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @GetRelationIdentityOrPK(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @RelationFindReplTupleByIndex(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @RelationFindReplTupleSeq(i32, i32, i32*, i32*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i32 @ExecCopySlot(i32*, i32*) #1

declare dso_local i32 @slot_modify_cstrings(i32*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @EvalPlanQualSetSlot(i32*, i32*) #1

declare dso_local i32 @ExecSimpleRelationUpdate(%struct.TYPE_24__*, i32*, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @ExecCloseIndices(i32) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @AfterTriggerEndQuery(%struct.TYPE_24__*) #1

declare dso_local i32 @EvalPlanQualEnd(i32*) #1

declare dso_local i32 @ExecResetTupleTable(i32, i32) #1

declare dso_local i32 @FreeExecutorState(%struct.TYPE_24__*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
