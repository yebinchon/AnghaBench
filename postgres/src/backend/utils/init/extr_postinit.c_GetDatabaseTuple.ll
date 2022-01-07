; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_GetDatabaseTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_GetDatabaseTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Anum_pg_database_datname = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@DatabaseRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@DatabaseNameIndexId = common dso_local global i32 0, align 4
@criticalSharedRelcachesBuilt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @GetDatabaseTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDatabaseTuple(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  store i8* %0, i8** %2, align 8
  %7 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* @Anum_pg_database_datname, align 4
  %9 = load i32, i32* @BTEqualStrategyNumber, align 4
  %10 = load i32, i32* @F_NAMEEQ, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @CStringGetDatum(i8* %11)
  %13 = call i32 @ScanKeyInit(i32* %7, i32 %8, i32 %9, i32 %10, i32 %12)
  %14 = load i32, i32* @DatabaseRelationId, align 4
  %15 = load i32, i32* @AccessShareLock, align 4
  %16 = call i32 @table_open(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DatabaseNameIndexId, align 4
  %19 = load i32, i32* @criticalSharedRelcachesBuilt, align 4
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %21 = call i32 @systable_beginscan(i32 %17, i32 %18, i32 %19, i32* null, i32 1, i32* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @systable_getnext(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @HeapTupleIsValid(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @heap_copytuple(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @systable_endscan(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @AccessShareLock, align 4
  %35 = call i32 @table_close(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @heap_copytuple(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
