; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_setattr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@SEPG_CLASS_DB_TABLE = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SEQUENCE = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_VIEW = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_class_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ClassOidIndexId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find tuple for relation %u\00", align 1
@RELOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@SEPG_DB_TABLE__SETATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_relation_setattr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @get_rel_relkind(i32 %13)
  switch i32 %14, label %24 [
    i32 130, label %15
    i32 131, label %15
    i32 129, label %17
    i32 128, label %19
    i32 132, label %21
  ]

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @SEPG_CLASS_DB_TABLE, align 4
  store i32 %16, i32* %12, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @SEPG_CLASS_DB_SEQUENCE, align 4
  store i32 %18, i32* %12, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @SEPG_CLASS_DB_VIEW, align 4
  store i32 %20, i32* %12, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @sepgsql_index_modify(i32 %22)
  br label %119

24:                                               ; preds = %1
  br label %119

25:                                               ; preds = %19, %17, %15
  %26 = load i32, i32* @RelationRelationId, align 4
  %27 = load i32, i32* @AccessShareLock, align 4
  %28 = call i32 @table_open(i32 %26, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @Anum_pg_class_oid, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_OIDEQ, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ObjectIdGetDatum(i32 %32)
  %34 = call i32 @ScanKeyInit(i32* %4, i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ClassOidIndexId, align 4
  %37 = load i32, i32* @SnapshotSelf, align 4
  %38 = call i32 @systable_beginscan(i32 %35, i32 %36, i32 1, i32 %37, i32 1, i32* %4)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @systable_getnext(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @HeapTupleIsValid(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %25
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %25
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @GETSTRUCT(i32 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %9, align 8
  %52 = load i32, i32* @RELOID, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ObjectIdGetDatum(i32 %53)
  %55 = call i32 @SearchSysCache1(i32 %52, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @HeapTupleIsValid(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %48
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @elog(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %48
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @GETSTRUCT(i32 %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %8, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %63
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @sepgsql_schema_remove_name(i64 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @sepgsql_schema_add_name(i64 %81)
  br label %83

83:                                               ; preds = %74, %63
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @NameStr(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @NameStr(i32 %90)
  %92 = call i64 @strcmp(i32 %87, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @sepgsql_schema_rename(i64 %97)
  br label %99

99:                                               ; preds = %94, %83
  %100 = load i32, i32* @RelationRelationId, align 4
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %2, align 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = call i8* @getObjectIdentity(%struct.TYPE_5__* %10)
  store i8* %105, i8** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @SEPG_DB_TABLE__SETATTR, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_5__* %10, i32 %106, i32 %107, i8* %108, i32 1)
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @pfree(i8* %110)
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @ReleaseSysCache(i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @systable_endscan(i32 %114)
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @AccessShareLock, align 4
  %118 = call i32 @table_close(i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %99, %24, %21
  ret void
}

declare dso_local i32 @get_rel_relkind(i32) #1

declare dso_local i32 @sepgsql_index_modify(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @sepgsql_schema_remove_name(i64) #1

declare dso_local i32 @sepgsql_schema_add_name(i64) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @sepgsql_schema_rename(i64) #1

declare dso_local i8* @getObjectIdentity(%struct.TYPE_5__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
