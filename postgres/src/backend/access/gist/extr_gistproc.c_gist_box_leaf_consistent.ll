; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_gist_box_leaf_consistent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_gist_box_leaf_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@box_left = common dso_local global i32 0, align 4
@box_overleft = common dso_local global i32 0, align 4
@box_overlap = common dso_local global i32 0, align 4
@box_overright = common dso_local global i32 0, align 4
@box_right = common dso_local global i32 0, align 4
@box_same = common dso_local global i32 0, align 4
@box_contain = common dso_local global i32 0, align 4
@box_contained = common dso_local global i32 0, align 4
@box_overbelow = common dso_local global i32 0, align 4
@box_below = common dso_local global i32 0, align 4
@box_above = common dso_local global i32 0, align 4
@box_overabove = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unrecognized strategy number: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @gist_box_leaf_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gist_box_leaf_consistent(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %105 [
    i32 137, label %9
    i32 132, label %17
    i32 130, label %25
    i32 131, label %33
    i32 129, label %41
    i32 128, label %49
    i32 138, label %57
    i32 135, label %57
    i32 139, label %65
    i32 136, label %65
    i32 133, label %73
    i32 140, label %81
    i32 141, label %89
    i32 134, label %97
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @box_left, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @PointerGetDatum(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @PointerGetDatum(i32* %13)
  %15 = call i32 @DirectFunctionCall2(i32 %10, i32 %12, i32 %14)
  %16 = call i32 @DatumGetBool(i32 %15)
  store i32 %16, i32* %7, align 4
  br label %109

17:                                               ; preds = %3
  %18 = load i32, i32* @box_overleft, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @PointerGetDatum(i32* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @PointerGetDatum(i32* %21)
  %23 = call i32 @DirectFunctionCall2(i32 %18, i32 %20, i32 %22)
  %24 = call i32 @DatumGetBool(i32 %23)
  store i32 %24, i32* %7, align 4
  br label %109

25:                                               ; preds = %3
  %26 = load i32, i32* @box_overlap, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @PointerGetDatum(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @PointerGetDatum(i32* %29)
  %31 = call i32 @DirectFunctionCall2(i32 %26, i32 %28, i32 %30)
  %32 = call i32 @DatumGetBool(i32 %31)
  store i32 %32, i32* %7, align 4
  br label %109

33:                                               ; preds = %3
  %34 = load i32, i32* @box_overright, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @PointerGetDatum(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @PointerGetDatum(i32* %37)
  %39 = call i32 @DirectFunctionCall2(i32 %34, i32 %36, i32 %38)
  %40 = call i32 @DatumGetBool(i32 %39)
  store i32 %40, i32* %7, align 4
  br label %109

41:                                               ; preds = %3
  %42 = load i32, i32* @box_right, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @PointerGetDatum(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @PointerGetDatum(i32* %45)
  %47 = call i32 @DirectFunctionCall2(i32 %42, i32 %44, i32 %46)
  %48 = call i32 @DatumGetBool(i32 %47)
  store i32 %48, i32* %7, align 4
  br label %109

49:                                               ; preds = %3
  %50 = load i32, i32* @box_same, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @PointerGetDatum(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @PointerGetDatum(i32* %53)
  %55 = call i32 @DirectFunctionCall2(i32 %50, i32 %52, i32 %54)
  %56 = call i32 @DatumGetBool(i32 %55)
  store i32 %56, i32* %7, align 4
  br label %109

57:                                               ; preds = %3, %3
  %58 = load i32, i32* @box_contain, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @PointerGetDatum(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @PointerGetDatum(i32* %61)
  %63 = call i32 @DirectFunctionCall2(i32 %58, i32 %60, i32 %62)
  %64 = call i32 @DatumGetBool(i32 %63)
  store i32 %64, i32* %7, align 4
  br label %109

65:                                               ; preds = %3, %3
  %66 = load i32, i32* @box_contained, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @PointerGetDatum(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @PointerGetDatum(i32* %69)
  %71 = call i32 @DirectFunctionCall2(i32 %66, i32 %68, i32 %70)
  %72 = call i32 @DatumGetBool(i32 %71)
  store i32 %72, i32* %7, align 4
  br label %109

73:                                               ; preds = %3
  %74 = load i32, i32* @box_overbelow, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @PointerGetDatum(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @PointerGetDatum(i32* %77)
  %79 = call i32 @DirectFunctionCall2(i32 %74, i32 %76, i32 %78)
  %80 = call i32 @DatumGetBool(i32 %79)
  store i32 %80, i32* %7, align 4
  br label %109

81:                                               ; preds = %3
  %82 = load i32, i32* @box_below, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @PointerGetDatum(i32* %83)
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @PointerGetDatum(i32* %85)
  %87 = call i32 @DirectFunctionCall2(i32 %82, i32 %84, i32 %86)
  %88 = call i32 @DatumGetBool(i32 %87)
  store i32 %88, i32* %7, align 4
  br label %109

89:                                               ; preds = %3
  %90 = load i32, i32* @box_above, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @PointerGetDatum(i32* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @PointerGetDatum(i32* %93)
  %95 = call i32 @DirectFunctionCall2(i32 %90, i32 %92, i32 %94)
  %96 = call i32 @DatumGetBool(i32 %95)
  store i32 %96, i32* %7, align 4
  br label %109

97:                                               ; preds = %3
  %98 = load i32, i32* @box_overabove, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @PointerGetDatum(i32* %99)
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @PointerGetDatum(i32* %101)
  %103 = call i32 @DirectFunctionCall2(i32 %98, i32 %100, i32 %102)
  %104 = call i32 @DatumGetBool(i32 %103)
  store i32 %104, i32* %7, align 4
  br label %109

105:                                              ; preds = %3
  %106 = load i32, i32* @ERROR, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @elog(i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %107)
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %97, %89, %81, %73, %65, %57, %49, %41, %33, %25, %17, %9
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @DirectFunctionCall2(i32, i32, i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
