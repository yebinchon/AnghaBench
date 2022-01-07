; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_RemoveSubscriptionRel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_RemoveSubscriptionRel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SubscriptionRelRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_subscription_rel_srsubid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_subscription_rel_srrelid = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveSubscriptionRel(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @SubscriptionRelRelationId, align 4
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32 @table_open(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @OidIsValid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %19
  %21 = load i32, i32* @Anum_pg_subscription_rel_srsubid, align 4
  %22 = load i32, i32* @BTEqualStrategyNumber, align 4
  %23 = load i32, i32* @F_OIDEQ, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ObjectIdGetDatum(i32 %24)
  %26 = call i32 @ScanKeyInit(i32* %20, i32 %21, i32 %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %16, %2
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @OidIsValid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %34
  %36 = load i32, i32* @Anum_pg_subscription_rel_srrelid, align 4
  %37 = load i32, i32* @BTEqualStrategyNumber, align 4
  %38 = load i32, i32* @F_OIDEQ, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  %41 = call i32 @ScanKeyInit(i32* %35, i32 %36, i32 %37, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %31, %27
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %46 = call i32 @table_beginscan_catalog(i32 %43, i32 %44, i32* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %53, %42
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ForwardScanDirection, align 4
  %50 = call %struct.TYPE_4__* @heap_getnext(i32 %48, i32 %49)
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %8, align 8
  %51 = call i64 @HeapTupleIsValid(%struct.TYPE_4__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @CatalogTupleDelete(i32 %54, i32* %56)
  br label %47

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @table_endscan(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @RowExclusiveLock, align 4
  %63 = call i32 @table_close(i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @table_beginscan_catalog(i32, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @heap_getnext(i32, i32) #1

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
