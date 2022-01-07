; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_type_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_type_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"type with OID %u does not exist\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@Anum_pg_type_typacl = common dso_local global i32 0, align 4
@OBJECT_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_type_aclmask(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @superuser_arg(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %5, align 4
  br label %112

23:                                               ; preds = %4
  %24 = load i32, i32* @TYPEOID, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = call i32 @SearchSysCache1(i32 %24, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @HeapTupleIsValid(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @ereport(i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @GETSTRUCT(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %16, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @OidIsValid(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %38
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @ReleaseSysCache(i32 %56)
  %58 = load i32, i32* @TYPEOID, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @ObjectIdGetDatum(i32 %59)
  %61 = call i32 @SearchSysCache1(i32 %58, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @HeapTupleIsValid(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @elog(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %52
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @GETSTRUCT(i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %16, align 8
  br label %73

73:                                               ; preds = %69, %47, %38
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @TYPEOID, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @Anum_pg_type_typacl, align 4
  %80 = call i64 @SysCacheGetAttr(i32 %77, i32 %78, i32 %79, i32* %13)
  store i64 %80, i64* %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32, i32* @OBJECT_TYPE, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32* @acldefault(i32 %84, i32 %85)
  store i32* %86, i32** %14, align 8
  store i64 0, i64* %12, align 8
  br label %90

87:                                               ; preds = %73
  %88 = load i64, i64* %12, align 8
  %89 = call i32* @DatumGetAclP(i64 %88)
  store i32* %89, i32** %14, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @aclmask(i32* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load i32*, i32** %14, align 8
  %101 = ptrtoint i32* %100 to i64
  %102 = load i64, i64* %12, align 8
  %103 = call i64 @DatumGetPointer(i64 %102)
  %104 = icmp ne i64 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @pfree(i32* %106)
  br label %108

108:                                              ; preds = %105, %99, %90
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @ReleaseSysCache(i32 %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %21
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i64 @superuser_arg(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @acldefault(i32, i32) #1

declare dso_local i32* @DatumGetAclP(i64) #1

declare dso_local i32 @aclmask(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i64) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
