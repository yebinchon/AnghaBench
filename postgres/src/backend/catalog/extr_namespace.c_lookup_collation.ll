; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_lookup_collation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_lookup_collation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@COLLNAMEENCNSP = common dso_local global i32 0, align 4
@Anum_pg_collation_oid = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@COLLPROVIDER_ICU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @lookup_collation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_collation(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @COLLNAMEENCNSP, align 4
  %12 = load i32, i32* @Anum_pg_collation_oid, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @PointerGetDatum(i8* %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @Int32GetDatum(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ObjectIdGetDatum(i32 %17)
  %19 = call i32 @GetSysCacheOid3(i32 %11, i32 %12, i32 %14, i32 %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @OidIsValid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %66

25:                                               ; preds = %3
  %26 = load i32, i32* @COLLNAMEENCNSP, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @PointerGetDatum(i8* %27)
  %29 = call i32 @Int32GetDatum(i32 -1)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ObjectIdGetDatum(i32 %30)
  %32 = call i32 @SearchSysCache3(i32 %26, i32 %28, i32 %29, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @HeapTupleIsValid(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @InvalidOid, align 4
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @GETSTRUCT(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %10, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @COLLPROVIDER_ICU, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @is_encoding_supported_by_icu(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @InvalidOid, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %62

58:                                               ; preds = %38
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ReleaseSysCache(i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %36, %23
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @GetSysCacheOid3(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @SearchSysCache3(i32, i32, i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @is_encoding_supported_by_icu(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
