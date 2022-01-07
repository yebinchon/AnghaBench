; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_get_partition_parent_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_partition.c_get_partition_parent_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhseqno = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@InheritsRelidSeqnoIndexId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_partition_parent_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_partition_parent_worker(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @InvalidOid, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %12 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_OIDEQ, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ObjectIdGetDatum(i32 %15)
  %17 = call i32 @ScanKeyInit(i32* %11, i32 %12, i32 %13, i32 %14, i32 %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %19 = load i32, i32* @Anum_pg_inherits_inhseqno, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_INT4EQ, align 4
  %22 = call i32 @Int32GetDatum(i32 1)
  %23 = call i32 @ScanKeyInit(i32* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @InheritsRelidSeqnoIndexId, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %27 = call i32 @systable_beginscan(i32 %24, i32 %25, i32 1, i32* null, i32 2, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @systable_getnext(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @HeapTupleIsValid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @GETSTRUCT(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %9, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %33, %2
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @systable_endscan(i32 %42)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
