; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscriptionRelations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscriptionRelations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@NIL = common dso_local global i32* null, align 8
@SubscriptionRelRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_subscription_rel_srsubid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetSubscriptionRelations(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @SubscriptionRelRelationId, align 4
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @table_open(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %17
  %19 = load i32, i32* @Anum_pg_subscription_rel_srsubid, align 4
  %20 = load i32, i32* @BTEqualStrategyNumber, align 4
  %21 = load i32, i32* @F_OIDEQ, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = call i32 @ScanKeyInit(i32* %18, i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @InvalidOid, align 4
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = call i32 @systable_beginscan(i32 %25, i32 %26, i32 0, i32* null, i32 %27, i32* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %35, %1
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @systable_getnext(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = call i64 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @GETSTRUCT(i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %9, align 8
  %39 = call i64 @palloc(i32 12)
  %40 = inttoptr i64 %39 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = call i32* @lappend(i32* %56, %struct.TYPE_4__* %57)
  store i32* %58, i32** %3, align 8
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @systable_endscan(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @AccessShareLock, align 4
  %64 = call i32 @table_close(i32 %62, i32 %63)
  %65 = load i32*, i32** %3, align 8
  ret i32* %65
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @lappend(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
