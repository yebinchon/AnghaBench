; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_pick.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rangelist_pick(%struct.RangeList* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.RangeList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.RangeList* %0, %struct.RangeList** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %12 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %15 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %18 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %21 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %26 = call i32 @rangelist_sort(%struct.RangeList* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %29 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %10, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @rangelist_pick_linearsearch(%struct.RangeList* %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %102

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %84, %53, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 %41, %42
  %44 = udiv i32 %43, 2
  %45 = add i32 %40, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %8, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp uge i32 %56, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %64, 1
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %85

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ult i32 %70, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %85

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %55
  br label %39

85:                                               ; preds = %78, %68
  %86 = load %struct.RangeList*, %struct.RangeList** %4, align 8
  %87 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %94, %99
  %101 = add i32 %93, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %85, %34
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rangelist_pick_linearsearch(%struct.RangeList*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
