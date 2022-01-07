; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteDefine.c_RenameRewriteRule.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteDefine.c_RenameRewriteRule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@RangeVarCallbackForRenameRule = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@RewriteRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RULERELNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"rule \22%s\22 for relation \22%s\22 does not exist\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"rule \22%s\22 for relation \22%s\22 already exists\00", align 1
@CMD_SELECT = common dso_local global i64 0, align 8
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"renaming an ON SELECT rule is not allowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenameRewriteRule(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @AccessExclusiveLock, align 4
  %16 = load i32, i32* @RangeVarCallbackForRenameRule, align 4
  %17 = call i32 @RangeVarGetRelidExtended(i32* %14, i32 %15, i32 0, i32 %16, i32* null)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NoLock, align 4
  %20 = call i32 @relation_open(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @RewriteRelationId, align 4
  %22 = load i32, i32* @RowExclusiveLock, align 4
  %23 = call i32 @table_open(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @RULERELNAME, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @PointerGetDatum(i8* %27)
  %29 = call %struct.TYPE_8__* @SearchSysCacheCopy2(i32 %24, i32 %26, i32 %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %10, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @RelationGetRelationName(i32 %38)
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %39)
  %41 = call i32 @ereport(i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %33, %3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = call i64 @GETSTRUCT(%struct.TYPE_8__* %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %11, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @IsDefinedRewriteRule(i32 %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %42
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @RelationGetRelationName(i32 %58)
  %60 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %59)
  %61 = call i32 @ereport(i32 %54, i32 %60)
  br label %62

62:                                               ; preds = %53, %42
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CMD_SELECT, align 8
  %67 = add nsw i64 %66, 48
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @ereport(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @namestrcpy(i32* %77, i8* %78)
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = call i32 @CatalogTupleUpdate(i32 %80, i32* %82, %struct.TYPE_8__* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = call i32 @heap_freetuple(%struct.TYPE_8__* %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @RowExclusiveLock, align 4
  %89 = call i32 @table_close(i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @CacheInvalidateRelcache(i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @RewriteRelationId, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @ObjectAddressSet(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @NoLock, align 4
  %98 = call i32 @relation_close(i32 %96, i32 %97)
  %99 = load i32, i32* %13, align 4
  ret i32 %99
}

declare dso_local i32 @RangeVarGetRelidExtended(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @relation_open(i32, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopy2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i64 @IsDefinedRewriteRule(i32, i8*) #1

declare dso_local i32 @namestrcpy(i32*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

declare dso_local i32 @relation_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
