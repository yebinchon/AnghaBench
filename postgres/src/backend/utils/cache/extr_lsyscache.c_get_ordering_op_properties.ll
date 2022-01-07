; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_ordering_op_properties.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_ordering_op_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }

@InvalidOid = common dso_local global i64 0, align 8
@AMOPOPID = common dso_local global i32 0, align 4
@BTREE_AM_OID = common dso_local global i64 0, align 8
@BTLessStrategyNumber = common dso_local global i64 0, align 8
@BTGreaterStrategyNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_ordering_op_properties(i64 %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i64, i64* @InvalidOid, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* @InvalidOid, align 8
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @AMOPOPID, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @ObjectIdGetDatum(i64 %20)
  %22 = call %struct.TYPE_8__* @SearchSysCacheList1(i32 %19, i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %83, %4
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %86

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @GETSTRUCT(i32* %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %13, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BTREE_AM_OID, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %83

48:                                               ; preds = %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BTLessStrategyNumber, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @BTGreaterStrategyNumber, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %54, %48
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %6, align 8
  store i64 %71, i64* %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %8, align 8
  store i64 %79, i64* %80, align 8
  store i32 1, i32* %9, align 4
  br label %86

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %47
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %23

86:                                               ; preds = %68, %23
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = call i32 @ReleaseSysCacheList(%struct.TYPE_8__* %87)
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_8__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCacheList(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
