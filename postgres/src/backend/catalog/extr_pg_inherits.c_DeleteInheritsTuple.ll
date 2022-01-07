; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_inherits.c_DeleteInheritsTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_inherits.c_DeleteInheritsTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@InheritsRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsRelidSeqnoIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DeleteInheritsTuple(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @InheritsRelationId, align 4
  %12 = load i32, i32* @RowExclusiveLock, align 4
  %13 = call i32 @table_open(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_OIDEQ, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @ObjectIdGetDatum(i64 %17)
  %19 = call i32 @ScanKeyInit(i32* %7, i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @InheritsRelidSeqnoIndexId, align 4
  %22 = call i32 @systable_beginscan(i32 %20, i32 %21, i32 1, i32* null, i32 1, i32* %7)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_6__* @systable_getnext(i32 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %9, align 8
  %26 = call i64 @HeapTupleIsValid(%struct.TYPE_6__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = call i64 @GETSTRUCT(%struct.TYPE_6__* %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @OidIsValid(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %28
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @CatalogTupleDelete(i32 %42, i32* %44)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %37
  br label %23

47:                                               ; preds = %23
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @systable_endscan(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RowExclusiveLock, align 4
  %52 = call i32 @table_close(i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_6__*) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
