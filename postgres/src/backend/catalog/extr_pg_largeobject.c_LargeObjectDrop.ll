; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_largeobject.c_LargeObjectDrop.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_largeobject.c_LargeObjectDrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@LargeObjectMetadataRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@LargeObjectRelationId = common dso_local global i32 0, align 4
@Anum_pg_largeobject_metadata_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@LargeObjectMetadataOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"large object %u does not exist\00", align 1
@Anum_pg_largeobject_loid = common dso_local global i32 0, align 4
@LargeObjectLOidPNIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LargeObjectDrop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @LargeObjectMetadataRelationId, align 4
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32 @table_open(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @LargeObjectRelationId, align 4
  %12 = load i32, i32* @RowExclusiveLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* @Anum_pg_largeobject_metadata_oid, align 4
  %16 = load i32, i32* @BTEqualStrategyNumber, align 4
  %17 = load i32, i32* @F_OIDEQ, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = call i32 @ScanKeyInit(i32* %14, i32 %15, i32 %16, i32 %17, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @LargeObjectMetadataOidIndexId, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %24 = call i32 @systable_beginscan(i32 %21, i32 %22, i32 1, i32* null, i32 1, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.TYPE_4__* @systable_getnext(i32 %25)
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = call i64 @HeapTupleIsValid(%struct.TYPE_4__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %1
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @CatalogTupleDelete(i32 %38, i32* %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @systable_endscan(i32 %42)
  %44 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %45 = load i32, i32* @Anum_pg_largeobject_loid, align 4
  %46 = load i32, i32* @BTEqualStrategyNumber, align 4
  %47 = load i32, i32* @F_OIDEQ, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @ObjectIdGetDatum(i32 %48)
  %50 = call i32 @ScanKeyInit(i32* %44, i32 %45, i32 %46, i32 %47, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @LargeObjectLOidPNIndexId, align 4
  %53 = getelementptr inbounds [1 x i32], [1 x i32]* %5, i64 0, i64 0
  %54 = call i32 @systable_beginscan(i32 %51, i32 %52, i32 1, i32* null, i32 1, i32* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %60, %37
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.TYPE_4__* @systable_getnext(i32 %56)
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %7, align 8
  %58 = call i64 @HeapTupleIsValid(%struct.TYPE_4__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @CatalogTupleDelete(i32 %61, i32* %63)
  br label %55

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @systable_endscan(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RowExclusiveLock, align 4
  %70 = call i32 @table_close(i32 %68, i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @RowExclusiveLock, align 4
  %73 = call i32 @table_close(i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
