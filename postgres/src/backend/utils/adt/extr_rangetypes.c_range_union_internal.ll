; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_union_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_union_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"range types do not match\00", align 1
@ERRCODE_DATA_EXCEPTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"result of range union would not be contiguous\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @range_union_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @range_union_internal(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @RangeTypeGetOid(i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @RangeTypeGetOid(i32* %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @range_deserialize(i32* %27, i32* %28, i32* %10, i32* %12, i32* %14)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @range_deserialize(i32* %30, i32* %31, i32* %11, i32* %13, i32* %15)
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32*, i32** %8, align 8
  store i32* %36, i32** %5, align 8
  br label %82

37:                                               ; preds = %26
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** %7, align 8
  store i32* %41, i32** %5, align 8
  br label %82

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @range_overlaps_internal(i32* %46, i32* %47, i32* %48)
  %50 = call i32 @DatumGetBool(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @range_adjacent_internal(i32* %53, i32* %54, i32* %55)
  %57 = call i32 @DatumGetBool(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_DATA_EXCEPTION, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 @ereport(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %52, %45, %42
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @range_cmp_bounds(i32* %66, i32* %10, i32* %11)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32* %10, i32** %16, align 8
  br label %71

70:                                               ; preds = %65
  store i32* %11, i32** %16, align 8
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32*, i32** %6, align 8
  %73 = call i64 @range_cmp_bounds(i32* %72, i32* %12, i32* %13)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32* %12, i32** %17, align 8
  br label %77

76:                                               ; preds = %71
  store i32* %13, i32** %17, align 8
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = call i32* @make_range(i32* %78, i32* %79, i32* %80, i32 0)
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %77, %40, %35
  %83 = load i32*, i32** %5, align 8
  ret i32* %83
}

declare dso_local i64 @RangeTypeGetOid(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @range_deserialize(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @range_overlaps_internal(i32*, i32*, i32*) #1

declare dso_local i32 @range_adjacent_internal(i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @range_cmp_bounds(i32*, i32*, i32*) #1

declare dso_local i32* @make_range(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
