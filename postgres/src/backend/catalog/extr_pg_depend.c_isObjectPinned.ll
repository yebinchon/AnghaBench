; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_isObjectPinned.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_depend.c_isObjectPinned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@Anum_pg_depend_refclassid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_depend_refobjid = common dso_local global i32 0, align 4
@DependReferenceIndexId = common dso_local global i32 0, align 4
@DEPENDENCY_PIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @isObjectPinned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isObjectPinned(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %11 = load i32, i32* @Anum_pg_depend_refclassid, align 4
  %12 = load i32, i32* @BTEqualStrategyNumber, align 4
  %13 = load i32, i32* @F_OIDEQ, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @ScanKeyInit(i32* %10, i32 %11, i32 %12, i32 %13, i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %20 = load i32, i32* @Anum_pg_depend_refobjid, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_OIDEQ, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DependReferenceIndexId, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %31 = call i32 @systable_beginscan(i32 %28, i32 %29, i32 1, i32* null, i32 2, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @systable_getnext(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @HeapTupleIsValid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @GETSTRUCT(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %9, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DEPENDENCY_PIN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %37
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @systable_endscan(i32 %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
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
