; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_transformOnConflictArbiter.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_clause.c_transformOnConflictArbiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64 }

@NIL = common dso_local global i8* null, align 8
@InvalidOid = common dso_local global i32 0, align 4
@ONCONFLICT_UPDATE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"ON CONFLICT DO UPDATE requires inference specification or constraint name\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"For example, ON CONFLICT (column_name).\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"ON CONFLICT is not supported with system catalog tables\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"ON CONFLICT is not supported on table \22%s\22 used as a catalog table\00", align 1
@EXPR_KIND_INDEX_PREDICATE = common dso_local global i32 0, align 4
@ACL_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transformOnConflictArbiter(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32** %2, i32** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %11, align 8
  %19 = load i8*, i8** @NIL, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32**, i32*** %8, align 8
  store i32* %20, i32** %21, align 8
  %22 = load i32**, i32*** %9, align 8
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @InvalidOid, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ONCONFLICT_UPDATE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %5
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %32 = icmp ne %struct.TYPE_16__* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @errhint(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = bitcast %struct.TYPE_15__* %40 to i32*
  %42 = call i32 @exprLocation(i32* %41)
  %43 = call i32 @parser_errposition(%struct.TYPE_14__* %39, i32 %42)
  %44 = call i32 @ereport(i32 %34, i32 %43)
  br label %45

45:                                               ; preds = %33, %30, %5
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @IsCatalogRelation(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = bitcast %struct.TYPE_15__* %57 to i32*
  %59 = call i32 @exprLocation(i32* %58)
  %60 = call i32 @parser_errposition(%struct.TYPE_14__* %56, i32 %59)
  %61 = call i32 @ereport(i32 %52, i32 %60)
  br label %62

62:                                               ; preds = %51, %45
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @RelationIsUsedAsCatalogTable(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @RelationGetRelationName(i32 %74)
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = bitcast %struct.TYPE_15__* %78 to i32*
  %80 = call i32 @exprLocation(i32* %79)
  %81 = call i32 @parser_errposition(%struct.TYPE_14__* %77, i32 %80)
  %82 = call i32 @ereport(i32 %69, i32 %81)
  br label %83

83:                                               ; preds = %68, %62
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %85 = icmp ne %struct.TYPE_16__* %84, null
  br i1 %85, label %86, label %159

86:                                               ; preds = %83
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %12, align 8
  %90 = load i8*, i8** @NIL, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = call i32 @addRTEtoQuery(%struct.TYPE_14__* %94, %struct.TYPE_13__* %97, i32 0, i32 0, i32 1)
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %86
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32* @resolve_unique_index_expr(%struct.TYPE_14__* %104, %struct.TYPE_16__* %105, i32 %108)
  %110 = load i32**, i32*** %8, align 8
  store i32* %109, i32** %110, align 8
  br label %111

111:                                              ; preds = %103, %86
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @EXPR_KIND_INDEX_PREDICATE, align 4
  %122 = call i32* @transformExpr(%struct.TYPE_14__* %117, i64 %120, i32 %121)
  %123 = load i32**, i32*** %9, align 8
  store i32* %122, i32** %123, align 8
  br label %124

124:                                              ; preds = %116, %111
  %125 = load i32*, i32** %12, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i32* %125, i32** %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %124
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @RelationGetRelid(i32 %135)
  store i32 %136, i32* %13, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  store %struct.TYPE_13__* %139, %struct.TYPE_13__** %14, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = call i32* @get_relation_constraint_attnos(i32 %140, i64 %143, i32 0, i32* %144)
  store i32* %145, i32** %15, align 8
  %146 = load i32, i32* @ACL_SELECT, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @bms_add_members(i32 %153, i32* %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %132, %124
  br label %159

159:                                              ; preds = %158, %83
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @exprLocation(i32*) #1

declare dso_local i64 @IsCatalogRelation(i32) #1

declare dso_local i64 @RelationIsUsedAsCatalogTable(i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @addRTEtoQuery(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32* @resolve_unique_index_expr(%struct.TYPE_14__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @transformExpr(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32* @get_relation_constraint_attnos(i32, i64, i32, i32*) #1

declare dso_local i32 @bms_add_members(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
