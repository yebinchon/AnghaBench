; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_find_typmod_coercion_function.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_coerce.c_find_typmod_coercion_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@COERCION_PATH_FUNC = common dso_local global i32 0, align 4
@COERCION_PATH_ARRAYCOERCE = common dso_local global i32 0, align 4
@CASTSOURCETARGET = common dso_local global i32 0, align 4
@COERCION_PATH_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_typmod_coercion_function(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load i64, i64* @InvalidOid, align 8
  %11 = load i64*, i64** %4, align 8
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* @COERCION_PATH_FUNC, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @typeidType(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @GETSTRUCT(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %7, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @InvalidOid, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %3, align 8
  %32 = load i32, i32* @COERCION_PATH_ARRAYCOERCE, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %23, %2
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @ReleaseSysCache(i32 %34)
  %36 = load i32, i32* @CASTSOURCETARGET, align 4
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @ObjectIdGetDatum(i64 %37)
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @ObjectIdGetDatum(i64 %39)
  %41 = call i32 @SearchSysCache2(i32 %36, i32 %38, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @HeapTupleIsValid(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @GETSTRUCT(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %9, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %4, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ReleaseSysCache(i32 %53)
  br label %55

55:                                               ; preds = %45, %33
  %56 = load i64*, i64** %4, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @OidIsValid(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @COERCION_PATH_NONE, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @typeidType(i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @SearchSysCache2(i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @OidIsValid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
