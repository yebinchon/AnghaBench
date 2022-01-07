; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_proc.c_sepgsql_proc_post_create.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_proc.c_sepgsql_proc_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32* }

@ProcedureRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_proc_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ProcedureOidIndexId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find tuple for function %u\00", align 1
@NamespaceRelationId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SCHEMA = common dso_local global i32 0, align 4
@SEPG_DB_SCHEMA__ADD_NAME = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_PROCEDURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4
@SEPG_DB_PROCEDURE__CREATE = common dso_local global i32 0, align 4
@SEPG_DB_PROCEDURE__INSTALL = common dso_local global i32 0, align 4
@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_proc_post_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %2, align 4
  %16 = load i32, i32* @ProcedureRelationId, align 4
  %17 = load i32, i32* @AccessShareLock, align 4
  %18 = call i32 @table_open(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @Anum_pg_proc_oid, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_OIDEQ, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = call i32 @ScanKeyInit(i32* %4, i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ProcedureOidIndexId, align 4
  %27 = load i32, i32* @SnapshotSelf, align 4
  %28 = call i32 @systable_beginscan(i32 %25, i32 %26, i32 1, i32 %27, i32 1, i32* %4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @systable_getnext(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @HeapTupleIsValid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @GETSTRUCT(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %15, align 8
  %42 = load i32, i32* @NamespaceRelationId, align 4
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @SEPG_CLASS_DB_SCHEMA, align 4
  %50 = load i32, i32* @SEPG_DB_SCHEMA__ADD_NAME, align 4
  %51 = call i32 @getObjectIdentity(%struct.TYPE_14__* %14)
  %52 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_14__* %14, i32 %49, i32 %50, i32 %51, i32 1)
  %53 = call i8* (...) @sepgsql_get_client_label()
  store i8* %53, i8** %8, align 8
  %54 = load i32, i32* @NamespaceRelationId, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @sepgsql_get_label(i32 %54, i32 %57, i32 0)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @NameStr(i32 %64)
  %66 = call i8* @sepgsql_compute_create(i8* %59, i8* %60, i32 %61, i32 %65)
  store i8* %66, i8** %10, align 8
  %67 = call i32 @initStringInfo(%struct.TYPE_13__* %13)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @get_namespace_name(i32 %70)
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @NameStr(i32 %75)
  %77 = call i32 @quote_qualified_identifier(i8* %72, i32 %76)
  %78 = call i32 @appendStringInfo(%struct.TYPE_13__* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %105, %38
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @appendStringInfoChar(%struct.TYPE_13__* %13, i8 signext 44)
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32, i32* @TypeRelationId, align 4
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 %100, i32* %101, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = call i32 @getObjectIdentity(%struct.TYPE_14__* %14)
  %104 = call i32 @appendStringInfoString(%struct.TYPE_13__* %13, i32 %103)
  br label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %79

108:                                              ; preds = %79
  %109 = call i32 @appendStringInfoChar(%struct.TYPE_13__* %13, i8 signext 41)
  %110 = load i32, i32* @SEPG_DB_PROCEDURE__CREATE, align 4
  store i32 %110, i32* %11, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @SEPG_DB_PROCEDURE__INSTALL, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %115, %108
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* @SEPG_CLASS_DB_PROCEDURE, align 4
  %122 = load i32, i32* %11, align 4
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @sepgsql_avc_check_perms_label(i8* %120, i32 %121, i32 %122, i8* %124, i32 1)
  %126 = load i32, i32* @ProcedureRelationId, align 4
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %2, align 4
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 %128, i32* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = call i32 @SetSecurityLabel(%struct.TYPE_14__* %14, i32 %131, i8* %132)
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @systable_endscan(i32 %134)
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @AccessShareLock, align 4
  %138 = call i32 @table_close(i32 %136, i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @pfree(i8* %140)
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @pfree(i8* %142)
  %144 = load i8*, i8** %10, align 8
  %145 = call i32 @pfree(i8* %144)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @getObjectIdentity(%struct.TYPE_14__*) #1

declare dso_local i8* @sepgsql_get_client_label(...) #1

declare dso_local i8* @sepgsql_get_label(i32, i32, i32) #1

declare dso_local i8* @sepgsql_compute_create(i8*, i8*, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_13__*) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @quote_qualified_identifier(i8*, i32) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sepgsql_avc_check_perms_label(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @SetSecurityLabel(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
