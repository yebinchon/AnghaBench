; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_Positional.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_Dragon4_Positional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@Half = common dso_local global i32 0, align 4
@Float = common dso_local global i32 0, align 4
@Double = common dso_local global i32 0, align 4
@LongDouble = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Dragon4_Positional(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 7
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %12, align 4
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 6
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %13, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* %14, align 4
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %15, align 4
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %17, align 4
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  store i32 -1, i32* %39, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @Half, align 4
  %42 = call i64 @PyArray_IsScalar(i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %8
  %45 = load i32*, i32** %10, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_11__*
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %20, align 4
  %49 = call i32* @Dragon4_Positional_Half_opt(i32* %20, %struct.TYPE_14__* %19)
  store i32* %49, i32** %9, align 8
  br label %94

50:                                               ; preds = %8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @Float, align 4
  %53 = call i64 @PyArray_IsScalar(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = bitcast i32* %56 to %struct.TYPE_12__*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %21, align 4
  %60 = call i32* @Dragon4_Positional_Float_opt(i32* %21, %struct.TYPE_14__* %19)
  store i32* %60, i32** %9, align 8
  br label %94

61:                                               ; preds = %50
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* @Double, align 4
  %64 = call i64 @PyArray_IsScalar(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32*, i32** %10, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_13__*
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %22, align 4
  %71 = call i32* @Dragon4_Positional_Double_opt(i32* %22, %struct.TYPE_14__* %19)
  store i32* %71, i32** %9, align 8
  br label %94

72:                                               ; preds = %61
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @LongDouble, align 4
  %75 = call i64 @PyArray_IsScalar(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = bitcast i32* %78 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %23, align 4
  %82 = call i32* @Dragon4_Positional_LongDouble_opt(i32* %23, %struct.TYPE_14__* %19)
  store i32* %82, i32** %9, align 8
  br label %94

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @PyFloat_AsDouble(i32* %87)
  store i32 %88, i32* %18, align 4
  %89 = call i64 (...) @PyErr_Occurred()
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32* null, i32** %9, align 8
  br label %94

92:                                               ; preds = %86
  %93 = call i32* @Dragon4_Positional_Double_opt(i32* %18, %struct.TYPE_14__* %19)
  store i32* %93, i32** %9, align 8
  br label %94

94:                                               ; preds = %92, %91, %77, %66, %55, %44
  %95 = load i32*, i32** %9, align 8
  ret i32* %95
}

declare dso_local i64 @PyArray_IsScalar(i32*, i32) #1

declare dso_local i32* @Dragon4_Positional_Half_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @Dragon4_Positional_Float_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @Dragon4_Positional_Double_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @Dragon4_Positional_LongDouble_opt(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @PyFloat_AsDouble(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
