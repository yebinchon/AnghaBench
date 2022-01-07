; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_rtree_internal_consistent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_rtree_internal_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@box_overright = common dso_local global i32 0, align 4
@box_right = common dso_local global i32 0, align 4
@box_overlap = common dso_local global i32 0, align 4
@box_left = common dso_local global i32 0, align 4
@box_overleft = common dso_local global i32 0, align 4
@box_contain = common dso_local global i32 0, align 4
@box_above = common dso_local global i32 0, align 4
@box_overabove = common dso_local global i32 0, align 4
@box_overbelow = common dso_local global i32 0, align 4
@box_below = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unrecognized strategy number: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @rtree_internal_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtree_internal_consistent(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %121 [
    i32 137, label %9
    i32 132, label %20
    i32 130, label %31
    i32 131, label %39
    i32 129, label %50
    i32 128, label %61
    i32 138, label %61
    i32 135, label %61
    i32 139, label %69
    i32 136, label %69
    i32 133, label %77
    i32 140, label %88
    i32 141, label %99
    i32 134, label %110
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @box_overright, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @PointerGetDatum(i32* %11)
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @PointerGetDatum(i32* %13)
  %15 = call i32 @DirectFunctionCall2(i32 %10, i32 %12, i32 %14)
  %16 = call i32 @DatumGetBool(i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  br label %125

20:                                               ; preds = %3
  %21 = load i32, i32* @box_right, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @PointerGetDatum(i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @PointerGetDatum(i32* %24)
  %26 = call i32 @DirectFunctionCall2(i32 %21, i32 %23, i32 %25)
  %27 = call i32 @DatumGetBool(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %125

31:                                               ; preds = %3
  %32 = load i32, i32* @box_overlap, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @PointerGetDatum(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @PointerGetDatum(i32* %35)
  %37 = call i32 @DirectFunctionCall2(i32 %32, i32 %34, i32 %36)
  %38 = call i32 @DatumGetBool(i32 %37)
  store i32 %38, i32* %7, align 4
  br label %125

39:                                               ; preds = %3
  %40 = load i32, i32* @box_left, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @PointerGetDatum(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @PointerGetDatum(i32* %43)
  %45 = call i32 @DirectFunctionCall2(i32 %40, i32 %42, i32 %44)
  %46 = call i32 @DatumGetBool(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  br label %125

50:                                               ; preds = %3
  %51 = load i32, i32* @box_overleft, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @PointerGetDatum(i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @PointerGetDatum(i32* %54)
  %56 = call i32 @DirectFunctionCall2(i32 %51, i32 %53, i32 %55)
  %57 = call i32 @DatumGetBool(i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %7, align 4
  br label %125

61:                                               ; preds = %3, %3, %3
  %62 = load i32, i32* @box_contain, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @PointerGetDatum(i32* %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @PointerGetDatum(i32* %65)
  %67 = call i32 @DirectFunctionCall2(i32 %62, i32 %64, i32 %66)
  %68 = call i32 @DatumGetBool(i32 %67)
  store i32 %68, i32* %7, align 4
  br label %125

69:                                               ; preds = %3, %3
  %70 = load i32, i32* @box_overlap, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @PointerGetDatum(i32* %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @PointerGetDatum(i32* %73)
  %75 = call i32 @DirectFunctionCall2(i32 %70, i32 %72, i32 %74)
  %76 = call i32 @DatumGetBool(i32 %75)
  store i32 %76, i32* %7, align 4
  br label %125

77:                                               ; preds = %3
  %78 = load i32, i32* @box_above, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @PointerGetDatum(i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @PointerGetDatum(i32* %81)
  %83 = call i32 @DirectFunctionCall2(i32 %78, i32 %80, i32 %82)
  %84 = call i32 @DatumGetBool(i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  br label %125

88:                                               ; preds = %3
  %89 = load i32, i32* @box_overabove, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @PointerGetDatum(i32* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @PointerGetDatum(i32* %92)
  %94 = call i32 @DirectFunctionCall2(i32 %89, i32 %91, i32 %93)
  %95 = call i32 @DatumGetBool(i32 %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %7, align 4
  br label %125

99:                                               ; preds = %3
  %100 = load i32, i32* @box_overbelow, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @PointerGetDatum(i32* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @PointerGetDatum(i32* %103)
  %105 = call i32 @DirectFunctionCall2(i32 %100, i32 %102, i32 %104)
  %106 = call i32 @DatumGetBool(i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %7, align 4
  br label %125

110:                                              ; preds = %3
  %111 = load i32, i32* @box_below, align 4
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @PointerGetDatum(i32* %112)
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @PointerGetDatum(i32* %114)
  %116 = call i32 @DirectFunctionCall2(i32 %111, i32 %113, i32 %115)
  %117 = call i32 @DatumGetBool(i32 %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %7, align 4
  br label %125

121:                                              ; preds = %3
  %122 = load i32, i32* @ERROR, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @elog(i32 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %123)
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %110, %99, %88, %77, %69, %61, %50, %39, %31, %20, %9
  %126 = load i32, i32* %7, align 4
  ret i32 %126
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
