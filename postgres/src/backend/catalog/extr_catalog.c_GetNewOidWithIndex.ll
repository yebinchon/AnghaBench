; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_catalog.c_GetNewOidWithIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_catalog.c_GetNewOidWithIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IsBinaryUpgrade = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i64 0, align 8
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@SnapshotAny = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNewOidWithIndex(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @IsSystemRelation(i32 %12)
  %14 = call i32 @Assert(i32 %13)
  %15 = call i64 (...) @IsBootstrapProcessingMode()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @GetNewObjectId()
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load i32, i32* @IsBinaryUpgrade, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @RelationGetRelid(i32 %23)
  %25 = load i64, i64* @TypeRelationId, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ true, %19 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  br label %31

31:                                               ; preds = %49, %27
  %32 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %33 = call i32 (...) @GetNewObjectId()
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BTEqualStrategyNumber, align 4
  %36 = load i32, i32* @F_OIDEQ, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ObjectIdGetDatum(i32 %37)
  %39 = call i32 @ScanKeyInit(i32* %10, i32 %34, i32 %35, i32 %36, i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @SnapshotAny, align 4
  %43 = call i32 @systable_beginscan(i32 %40, i32 %41, i32 1, i32 %42, i32 1, i32* %10)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @systable_getnext(i32 %44)
  %46 = call i32 @HeapTupleIsValid(i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @systable_endscan(i32 %47)
  br label %49

49:                                               ; preds = %31
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %31, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsSystemRelation(i32) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @GetNewObjectId(...) #1

declare dso_local i64 @RelationGetRelid(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
