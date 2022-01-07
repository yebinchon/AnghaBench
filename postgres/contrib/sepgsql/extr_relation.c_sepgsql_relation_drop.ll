; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_drop.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, i8* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32 }

@SEPG_CLASS_DB_TABLE = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SEQUENCE = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_VIEW = common dso_local global i32 0, align 4
@PG_TOAST_NAMESPACE = common dso_local global i8* null, align 8
@NamespaceRelationId = common dso_local global i8* null, align 8
@SEPG_CLASS_DB_SCHEMA = common dso_local global i32 0, align 4
@SEPG_DB_SCHEMA__REMOVE_NAME = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i8* null, align 8
@SEPG_DB_TABLE__DROP = common dso_local global i32 0, align 4
@ATTNUM = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_COLUMN = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_relation_drop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call signext i8 @get_rel_relkind(i8* %11)
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %28 [
    i32 130, label %15
    i32 131, label %15
    i32 129, label %17
    i32 128, label %19
    i32 132, label %21
  ]

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @SEPG_CLASS_DB_TABLE, align 4
  store i32 %16, i32* %5, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @SEPG_CLASS_DB_SEQUENCE, align 4
  store i32 %18, i32* %5, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load i32, i32* @SEPG_CLASS_DB_VIEW, align 4
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i8*, i8** %2, align 8
  %23 = call i8* @get_rel_namespace(i8* %22)
  %24 = load i8*, i8** @PG_TOAST_NAMESPACE, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %119

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %1
  br label %119

29:                                               ; preds = %27, %19, %17, %15
  %30 = load i8*, i8** @NamespaceRelationId, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i8* @get_rel_namespace(i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = call i8* @getObjectIdentity(%struct.TYPE_10__* %3)
  store i8* %36, i8** %4, align 8
  %37 = load i32, i32* @SEPG_CLASS_DB_SCHEMA, align 4
  %38 = load i32, i32* @SEPG_DB_SCHEMA__REMOVE_NAME, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_10__* %3, i32 %37, i32 %38, i8* %39, i32 1)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @pfree(i8* %41)
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 132
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @sepgsql_index_modify(i8* %47)
  br label %119

49:                                               ; preds = %29
  %50 = load i8*, i8** @RelationRelationId, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = call i8* @getObjectIdentity(%struct.TYPE_10__* %3)
  store i8* %55, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SEPG_DB_TABLE__DROP, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_10__* %3, i32 %56, i32 %57, i8* %58, i32 1)
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @pfree(i8* %60)
  %62 = load i8, i8* %6, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 130
  br i1 %64, label %69, label %65

65:                                               ; preds = %49
  %66 = load i8, i8* %6, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 131
  br i1 %68, label %69, label %119

69:                                               ; preds = %65, %49
  %70 = load i32, i32* @ATTNUM, align 4
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @ObjectIdGetDatum(i8* %71)
  %73 = call %struct.TYPE_12__* @SearchSysCacheList1(i32 %70, i32 %72)
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %8, align 8
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %113, %69
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %116

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %83, i64 %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i64 @GETSTRUCT(i32* %89)
  %91 = inttoptr i64 %90 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %7, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  br label %113

97:                                               ; preds = %80
  %98 = load i8*, i8** @RelationRelationId, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = call i8* @getObjectIdentity(%struct.TYPE_10__* %3)
  store i8* %106, i8** %4, align 8
  %107 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %108 = load i32, i32* @SEPG_DB_COLUMN__DROP, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_10__* %3, i32 %107, i32 %108, i8* %109, i32 1)
  %111 = load i8*, i8** %4, align 8
  %112 = call i32 @pfree(i8* %111)
  br label %113

113:                                              ; preds = %97, %96
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %74

116:                                              ; preds = %74
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = call i32 @ReleaseCatCacheList(%struct.TYPE_12__* %117)
  br label %119

119:                                              ; preds = %26, %28, %46, %116, %65
  ret void
}

declare dso_local signext i8 @get_rel_relkind(i8*) #1

declare dso_local i8* @get_rel_namespace(i8*) #1

declare dso_local i8* @getObjectIdentity(%struct.TYPE_10__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_10__*, i32, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @sepgsql_index_modify(i8*) #1

declare dso_local %struct.TYPE_12__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i64 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseCatCacheList(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
