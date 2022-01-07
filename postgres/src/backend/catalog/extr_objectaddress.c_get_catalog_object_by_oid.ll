; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_catalog_object_by_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_catalog_object_by_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_catalog_object_by_oid(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @RelationGetRelid(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @get_object_catcache_oid(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ObjectIdGetDatum(i32 %22)
  %24 = call i32* @SearchSysCacheCopy1(i32 %21, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @HeapTupleIsValid(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %60

29:                                               ; preds = %20
  br label %58

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @get_object_oid_index(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @OidIsValid(i32 %33)
  %35 = call i32 @Assert(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @BTEqualStrategyNumber, align 4
  %38 = load i32, i32* @F_OIDEQ, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  %41 = call i32 @ScanKeyInit(i32* %13, i32 %36, i32 %37, i32 %38, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @systable_beginscan(i32 %42, i32 %43, i32 1, i32* null, i32 1, i32* %13)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32* @systable_getnext(i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @HeapTupleIsValid(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @systable_endscan(i32 %51)
  store i32* null, i32** %4, align 8
  br label %60

53:                                               ; preds = %30
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @heap_copytuple(i32* %54)
  store i32* %55, i32** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @systable_endscan(i32 %56)
  br label %58

58:                                               ; preds = %53, %29
  %59 = load i32*, i32** %8, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %58, %50, %28
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @get_object_catcache_oid(i32) #1

declare dso_local i32* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @get_object_oid_index(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @systable_getnext(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32* @heap_copytuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
