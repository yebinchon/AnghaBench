; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_truncate_one_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_heap_truncate_one_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_truncate_one_rel(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = call i32 @table_relation_nontransactional_truncate(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = call i32 @RelationTruncateIndexes(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @OidIsValid(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @AccessExclusiveLock, align 4
  %29 = call %struct.TYPE_9__* @table_open(i32 %27, i32 %28)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %4, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call i32 @table_relation_nontransactional_truncate(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = call i32 @RelationTruncateIndexes(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = load i32, i32* @NoLock, align 4
  %36 = call i32 @table_close(%struct.TYPE_9__* %34, i32 %35)
  br label %37

37:                                               ; preds = %12, %26, %13
  ret void
}

declare dso_local i32 @table_relation_nontransactional_truncate(%struct.TYPE_9__*) #1

declare dso_local i32 @RelationTruncateIndexes(%struct.TYPE_9__*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local %struct.TYPE_9__* @table_open(i32, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
