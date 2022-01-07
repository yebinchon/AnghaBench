; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_namespace_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_namespace_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MyDatabaseId = common dso_local global i32 0, align 4
@ACL_CREATE_TEMP = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@ACL_ALL_RIGHTS_SCHEMA = common dso_local global i32 0, align 4
@ACL_USAGE = common dso_local global i32 0, align 4
@NAMESPACEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_SCHEMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"schema with OID %u does not exist\00", align 1
@Anum_pg_namespace_nspacl = common dso_local global i32 0, align 4
@OBJECT_SCHEMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_namespace_aclmask(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @superuser_arg(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %5, align 4
  br label %96

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @isTempNamespace(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* @MyDatabaseId, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ACL_CREATE_TEMP, align 4
  %29 = call i64 @pg_database_aclcheck(i32 %26, i32 %27, i32 %28)
  %30 = load i64, i64* @ACLCHECK_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ACL_ALL_RIGHTS_SCHEMA, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %96

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ACL_USAGE, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %5, align 4
  br label %96

40:                                               ; preds = %21
  %41 = load i32, i32* @NAMESPACEOID, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ObjectIdGetDatum(i32 %42)
  %44 = call i32 @SearchSysCache1(i32 %41, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @HeapTupleIsValid(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_UNDEFINED_SCHEMA, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = call i32 @ereport(i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %48, %40
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @GETSTRUCT(i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @NAMESPACEOID, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @Anum_pg_namespace_nspacl, align 4
  %64 = call i64 @SysCacheGetAttr(i32 %61, i32 %62, i32 %63, i32* %13)
  store i64 %64, i64* %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load i32, i32* @OBJECT_SCHEMA, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32* @acldefault(i32 %68, i32 %69)
  store i32* %70, i32** %14, align 8
  store i64 0, i64* %12, align 8
  br label %74

71:                                               ; preds = %55
  %72 = load i64, i64* %12, align 8
  %73 = call i32* @DatumGetAclP(i64 %72)
  store i32* %73, i32** %14, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @aclmask(i32* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load i32*, i32** %14, align 8
  %85 = ptrtoint i32* %84 to i64
  %86 = load i64, i64* %12, align 8
  %87 = call i64 @DatumGetPointer(i64 %86)
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @pfree(i32* %90)
  br label %92

92:                                               ; preds = %89, %83, %74
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ReleaseSysCache(i32 %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %36, %32, %19
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @superuser_arg(i32) #1

declare dso_local i64 @isTempNamespace(i32) #1

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @acldefault(i32, i32) #1

declare dso_local i32* @DatumGetAclP(i64) #1

declare dso_local i32 @aclmask(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i64) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
