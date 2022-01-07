; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteDefine.c_EnableDisableRule.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rewriteDefine.c_EnableDisableRule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }

@RewriteRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RULERELNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"rule \22%s\22 for relation \22%s\22 does not exist\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnableDisableRule(i32 %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8 %2, i8* %6, align 1
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @RelationGetRelid(i32 %13)
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* @RewriteRelationId, align 4
  %16 = load i32, i32* @RowExclusiveLock, align 4
  %17 = call i32 @table_open(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @RULERELNAME, align 4
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @ObjectIdGetDatum(i64 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @PointerGetDatum(i8* %21)
  %23 = call %struct.TYPE_8__* @SearchSysCacheCopy2(i32 %18, i32 %20, i32 %22)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @get_rel_name(i64 %32)
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %33)
  %35 = call i32 @ereport(i32 %28, i32 %34)
  br label %36

36:                                               ; preds = %27, %3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = call i64 @GETSTRUCT(%struct.TYPE_8__* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %11, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (...) @GetUserId()
  %50 = call i32 @pg_class_ownercheck(i64 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %36
  %53 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @get_rel_relkind(i64 %54)
  %56 = call i32 @get_relkind_objtype(i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @get_rel_name(i64 %57)
  %59 = call i32 @aclcheck_error(i32 %53, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %52, %36
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call signext i8 @DatumGetChar(i32 %63)
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %6, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load i8, i8* %6, align 1
  %71 = call i32 @CharGetDatum(i8 signext %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = call i32 @CatalogTupleUpdate(i32 %74, i32* %76, %struct.TYPE_8__* %77)
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %69, %60
  %80 = load i32, i32* @RewriteRelationId, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @InvokeObjectPostAlterHook(i32 %80, i32 %83, i32 0)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = call i32 @heap_freetuple(%struct.TYPE_8__* %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @RowExclusiveLock, align 4
  %89 = call i32 @table_close(i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @CacheInvalidateRelcache(i32 %93)
  br label %95

95:                                               ; preds = %92, %79
  ret void
}

declare dso_local i64 @RelationGetRelid(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopy2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @get_rel_name(i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pg_class_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @get_relkind_objtype(i32) #1

declare dso_local i32 @get_rel_relkind(i64) #1

declare dso_local signext i8 @DatumGetChar(i32) #1

declare dso_local i32 @CharGetDatum(i8 signext) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @CacheInvalidateRelcache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
