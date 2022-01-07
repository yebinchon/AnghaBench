; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterTableNamespaceInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterTableNamespaceInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }

@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterTableNamespaceInternal(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load i32, i32* @RelationRelationId, align 4
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call %struct.TYPE_13__* @table_open(i32 %14, i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = call i32 @RelationGetRelid(%struct.TYPE_13__* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @AlterRelationNamespaceInternal(%struct.TYPE_13__* %17, i32 %19, i32 %20, i32 %21, i32 1, i32* %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @AlterTypeNamespaceInternal(i32 %28, i32 %29, i32 0, i32 0, i32* %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RELKIND_RELATION, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RELKIND_MATVIEW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %47, %39, %4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @AlterIndexNamespaces(%struct.TYPE_13__* %56, %struct.TYPE_13__* %57, i32 %58, i32 %59, i32* %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* @AccessExclusiveLock, align 4
  %68 = call i32 @AlterSeqNamespaces(%struct.TYPE_13__* %62, %struct.TYPE_13__* %63, i32 %64, i32 %65, i32* %66, i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = call i32 @RelationGetRelid(%struct.TYPE_13__* %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @AlterConstraintNamespaces(i32 %70, i32 %71, i32 %72, i32 0, i32* %73)
  br label %75

75:                                               ; preds = %55, %47
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = load i32, i32* @RowExclusiveLock, align 4
  %78 = call i32 @table_close(%struct.TYPE_13__* %76, i32 %77)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_13__* @table_open(i32, i32) #1

declare dso_local i32 @AlterRelationNamespaceInternal(%struct.TYPE_13__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_13__*) #1

declare dso_local i32 @AlterTypeNamespaceInternal(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @AlterIndexNamespaces(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @AlterSeqNamespaces(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32*, i32) #1

declare dso_local i32 @AlterConstraintNamespaces(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @table_close(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
