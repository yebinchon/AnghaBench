; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_collationcmds.c_AlterCollation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_collationcmds.c_AlterCollation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@CollationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_COLLATION = common dso_local global i32 0, align 4
@COLLOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cache lookup failed for collation %u\00", align 1
@Anum_pg_collation_collversion = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid collation version change\00", align 1
@Natts_pg_collation = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"changing version from %s to %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"version has not changed\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterCollation(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %16 = load i32, i32* @CollationRelationId, align 4
  %17 = load i32, i32* @RowExclusiveLock, align 4
  %18 = call i32 @table_open(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_collation_oid(i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (...) @GetUserId()
  %25 = call i32 @pg_collation_ownercheck(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %29 = load i32, i32* @OBJECT_COLLATION, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @NameListToString(i32 %32)
  %34 = call i32 @aclcheck_error(i32 %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %27, %1
  %36 = load i32, i32* @COLLOID, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ObjectIdGetDatum(i32 %37)
  %39 = call %struct.TYPE_13__* @SearchSysCacheCopy1(i32 %36, i32 %38)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %5, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = call i32 @HeapTupleIsValid(%struct.TYPE_13__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @elog(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %35
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i64 @GETSTRUCT(%struct.TYPE_13__* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %6, align 8
  %51 = load i32, i32* @COLLOID, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = load i32, i32* @Anum_pg_collation_collversion, align 4
  %54 = call i32 @SysCacheGetAttr(i32 %51, %struct.TYPE_13__* %52, i32 %53, i32* %8)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = call i8* @TextDatumGetCString(i32 %59)
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i8* [ null, %57 ], [ %60, %58 ]
  store i8* %62, i8** %9, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @NameStr(i32 %68)
  %70 = call i8* @get_collation_actual_version(i32 %65, i32 %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %73, %61
  %77 = load i8*, i8** %9, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79, %73
  %83 = load i32, i32* @ERROR, align 4
  %84 = call i32 (i32, i8*, ...) @elog(i32 %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %141

85:                                               ; preds = %79, %76
  %86 = load i8*, i8** %9, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %136

88:                                               ; preds = %85
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %136

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @strcmp(i8* %92, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %91
  %97 = load i32, i32* @Natts_pg_collation, align 4
  %98 = zext i32 %97 to i64
  %99 = call i8* @llvm.stacksave()
  store i8* %99, i8** %12, align 8
  %100 = alloca i32, i64 %98, align 16
  store i64 %98, i64* %13, align 8
  %101 = load i32, i32* @Natts_pg_collation, align 4
  %102 = zext i32 %101 to i64
  %103 = alloca i32, i64 %102, align 16
  store i64 %102, i64* %14, align 8
  %104 = load i32, i32* @Natts_pg_collation, align 4
  %105 = zext i32 %104 to i64
  %106 = alloca i32, i64 %105, align 16
  store i64 %105, i64* %15, align 8
  %107 = load i32, i32* @NOTICE, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %108, i8* %109)
  %111 = call i32 @ereport(i32 %107, i32 %110)
  %112 = mul nuw i64 4, %105
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memset(i32* %106, i32 0, i32 %113)
  %115 = mul nuw i64 4, %98
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memset(i32* %100, i32 0, i32 %116)
  %118 = mul nuw i64 4, %102
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memset(i32* %103, i32 0, i32 %119)
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @CStringGetTextDatum(i8* %121)
  %123 = load i32, i32* @Anum_pg_collation_collversion, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %106, i64 %125
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* @Anum_pg_collation_collversion, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %103, i64 %129
  store i32 1, i32* %130, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @RelationGetDescr(i32 %132)
  %134 = call %struct.TYPE_13__* @heap_modify_tuple(%struct.TYPE_13__* %131, i32 %133, i32* %106, i32* %100, i32* %103)
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** %5, align 8
  %135 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %135)
  br label %140

136:                                              ; preds = %91, %88, %85
  %137 = load i32, i32* @NOTICE, align 4
  %138 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %139 = call i32 @ereport(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %96
  br label %141

141:                                              ; preds = %140, %82
  %142 = load i32, i32* %3, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = call i32 @CatalogTupleUpdate(i32 %142, i32* %144, %struct.TYPE_13__* %145)
  %147 = load i32, i32* @CollationRelationId, align 4
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @InvokeObjectPostAlterHook(i32 %147, i32 %148, i32 0)
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @CollationRelationId, align 4
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @ObjectAddressSet(i32 %150, i32 %151, i32 %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %155 = call i32 @heap_freetuple(%struct.TYPE_13__* %154)
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @NoLock, align 4
  %158 = call i32 @table_close(i32 %156, i32 %157)
  %159 = load i32, i32* %11, align 4
  ret i32 %159
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @get_collation_oid(i32, i32) #1

declare dso_local i32 @pg_collation_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @NameListToString(i32) #1

declare dso_local %struct.TYPE_13__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_13__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_13__*) #1

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i8* @get_collation_actual_version(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local %struct.TYPE_13__* @heap_modify_tuple(%struct.TYPE_13__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_13__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
