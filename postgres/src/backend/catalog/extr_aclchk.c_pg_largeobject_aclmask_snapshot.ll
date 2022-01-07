; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_largeobject_aclmask_snapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_largeobject_aclmask_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LargeObjectMetadataRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_largeobject_metadata_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@LargeObjectMetadataOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"large object %u does not exist\00", align 1
@Anum_pg_largeobject_metadata_lomacl = common dso_local global i32 0, align 4
@OBJECT_LARGEOBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_largeobject_aclmask_snapshot(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @superuser_arg(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %6, align 4
  br label %99

26:                                               ; preds = %5
  %27 = load i32, i32* @LargeObjectMetadataRelationId, align 4
  %28 = load i32, i32* @AccessShareLock, align 4
  %29 = call i32 @table_open(i32 %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %31 = load i32, i32* @Anum_pg_largeobject_metadata_oid, align 4
  %32 = load i32, i32* @BTEqualStrategyNumber, align 4
  %33 = load i32, i32* @F_OIDEQ, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ObjectIdGetDatum(i32 %34)
  %36 = call i32 @ScanKeyInit(i32* %30, i32 %31, i32 %32, i32 %33, i32 %35)
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @LargeObjectMetadataOidIndexId, align 4
  %39 = load i32, i32* %11, align 4
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 0, i64 0
  %41 = call i32 @systable_beginscan(i32 %37, i32 %38, i32 1, i32 %39, i32 1, i32* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @systable_getnext(i32 %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @HeapTupleIsValid(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %26
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = call i32 @ereport(i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %47, %26
  %55 = load i32, i32* %16, align 4
  %56 = call i64 @GETSTRUCT(i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @Anum_pg_largeobject_metadata_lomacl, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @RelationGetDescr(i32 %62)
  %64 = call i64 @heap_getattr(i32 %60, i32 %61, i32 %63, i32* %18)
  store i64 %64, i64* %17, align 8
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i32, i32* @OBJECT_LARGEOBJECT, align 4
  %69 = load i32, i32* %20, align 4
  %70 = call i32* @acldefault(i32 %68, i32 %69)
  store i32* %70, i32** %19, align 8
  store i64 0, i64* %17, align 8
  br label %74

71:                                               ; preds = %54
  %72 = load i64, i64* %17, align 8
  %73 = call i32* @DatumGetAclP(i64 %72)
  store i32* %73, i32** %19, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32*, i32** %19, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @aclmask(i32* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %19, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load i32*, i32** %19, align 8
  %85 = ptrtoint i32* %84 to i64
  %86 = load i64, i64* %17, align 8
  %87 = call i64 @DatumGetPointer(i64 %86)
  %88 = icmp ne i64 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32*, i32** %19, align 8
  %91 = call i32 @pfree(i32* %90)
  br label %92

92:                                               ; preds = %89, %83, %74
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @systable_endscan(i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @AccessShareLock, align 4
  %97 = call i32 @table_close(i32 %95, i32 %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %92, %24
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @superuser_arg(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @heap_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @acldefault(i32, i32) #1

declare dso_local i32* @DatumGetAclP(i64) #1

declare dso_local i32 @aclmask(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i64) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
