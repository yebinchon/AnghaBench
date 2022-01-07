; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_consistent_leaf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_consistent_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecognized range strategy: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @range_gist_consistent_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range_gist_consistent_leaf(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %70 [
    i32 135, label %11
    i32 129, label %17
    i32 130, label %23
    i32 128, label %29
    i32 136, label %35
    i32 137, label %41
    i32 133, label %47
    i32 134, label %53
    i32 132, label %59
    i32 131, label %64
  ]

11:                                               ; preds = %4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @DatumGetRangeTypeP(i32 %14)
  %16 = call i32 @range_before_internal(i32* %12, i32* %13, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %74

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @DatumGetRangeTypeP(i32 %20)
  %22 = call i32 @range_overleft_internal(i32* %18, i32* %19, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %74

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @DatumGetRangeTypeP(i32 %26)
  %28 = call i32 @range_overlaps_internal(i32* %24, i32* %25, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %74

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DatumGetRangeTypeP(i32 %32)
  %34 = call i32 @range_overright_internal(i32* %30, i32* %31, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %74

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @DatumGetRangeTypeP(i32 %38)
  %40 = call i32 @range_after_internal(i32* %36, i32* %37, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %74

41:                                               ; preds = %4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @DatumGetRangeTypeP(i32 %44)
  %46 = call i32 @range_adjacent_internal(i32* %42, i32* %43, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %74

47:                                               ; preds = %4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DatumGetRangeTypeP(i32 %50)
  %52 = call i32 @range_contains_internal(i32* %48, i32* %49, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %74

53:                                               ; preds = %4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @DatumGetRangeTypeP(i32 %56)
  %58 = call i32 @range_contained_by_internal(i32* %54, i32* %55, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %74

59:                                               ; preds = %4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @range_contains_elem_internal(i32* %60, i32* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %74

64:                                               ; preds = %4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @DatumGetRangeTypeP(i32 %67)
  %69 = call i32 @range_eq_internal(i32* %65, i32* %66, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %74

70:                                               ; preds = %4
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @elog(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %64, %59, %53, %47, %41, %35, %29, %23, %17, %11
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @range_before_internal(i32*, i32*, i32) #1

declare dso_local i32 @DatumGetRangeTypeP(i32) #1

declare dso_local i32 @range_overleft_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_overlaps_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_overright_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_after_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_adjacent_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_contains_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_contained_by_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_contains_elem_internal(i32*, i32*, i32) #1

declare dso_local i32 @range_eq_internal(i32*, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
