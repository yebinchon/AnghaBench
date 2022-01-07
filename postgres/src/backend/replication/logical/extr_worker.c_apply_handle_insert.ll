; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_worker.c_apply_handle_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@TTSOpsVirtual = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @apply_handle_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_handle_insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = call i32 (...) @ensure_transaction()
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @logicalrep_read_insert(i32 %10, %struct.TYPE_18__* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RowExclusiveLock, align 4
  %14 = call %struct.TYPE_19__* @logicalrep_rel_open(i32 %12, i32 %13)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %3, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = call i32 @should_apply_changes_for_rel(%struct.TYPE_19__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = load i32, i32* @RowExclusiveLock, align 4
  %21 = call i32 @logicalrep_rel_close(%struct.TYPE_19__* %19, i32 %20)
  br label %71

22:                                               ; preds = %1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = call %struct.TYPE_20__* @create_estate_for_relation(%struct.TYPE_19__* %23)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %6, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @RelationGetDescr(i32 %28)
  %30 = call i32* @ExecInitExtraTupleSlot(%struct.TYPE_20__* %25, i32 %29, i32* @TTSOpsVirtual)
  store i32* %30, i32** %7, align 8
  %31 = call i32 (...) @GetTransactionSnapshot()
  %32 = call i32 @PushActiveSnapshot(i32 %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = call i32 @GetPerTupleMemoryContext(%struct.TYPE_20__* %33)
  %35 = call i32 @MemoryContextSwitchTo(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @slot_store_cstrings(i32* %36, %struct.TYPE_19__* %37, i32 %39)
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @slot_fill_defaults(%struct.TYPE_19__* %41, %struct.TYPE_20__* %42, i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @MemoryContextSwitchTo(i32 %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ExecOpenIndices(i32 %49, i32 0)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @ExecSimpleRelationInsert(%struct.TYPE_20__* %51, i32* %52)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ExecCloseIndices(i32 %56)
  %58 = call i32 (...) @PopActiveSnapshot()
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = call i32 @AfterTriggerEndQuery(%struct.TYPE_20__* %59)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ExecResetTupleTable(i32 %63, i32 0)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = call i32 @FreeExecutorState(%struct.TYPE_20__* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %68 = load i32, i32* @NoLock, align 4
  %69 = call i32 @logicalrep_rel_close(%struct.TYPE_19__* %67, i32 %68)
  %70 = call i32 (...) @CommandCounterIncrement()
  br label %71

71:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @ensure_transaction(...) #1

declare dso_local i32 @logicalrep_read_insert(i32, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @logicalrep_rel_open(i32, i32) #1

declare dso_local i32 @should_apply_changes_for_rel(%struct.TYPE_19__*) #1

declare dso_local i32 @logicalrep_rel_close(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_20__* @create_estate_for_relation(%struct.TYPE_19__*) #1

declare dso_local i32* @ExecInitExtraTupleSlot(%struct.TYPE_20__*, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @GetTransactionSnapshot(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @GetPerTupleMemoryContext(%struct.TYPE_20__*) #1

declare dso_local i32 @slot_store_cstrings(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @slot_fill_defaults(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ExecOpenIndices(i32, i32) #1

declare dso_local i32 @ExecSimpleRelationInsert(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ExecCloseIndices(i32) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @AfterTriggerEndQuery(%struct.TYPE_20__*) #1

declare dso_local i32 @ExecResetTupleTable(i32, i32) #1

declare dso_local i32 @FreeExecutorState(%struct.TYPE_20__*) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
