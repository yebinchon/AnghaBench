; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscriptionNotReadyRelations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_subscription.c_GetSubscriptionNotReadyRelations.c"
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
@Anum_pg_subscription_rel_srsubstate = common dso_local global i32 0, align 4
@F_CHARNE = common dso_local global i32 0, align 4
@SUBREL_STATE_READY = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetSubscriptionNotReadyRelations(i32 %0) #0 {
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
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %27
  %29 = load i32, i32* @Anum_pg_subscription_rel_srsubstate, align 4
  %30 = load i32, i32* @BTEqualStrategyNumber, align 4
  %31 = load i32, i32* @F_CHARNE, align 4
  %32 = load i32, i32* @SUBREL_STATE_READY, align 4
  %33 = call i32 @CharGetDatum(i32 %32)
  %34 = call i32 @ScanKeyInit(i32* %28, i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @InvalidOid, align 4
  %37 = load i32, i32* %6, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %39 = call i32 @systable_beginscan(i32 %35, i32 %36, i32 0, i32* null, i32 %37, i32* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %45, %1
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @systable_getnext(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = call i64 @HeapTupleIsValid(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @GETSTRUCT(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %9, align 8
  %49 = call i64 @palloc(i32 12)
  %50 = inttoptr i64 %49 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %10, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = call i32* @lappend(i32* %66, %struct.TYPE_4__* %67)
  store i32* %68, i32** %3, align 8
  br label %40

69:                                               ; preds = %40
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @systable_endscan(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @AccessShareLock, align 4
  %74 = call i32 @table_close(i32 %72, i32 %73)
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CharGetDatum(i32) #1

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
