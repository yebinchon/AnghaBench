; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_Scientific.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_Scientific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@CutoffMode_TotalLength = common dso_local global i32 0, align 4
@Half = common dso_local global i32 0, align 4
@Float = common dso_local global i32 0, align 4
@Double = common dso_local global i32 0, align 4
@LongDouble = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Dragon4_Scientific(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @CutoffMode_TotalLength, align 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %13, align 4
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 6
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %14, align 4
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  store i32 -1, i32* %35, align 4
  %36 = load i32, i32* %15, align 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @Half, align 4
  %40 = call i64 @PyArray_IsScalar(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %7
  %43 = load i32*, i32** %9, align 8
  %44 = bitcast i32* %43 to %struct.TYPE_11__*
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  %47 = call i32* @Dragon4_Scientific_Half_opt(i32* %18, %struct.TYPE_14__* %17)
  store i32* %47, i32** %8, align 8
  br label %92

48:                                               ; preds = %7
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @Float, align 4
  %51 = call i64 @PyArray_IsScalar(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32*, i32** %9, align 8
  %55 = bitcast i32* %54 to %struct.TYPE_12__*
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %19, align 4
  %58 = call i32* @Dragon4_Scientific_Float_opt(i32* %19, %struct.TYPE_14__* %17)
  store i32* %58, i32** %8, align 8
  br label %92

59:                                               ; preds = %48
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @Double, align 4
  %62 = call i64 @PyArray_IsScalar(i32* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32*, i32** %9, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_13__*
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %20, align 4
  %69 = call i32* @Dragon4_Scientific_Double_opt(i32* %20, %struct.TYPE_14__* %17)
  store i32* %69, i32** %8, align 8
  br label %92

70:                                               ; preds = %59
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @LongDouble, align 4
  %73 = call i64 @PyArray_IsScalar(i32* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32*, i32** %9, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %21, align 4
  %80 = call i32* @Dragon4_Scientific_LongDouble_opt(i32* %21, %struct.TYPE_14__* %17)
  store i32* %80, i32** %8, align 8
  br label %92

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @PyFloat_AsDouble(i32* %85)
  store i32 %86, i32* %16, align 4
  %87 = call i64 (...) @PyErr_Occurred()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32* null, i32** %8, align 8
  br label %92

90:                                               ; preds = %84
  %91 = call i32* @Dragon4_Scientific_Double_opt(i32* %16, %struct.TYPE_14__* %17)
  store i32* %91, i32** %8, align 8
  br label %92

92:                                               ; preds = %90, %89, %75, %64, %53, %42
  %93 = load i32*, i32** %8, align 8
  ret i32* %93
}

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i32* @Dragon4_Scientific_Half_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @Dragon4_Scientific_Float_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @Dragon4_Scientific_Double_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @Dragon4_Scientific_LongDouble_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @PyFloat_AsDouble(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
