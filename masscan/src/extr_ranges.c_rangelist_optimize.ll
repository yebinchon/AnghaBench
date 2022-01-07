; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_optimize.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i64, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rangelist_optimize(%struct.RangeList* %0) #0 {
  %2 = alloca %struct.RangeList*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.RangeList* %0, %struct.RangeList** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %9 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %12 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %17 = call i32 @rangelist_sort(%struct.RangeList* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %20 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %25 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @free(i32* %26)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %30 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32* @REALLOCARRAY(i32* null, i64 %31, i32 4)
  store i32* %32, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %68, %28
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %37 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %47 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %55 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %53, %61
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %40
  %69 = load i32, i32* %4, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %33

71:                                               ; preds = %33
  %72 = load i32*, i32** %3, align 8
  %73 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %74 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %83, %71
  %76 = load i64, i64* %7, align 8
  %77 = lshr i64 %76, 1
  store i64 %77, i64* %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %6, align 4
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %84

83:                                               ; preds = %75
  br label %75

84:                                               ; preds = %82
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 1, %85
  %87 = sub nsw i32 %86, 1
  %88 = load %struct.RangeList*, %struct.RangeList** %2, align 8
  %89 = getelementptr inbounds %struct.RangeList, %struct.RangeList* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  ret void
}

declare dso_local i32 @rangelist_sort(%struct.RangeList*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @REALLOCARRAY(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
