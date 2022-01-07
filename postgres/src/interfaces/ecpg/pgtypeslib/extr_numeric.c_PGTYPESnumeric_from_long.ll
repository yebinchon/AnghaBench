; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_from_long.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_PGTYPESnumeric_from_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64*, i32 }

@NUMERIC_NEG = common dso_local global i32 0, align 4
@NUMERIC_POS = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PGTYPESnumeric_from_long(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8
  %16 = mul nsw i64 %15, -1
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @NUMERIC_NEG, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @NUMERIC_POS, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  store i64 1, i64* %10, align 8
  br label %25

25:                                               ; preds = %41, %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i64, i64* %10, align 8
  %29 = mul nsw i64 %28, 10
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %10, align 8
  %32 = sub nsw i64 %31, 1
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* @LONG_MAX, align 4
  %38 = sdiv i32 %37, 10
  %39 = sext i32 %38 to i64
  %40 = icmp sle i64 %36, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br i1 %42, label %25, label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* @LONG_MAX, align 4
  %46 = sdiv i32 %45, 10
  %47 = sext i32 %46 to i64
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i64, i64* %10, align 8
  %56 = sdiv i64 %55, 10
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @alloc_var(%struct.TYPE_4__* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -1, i32* %3, align 4
  br label %98

63:                                               ; preds = %57
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %94, %63
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %10, align 8
  %76 = srem i64 %74, %75
  %77 = sub nsw i64 %73, %76
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sdiv i64 %78, %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %80, i64* %86, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i64, i64* %10, align 8
  %93 = sdiv i64 %92, 10
  store i64 %93, i64* %10, align 8
  br label %94

94:                                               ; preds = %72
  %95 = load i64, i64* %8, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %72, label %97

97:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %62
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @alloc_var(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
