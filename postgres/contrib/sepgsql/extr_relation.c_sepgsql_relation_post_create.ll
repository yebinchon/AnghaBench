; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_post_create.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_relation.c_sepgsql_relation_post_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }

@RelationRelationId = common dso_local global i8* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_class_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ClassOidIndexId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not find tuple for relation %u\00", align 1
@PG_TOAST_NAMESPACE = common dso_local global i64 0, align 8
@NamespaceRelationId = common dso_local global i8* null, align 8
@SEPG_CLASS_DB_SCHEMA = common dso_local global i32 0, align 4
@SEPG_DB_SCHEMA__ADD_NAME = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_TABLE = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SEQUENCE = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_VIEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@SEPG_DB_DATABASE__CREATE = common dso_local global i32 0, align 4
@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i8* null, align 8
@Anum_pg_attribute_attrelid = common dso_local global i32 0, align 4
@AttributeRelidNumIndexId = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s.%s.%s\00", align 1
@SEPG_CLASS_DB_COLUMN = common dso_local global i32 0, align 4
@SEPG_DB_COLUMN__CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_relation_post_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_11__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %2, align 8
  %21 = load i8*, i8** @RelationRelationId, align 8
  %22 = load i32, i32* @AccessShareLock, align 4
  %23 = call i32 @table_open(i8* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @Anum_pg_class_oid, align 4
  %25 = load i32, i32* @BTEqualStrategyNumber, align 4
  %26 = load i32, i32* @F_OIDEQ, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @ObjectIdGetDatum(i8* %27)
  %29 = call i32 @ScanKeyInit(i32* %4, i32 %24, i32 %25, i32 %26, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ClassOidIndexId, align 4
  %32 = load i32, i32* @SnapshotSelf, align 4
  %33 = call i32 @systable_beginscan(i32 %30, i32 %31, i32 1, i32 %32, i32 1, i32* %4)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @systable_getnext(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @HeapTupleIsValid(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i8*, i8** %2, align 8
  %42 = call i32 @elog(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %1
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @GETSTRUCT(i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %7, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 132
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PG_TOAST_NAMESPACE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %209

58:                                               ; preds = %51, %43
  %59 = load i8*, i8** @NamespaceRelationId, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @SEPG_CLASS_DB_SCHEMA, align 4
  %67 = load i32, i32* @SEPG_DB_SCHEMA__ADD_NAME, align 4
  %68 = call i32 @getObjectIdentity(%struct.TYPE_12__* %8)
  %69 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_12__* %8, i32 %66, i32 %67, i32 %68, i32 1)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %82 [
    i32 130, label %73
    i32 131, label %73
    i32 129, label %75
    i32 128, label %77
    i32 132, label %79
  ]

73:                                               ; preds = %58, %58
  %74 = load i32, i32* @SEPG_CLASS_DB_TABLE, align 4
  store i32 %74, i32* %9, align 4
  br label %83

75:                                               ; preds = %58
  %76 = load i32, i32* @SEPG_CLASS_DB_SEQUENCE, align 4
  store i32 %76, i32* %9, align 4
  br label %83

77:                                               ; preds = %58
  %78 = load i32, i32* @SEPG_CLASS_DB_VIEW, align 4
  store i32 %78, i32* %9, align 4
  br label %83

79:                                               ; preds = %58
  %80 = load i8*, i8** %2, align 8
  %81 = call i32 @sepgsql_index_modify(i8* %80)
  br label %209

82:                                               ; preds = %58
  br label %209

83:                                               ; preds = %77, %75, %73
  %84 = call i8* (...) @sepgsql_get_client_label()
  store i8* %84, i8** %10, align 8
  %85 = load i8*, i8** @NamespaceRelationId, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @sepgsql_get_label(i8* %85, i64 %88, i32 0)
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @NameStr(i32 %95)
  %97 = call i8* @sepgsql_compute_create(i8* %90, i8* %91, i32 %92, i8* %96)
  store i8* %97, i8** %12, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @get_namespace_name(i64 %100)
  store i8* %101, i8** %14, align 8
  %102 = call i32 @initStringInfo(%struct.TYPE_11__* %15)
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @quote_identifier(i8* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @NameStr(i32 %107)
  %109 = call i32 @quote_identifier(i8* %108)
  %110 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @appendStringInfo(%struct.TYPE_11__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %109)
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @SEPG_DB_DATABASE__CREATE, align 4
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sepgsql_avc_check_perms_label(i8* %111, i32 %112, i32 %113, i32 %115, i32 1)
  %117 = load i8*, i8** @RelationRelationId, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i8* %117, i8** %118, align 8
  %119 = load i8*, i8** %2, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i64 %120, i64* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 @SetSecurityLabel(%struct.TYPE_12__* %8, i32 %123, i8* %124)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 130
  br i1 %129, label %135, label %130

130:                                              ; preds = %83
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 131
  br i1 %134, label %135, label %206

135:                                              ; preds = %130, %83
  %136 = load i8*, i8** @AttributeRelationId, align 8
  %137 = load i32, i32* @AccessShareLock, align 4
  %138 = call i32 @table_open(i8* %136, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* @Anum_pg_attribute_attrelid, align 4
  %140 = load i32, i32* @BTEqualStrategyNumber, align 4
  %141 = load i32, i32* @F_OIDEQ, align 4
  %142 = load i8*, i8** %2, align 8
  %143 = call i32 @ObjectIdGetDatum(i8* %142)
  %144 = call i32 @ScanKeyInit(i32* %17, i32 %139, i32 %140, i32 %141, i32 %143)
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @AttributeRelidNumIndexId, align 4
  %147 = load i32, i32* @SnapshotSelf, align 4
  %148 = call i32 @systable_beginscan(i32 %145, i32 %146, i32 1, i32 %147, i32 1, i32* %17)
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %154, %135
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @systable_getnext(i32 %150)
  store i32 %151, i32* %19, align 4
  %152 = call i64 @HeapTupleIsValid(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %200

154:                                              ; preds = %149
  %155 = load i32, i32* %19, align 4
  %156 = call i64 @GETSTRUCT(i32 %155)
  %157 = inttoptr i64 %156 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %20, align 8
  %158 = call i32 @resetStringInfo(%struct.TYPE_11__* %15)
  %159 = load i8*, i8** %14, align 8
  %160 = call i32 @quote_identifier(i8* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i8* @NameStr(i32 %163)
  %165 = call i32 @quote_identifier(i8* %164)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @NameStr(i32 %168)
  %170 = call i32 @quote_identifier(i8* %169)
  %171 = call i32 (%struct.TYPE_11__*, i8*, i32, i32, ...) @appendStringInfo(%struct.TYPE_11__* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %165, i32 %170)
  %172 = load i8*, i8** %10, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @NameStr(i32 %177)
  %179 = call i8* @sepgsql_compute_create(i8* %172, i8* %173, i32 %174, i8* %178)
  store i8* %179, i8** %13, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = load i32, i32* @SEPG_CLASS_DB_COLUMN, align 4
  %182 = load i32, i32* @SEPG_DB_COLUMN__CREATE, align 4
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @sepgsql_avc_check_perms_label(i8* %180, i32 %181, i32 %182, i32 %184, i32 1)
  %186 = load i8*, i8** @RelationRelationId, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  store i8* %186, i8** %187, align 8
  %188 = load i8*, i8** %2, align 8
  %189 = ptrtoint i8* %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i64 %189, i64* %190, align 8
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 %193, i64* %194, align 8
  %195 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %196 = load i8*, i8** %13, align 8
  %197 = call i32 @SetSecurityLabel(%struct.TYPE_12__* %8, i32 %195, i8* %196)
  %198 = load i8*, i8** %13, align 8
  %199 = call i32 @pfree(i8* %198)
  br label %149

200:                                              ; preds = %149
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @systable_endscan(i32 %201)
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* @AccessShareLock, align 4
  %205 = call i32 @table_close(i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %200, %130
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @pfree(i8* %207)
  br label %209

209:                                              ; preds = %206, %82, %79, %57
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @systable_endscan(i32 %210)
  %212 = load i32, i32* %3, align 4
  %213 = load i32, i32* @AccessShareLock, align 4
  %214 = call i32 @table_close(i32 %212, i32 %213)
  ret void
}

declare dso_local i32 @table_open(i8*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @getObjectIdentity(%struct.TYPE_12__*) #1

declare dso_local i32 @sepgsql_index_modify(i8*) #1

declare dso_local i8* @sepgsql_get_client_label(...) #1

declare dso_local i8* @sepgsql_get_label(i8*, i64, i32) #1

declare dso_local i8* @sepgsql_compute_create(i8*, i8*, i32, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i8* @get_namespace_name(i64) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_11__*, i8*, i32, i32, ...) #1

declare dso_local i32 @quote_identifier(i8*) #1

declare dso_local i32 @sepgsql_avc_check_perms_label(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SetSecurityLabel(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
