; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_attribute_post_create.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_attribute_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@AttributeRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_attribute_attrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_attribute_attnum = common dso_local global i32 0, align 4
@F_INT2EQ = common dso_local global i32 0, align 4
@AttributeRelidNumIndexId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"could not find tuple for column %d of relation %u\00", align 1
@RelationRelationId = common dso_local global i8* null, align 8
@SEPG_CLASS_DB_COLUMN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@SEPG_DB_COLUMN__CREATE = common dso_local global i32 0, align 4
@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_attribute_post_create(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call signext i8 @get_rel_relkind(i8* %16)
  store i8 %17, i8* %15, align 1
  %18 = load i8, i8* %15, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, i8* @RELKIND_RELATION, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i8, i8* %15, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %116

30:                                               ; preds = %23, %2
  %31 = load i32, i32* @AttributeRelationId, align 4
  %32 = load i32, i32* @AccessShareLock, align 4
  %33 = call i32 @table_open(i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %35 = load i32, i32* @Anum_pg_attribute_attrelid, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_OIDEQ, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @ObjectIdGetDatum(i8* %38)
  %40 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %42 = load i32, i32* @Anum_pg_attribute_attnum, align 4
  %43 = load i32, i32* @BTEqualStrategyNumber, align 4
  %44 = load i32, i32* @F_INT2EQ, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @Int16GetDatum(i64 %45)
  %47 = call i32 @ScanKeyInit(i32* %41, i32 %42, i32 %43, i32 %44, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @AttributeRelidNumIndexId, align 4
  %50 = load i32, i32* @SnapshotSelf, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %52 = call i32 @systable_beginscan(i32 %48, i32 %49, i32 1, i32 %50, i32 2, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @systable_getnext(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @HeapTupleIsValid(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %30
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i64, i64* %4, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @elog(i32 %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %30
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @GETSTRUCT(i32 %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %13, align 8
  %67 = call i8* (...) @sepgsql_get_client_label()
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** @RelationRelationId, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = call i8* @sepgsql_get_label(i8* %68, i8* %69, i32 0)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @NameStr(i32 %76)
  %78 = call i8* @sepgsql_compute_create(i8* %71, i8* %72, i32 %73, i32 %77)
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** @RelationRelationId, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = call i32 @initStringInfo(%struct.TYPE_8__* %14)
  %85 = call i32 @getObjectIdentity(%struct.TYPE_9__* %12)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @NameStr(i32 %88)
  %90 = call i32 @quote_identifier(i32 %89)
  %91 = call i32 @appendStringInfo(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %90)
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %94 = load i32, i32* @SEPG_DB_COLUMN__CREATE, align 4
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sepgsql_avc_check_perms_label(i8* %92, i32 %93, i32 %94, i32 %96, i32 1)
  %98 = load i8*, i8** @RelationRelationId, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i8* %98, i8** %99, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i8* %100, i8** %101, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @SetSecurityLabel(%struct.TYPE_9__* %12, i32 %104, i8* %105)
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @systable_endscan(i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @AccessShareLock, align 4
  %111 = call i32 @table_close(i32 %109, i32 %110)
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @pfree(i8* %112)
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @pfree(i8* %114)
  br label %116

116:                                              ; preds = %63, %29
  ret void
}

declare dso_local signext i8 @get_rel_relkind(i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @Int16GetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @sepgsql_get_client_label(...) #1

declare dso_local i8* @sepgsql_get_label(i8*, i8*, i32) #1

declare dso_local i8* @sepgsql_compute_create(i8*, i8*, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @getObjectIdentity(%struct.TYPE_9__*) #1

declare dso_local i32 @quote_identifier(i32) #1

declare dso_local i32 @sepgsql_avc_check_perms_label(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SetSecurityLabel(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
