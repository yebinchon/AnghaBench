; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_CheckFunctionValidatorAccess.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/fmgr/extr_fmgr.c_CheckFunctionValidatorAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"function with OID %u does not exist\00", align 1
@LANGOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for language %u\00", align 1
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"language validation function %u called for language %u instead of %u\00", align 1
@ACL_USAGE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_LANGUAGE = common dso_local global i32 0, align 4
@ACL_EXECUTE = common dso_local global i32 0, align 4
@OBJECT_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckFunctionValidatorAccess(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @PROCOID, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ObjectIdGetDatum(i64 %11)
  %13 = call i32 @SearchSysCache1(i32 %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @HeapTupleIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = call i32 @ereport(i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @GETSTRUCT(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %7, align 8
  %28 = load i32, i32* @LANGOID, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ObjectIdGetDatum(i64 %31)
  %33 = call i32 @SearchSysCache1(i32 %28, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @HeapTupleIsValid(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @ERROR, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %37, %24
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @GETSTRUCT(i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %8, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %43
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %56, i64 %59, i64 %62)
  %64 = call i32 @ereport(i32 %53, i32 %63)
  br label %65

65:                                               ; preds = %52, %43
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (...) @GetUserId()
  %70 = load i32, i32* @ACL_USAGE, align 4
  %71 = call i64 @pg_language_aclcheck(i64 %68, i32 %69, i32 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @ACLCHECK_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @OBJECT_LANGUAGE, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @NameStr(i32 %80)
  %82 = call i32 @aclcheck_error(i64 %76, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %75, %65
  %84 = load i64, i64* %4, align 8
  %85 = call i32 (...) @GetUserId()
  %86 = load i32, i32* @ACL_EXECUTE, align 4
  %87 = call i64 @pg_proc_aclcheck(i64 %84, i32 %85, i32 %86)
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @ACLCHECK_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* @OBJECT_FUNCTION, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @NameStr(i32 %96)
  %98 = call i32 @aclcheck_error(i64 %92, i32 %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %83
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ReleaseSysCache(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @ReleaseSysCache(i32 %102)
  ret i32 1
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, ...) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @pg_language_aclcheck(i64, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i64 @pg_proc_aclcheck(i64, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
