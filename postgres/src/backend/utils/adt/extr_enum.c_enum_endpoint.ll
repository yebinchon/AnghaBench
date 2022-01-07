; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_enum.c_enum_endpoint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_enum.c_enum_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Anum_pg_enum_enumtypid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@EnumRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@EnumTypIdSortOrderIndexId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @enum_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_endpoint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @Anum_pg_enum_enumtypid, align 4
  %12 = load i32, i32* @BTEqualStrategyNumber, align 4
  %13 = load i32, i32* @F_OIDEQ, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = call i32 @ScanKeyInit(i32* %9, i32 %11, i32 %12, i32 %13, i32 %15)
  %17 = load i32, i32* @EnumRelationId, align 4
  %18 = load i32, i32* @AccessShareLock, align 4
  %19 = call i32 @table_open(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @EnumTypIdSortOrderIndexId, align 4
  %21 = load i32, i32* @AccessShareLock, align 4
  %22 = call i32 @index_open(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @systable_beginscan_ordered(i32 %23, i32 %24, i32* null, i32 1, i32* %9)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @systable_getnext_ordered(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @HeapTupleIsValid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @check_safe_enum_use(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @GETSTRUCT(i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @InvalidOid, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @systable_endscan_ordered(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AccessShareLock, align 4
  %47 = call i32 @index_close(i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @AccessShareLock, align 4
  %50 = call i32 @table_close(i32 %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @index_open(i32, i32) #1

declare dso_local i32 @systable_beginscan_ordered(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext_ordered(i32, i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @check_safe_enum_use(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan_ordered(i32) #1

declare dso_local i32 @index_close(i32, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
