; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterRelationNamespaceInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_AlterRelationNamespaceInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@ERRCODE_DUPLICATE_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"relation \22%s\22 already exists in schema \22%s\22\00", align 1
@NamespaceRelationId = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"failed to change schema dependency for relation \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterRelationNamespaceInternal(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* @RELOID, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @ObjectIdGetDatum(i64 %18)
  %20 = call %struct.TYPE_12__* @SearchSysCacheCopy1(i32 %17, i32 %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %13, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %22 = call i32 @HeapTupleIsValid(%struct.TYPE_12__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %24, %6
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %30 = call i64 @GETSTRUCT(%struct.TYPE_12__* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %14, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32, i32* @RelationRelationId, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @object_address_present(%struct.TYPE_11__* %15, i32* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %100, label %48

48:                                               ; preds = %28
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %100

52:                                               ; preds = %48
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @NameStr(i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = call i64 @get_relname_relid(i64 %56, i64 %57)
  %59 = load i64, i64* @InvalidOid, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %52
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @NameStr(i32 %67)
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @get_namespace_name(i64 %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %70)
  %72 = call i32 @ereport(i32 %62, i32 %71)
  br label %73

73:                                               ; preds = %61, %52
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %81 = call i32 @CatalogTupleUpdate(i32 %77, i32* %79, %struct.TYPE_12__* %80)
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %73
  %85 = load i32, i32* @RelationRelationId, align 4
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* @NamespaceRelationId, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @changeDependencyFor(i32 %85, i64 %86, i32 %87, i64 %88, i64 %89)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* @ERROR, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @NameStr(i32 %96)
  %98 = call i32 @elog(i32 %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %92, %84, %73
  br label %100

100:                                              ; preds = %99, %48, %28
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @add_exact_object_address(%struct.TYPE_11__* %15, i32* %104)
  %106 = load i32, i32* @RelationRelationId, align 4
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @InvokeObjectPostAlterHook(i32 %106, i64 %107, i32 0)
  br label %109

109:                                              ; preds = %103, %100
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %111 = call i32 @heap_freetuple(%struct.TYPE_12__* %110)
  ret void
}

declare dso_local %struct.TYPE_12__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_12__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_12__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @object_address_present(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @get_relname_relid(i64, i64) #1

declare dso_local i64 @NameStr(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i32) #1

declare dso_local i32 @get_namespace_name(i64) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @changeDependencyFor(i32, i64, i32, i64, i64) #1

declare dso_local i32 @add_exact_object_address(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
