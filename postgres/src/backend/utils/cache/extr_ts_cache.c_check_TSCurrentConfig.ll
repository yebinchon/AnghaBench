; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_check_TSCurrentConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_ts_cache.c_check_TSCurrentConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MyDatabaseId = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@PGC_S_TEST = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"text search configuration \22%s\22 does not exist\00", align 1
@TSCONFIGOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"cache lookup failed for text search configuration %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_TSCurrentConfig(i8** %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i64 (...) @IsTransactionState()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %3
  %15 = load i64, i64* @MyDatabaseId, align 8
  %16 = load i64, i64* @InvalidOid, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @stringToQualifiedNameList(i8* %20)
  %22 = call i32 @get_ts_config_oid(i32 %21, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @OidIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @PGC_S_TEST, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* @NOTICE, align 4
  %32 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = call i32 @ereport(i32 %31, i32 %36)
  store i32 1, i32* %4, align 4
  br label %80

38:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %80

39:                                               ; preds = %18
  %40 = load i32, i32* @TSCONFIGOID, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ObjectIdGetDatum(i32 %41)
  %43 = call i32 @SearchSysCache1(i32 %40, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @HeapTupleIsValid(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @elog(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @GETSTRUCT(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %10, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @get_namespace_name(i32 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @NameStr(i32 %61)
  %63 = call i8* @quote_qualified_identifier(i32 %58, i32 %62)
  store i8* %63, i8** %11, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ReleaseSysCache(i32 %64)
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %11, align 8
  %70 = call i8* @strdup(i8* %69)
  %71 = load i8**, i8*** %5, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @pfree(i8* %72)
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %80

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78, %14, %3
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %77, %38, %30
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @IsTransactionState(...) #1

declare dso_local i32 @get_ts_config_oid(i32, i32) #1

declare dso_local i32 @stringToQualifiedNameList(i8*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i8* @quote_qualified_identifier(i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
