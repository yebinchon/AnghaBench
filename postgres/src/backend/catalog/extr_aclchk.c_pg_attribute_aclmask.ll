; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_attribute_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_attribute_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ATTNUM = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"attribute %d of relation with OID %u does not exist\00", align 1
@Anum_pg_attribute_attacl = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_attribute_aclmask(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @ATTNUM, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @Int16GetDatum(i32 %24)
  %26 = call i32 @SearchSysCache2(i32 %21, i32 %23, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @HeapTupleIsValid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = call i32 @ereport(i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %5
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @GETSTRUCT(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** %16, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %49 = call i32 @errcode(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = call i32 @ereport(i32 %47, i32 %52)
  br label %54

54:                                               ; preds = %46, %38
  %55 = load i32, i32* @ATTNUM, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @Anum_pg_attribute_attacl, align 4
  %58 = call i32 @SysCacheGetAttr(i32 %55, i32 %56, i32 %57, i32* %18)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @ReleaseSysCache(i32 %62)
  store i32 0, i32* %6, align 4
  br label %107

64:                                               ; preds = %54
  %65 = load i32, i32* @RELOID, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ObjectIdGetDatum(i32 %66)
  %68 = call i32 @SearchSysCache1(i32 %65, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @HeapTupleIsValid(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @ReleaseSysCache(i32 %73)
  store i32 0, i32* %6, align 4
  br label %107

75:                                               ; preds = %64
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @GETSTRUCT(i32 %76)
  %78 = inttoptr i64 %77 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %15, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @ReleaseSysCache(i32 %82)
  %84 = load i32, i32* %17, align 4
  %85 = call i32* @DatumGetAclP(i32 %84)
  store i32* %85, i32** %19, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @aclmask(i32* %86, i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32*, i32** %19, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %75
  %95 = load i32*, i32** %19, align 8
  %96 = ptrtoint i32* %95 to i64
  %97 = load i32, i32* %17, align 4
  %98 = call i64 @DatumGetPointer(i32 %97)
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32*, i32** %19, align 8
  %102 = call i32 @pfree(i32* %101)
  br label %103

103:                                              ; preds = %100, %94, %75
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @ReleaseSysCache(i32 %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %72, %61
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32* @DatumGetAclP(i32) #1

declare dso_local i32 @aclmask(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
