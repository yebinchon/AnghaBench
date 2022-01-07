; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_attrdef.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_attrdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i8* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"column name must be qualified\00", align 1
@InvalidOid = common dso_local global i8* null, align 8
@InvalidAttrNumber = common dso_local global i64 0, align 8
@AttrDefaultRelationId = common dso_local global i8* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_attrdef_adrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_attrdef_adnum = common dso_local global i32 0, align 4
@F_INT2EQ = common dso_local global i32 0, align 4
@AttrDefaultIndexId = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"default value for column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32*, i32*, i32, i32)* @get_object_address_attrdef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_object_address_attrdef(%struct.TYPE_7__* noalias sret %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__*, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 %5, i32* %11, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @list_length(i32* %24)
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %6
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @llast(i32* %34)
  %36 = call i8* @strVal(i32 %35)
  store i8* %36, i8** %15, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @list_copy(i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @list_length(i32* %39)
  %41 = sub nsw i32 %40, 1
  %42 = call i32* @list_truncate(i32 %38, i32 %41)
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @makeRangeVarFromNameList(i32* %43)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @relation_openrv(i32 %44, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i8* @RelationGetRelid(i32 %47)
  store i8* %48, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call %struct.TYPE_6__* @RelationGetDescr(i32 %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %17, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = call i64 @get_attnum(i8* %51, i8* %52)
  store i64 %53, i64* %16, align 8
  %54 = load i8*, i8** @InvalidOid, align 8
  store i8* %54, i8** %18, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* @InvalidAttrNumber, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %33
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %103

63:                                               ; preds = %58
  %64 = load i8*, i8** @AttrDefaultRelationId, align 8
  %65 = load i32, i32* @AccessShareLock, align 4
  %66 = call i32 @relation_open(i8* %64, i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %68 = load i32, i32* @Anum_pg_attrdef_adrelid, align 4
  %69 = load i32, i32* @BTEqualStrategyNumber, align 4
  %70 = load i32, i32* @F_OIDEQ, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @ObjectIdGetDatum(i8* %71)
  %73 = call i32 @ScanKeyInit(i32* %67, i32 %68, i32 %69, i32 %70, i32 %72)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %75 = load i32, i32* @Anum_pg_attrdef_adnum, align 4
  %76 = load i32, i32* @BTEqualStrategyNumber, align 4
  %77 = load i32, i32* @F_INT2EQ, align 4
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @Int16GetDatum(i64 %78)
  %80 = call i32 @ScanKeyInit(i32* %74, i32 %75, i32 %76, i32 %77, i32 %79)
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @AttrDefaultIndexId, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %84 = call i32 @systable_beginscan(i32 %81, i32 %82, i32 1, i32* null, i32 2, i32* %83)
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %21, align 4
  %86 = call i32 @systable_getnext(i32 %85)
  store i32 %86, i32* %22, align 4
  %87 = call i64 @HeapTupleIsValid(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %63
  %90 = load i32, i32* %22, align 4
  %91 = call i32 @GETSTRUCT(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %23, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %18, align 8
  br label %97

97:                                               ; preds = %89, %63
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @systable_endscan(i32 %98)
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @AccessShareLock, align 4
  %102 = call i32 @relation_close(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %58, %33
  %104 = load i8*, i8** %18, align 8
  %105 = call i32 @OidIsValid(i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = load i8*, i8** %15, align 8
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @NameListToString(i32* %115)
  %117 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %114, i32 %116)
  %118 = call i32 @ereport(i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load i8*, i8** @AttrDefaultRelationId, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i8* %120, i8** %121, align 8
  %122 = load i8*, i8** @InvalidOid, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i8* %122, i8** %123, align 8
  %124 = load i64, i64* @InvalidAttrNumber, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @relation_close(i32 %126, i32 %127)
  br label %137

129:                                              ; preds = %103
  %130 = load i8*, i8** @AttrDefaultRelationId, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i8* %130, i8** %131, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32*, i32** %9, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %129, %119
  ret void
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @llast(i32*) #1

declare dso_local i32* @list_truncate(i32, i32) #1

declare dso_local i32 @list_copy(i32*) #1

declare dso_local i32 @relation_openrv(i32, i32) #1

declare dso_local i32 @makeRangeVarFromNameList(i32*) #1

declare dso_local i8* @RelationGetRelid(i32) #1

declare dso_local %struct.TYPE_6__* @RelationGetDescr(i32) #1

declare dso_local i64 @get_attnum(i8*, i8*) #1

declare dso_local i32 @relation_open(i8*, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @Int16GetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

declare dso_local i32 @OidIsValid(i8*) #1

declare dso_local i32 @NameListToString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
