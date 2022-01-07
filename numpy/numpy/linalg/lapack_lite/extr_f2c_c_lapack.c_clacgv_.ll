; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_clacgv_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_clacgv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@clacgv_.i__ = internal global i32 0, align 4
@clacgv_.ioff = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clacgv_(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 -1
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %47

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 1, i32* @clacgv_.i__, align 4
  br label %18

18:                                               ; preds = %43, %15
  %19 = load i32, i32* @clacgv_.i__, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load i32, i32* @clacgv_.i__, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* @clacgv_.i__, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = call i32 @r_cnjg(%struct.TYPE_5__* %9, %struct.TYPE_5__* %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* @clacgv_.i__, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @clacgv_.i__, align 4
  br label %18

46:                                               ; preds = %18
  br label %95

47:                                               ; preds = %3
  store i32 1, i32* @clacgv_.ioff, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = sub nsw i32 1, %57
  store i32 %58, i32* @clacgv_.ioff, align 4
  br label %59

59:                                               ; preds = %51, %47
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  store i32 1, i32* @clacgv_.i__, align 4
  br label %62

62:                                               ; preds = %91, %59
  %63 = load i32, i32* @clacgv_.i__, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %62
  %67 = load i32, i32* @clacgv_.ioff, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = load i32, i32* @clacgv_.ioff, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = call i32 @r_cnjg(%struct.TYPE_5__* %9, %struct.TYPE_5__* %71)
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %74, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @clacgv_.ioff, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* @clacgv_.ioff, align 4
  br label %91

91:                                               ; preds = %66
  %92 = load i32, i32* @clacgv_.i__, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @clacgv_.i__, align 4
  br label %62

94:                                               ; preds = %62
  br label %95

95:                                               ; preds = %94, %46
  ret i32 0
}

declare dso_local i32 @r_cnjg(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
