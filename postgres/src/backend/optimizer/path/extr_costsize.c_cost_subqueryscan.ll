; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_subqueryscan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_cost_subqueryscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i64, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }

@RTE_SUBQUERY = common dso_local global i64 0, align 8
@cpu_tuple_cost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cost_subqueryscan(%struct.TYPE_19__* %0, i32* %1, %struct.TYPE_20__* %2, %struct.TYPE_22__* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %8, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RTE_SUBQUERY, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %27 = icmp ne %struct.TYPE_22__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  br label %42

35:                                               ; preds = %4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %62 = call i32 @get_restriction_qual_cost(i32* %59, %struct.TYPE_20__* %60, %struct.TYPE_22__* %61, %struct.TYPE_21__* %11)
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @cpu_tuple_cost, align 4
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %89, %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, %97
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %105
  store i32 %110, i32* %108, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @get_restriction_qual_cost(i32*, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
