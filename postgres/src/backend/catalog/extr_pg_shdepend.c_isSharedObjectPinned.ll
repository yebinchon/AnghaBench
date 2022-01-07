; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_isSharedObjectPinned.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_isSharedObjectPinned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Anum_pg_shdepend_refclassid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_shdepend_refobjid = common dso_local global i32 0, align 4
@SharedDependReferenceIndexId = common dso_local global i32 0, align 4
@SHARED_DEPENDENCY_PIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @isSharedObjectPinned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isSharedObjectPinned(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %13 = load i32, i32* @Anum_pg_shdepend_refclassid, align 4
  %14 = load i32, i32* @BTEqualStrategyNumber, align 4
  %15 = load i32, i32* @F_OIDEQ, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %12, i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %20 = load i32, i32* @Anum_pg_shdepend_refobjid, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_OIDEQ, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SharedDependReferenceIndexId, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %29 = call i32 @systable_beginscan(i32 %26, i32 %27, i32 1, i32* null, i32 2, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @systable_getnext(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @HeapTupleIsValid(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @GETSTRUCT(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %11, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SHARED_DEPENDENCY_PIN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %35
  br label %47

47:                                               ; preds = %46, %3
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @systable_endscan(i32 %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

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
