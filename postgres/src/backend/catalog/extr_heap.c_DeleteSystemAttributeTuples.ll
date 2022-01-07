; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_DeleteSystemAttributeTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_DeleteSystemAttributeTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_attribute_attrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_attribute_attnum = common dso_local global i32 0, align 4
@BTLessEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT2LE = common dso_local global i32 0, align 4
@AttributeRelidNumIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeleteSystemAttributeTuples(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @AttributeRelationId, align 4
  %8 = load i32, i32* @RowExclusiveLock, align 4
  %9 = call i32 @table_open(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @Anum_pg_attribute_attrelid, align 4
  %12 = load i32, i32* @BTEqualStrategyNumber, align 4
  %13 = load i32, i32* @F_OIDEQ, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @ScanKeyInit(i32* %10, i32 %11, i32 %12, i32 %13, i32 %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %18 = load i32, i32* @Anum_pg_attribute_attnum, align 4
  %19 = load i32, i32* @BTLessEqualStrategyNumber, align 4
  %20 = load i32, i32* @F_INT2LE, align 4
  %21 = call i32 @Int16GetDatum(i32 0)
  %22 = call i32 @ScanKeyInit(i32* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @AttributeRelidNumIndexId, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %26 = call i32 @systable_beginscan(i32 %23, i32 %24, i32 1, i32* null, i32 2, i32* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %31, %1
  %28 = load i32, i32* %4, align 4
  %29 = call %struct.TYPE_3__* @systable_getnext(i32 %28)
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %6, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @CatalogTupleDelete(i32 %32, i32* %34)
  br label %27

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @systable_endscan(i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @RowExclusiveLock, align 4
  %41 = call i32 @table_close(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @systable_getnext(i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
