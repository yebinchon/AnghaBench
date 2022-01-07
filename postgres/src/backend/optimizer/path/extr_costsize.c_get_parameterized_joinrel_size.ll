; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_get_parameterized_joinrel_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_costsize.c_get_parameterized_joinrel_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_parameterized_joinrel_size(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, %struct.TYPE_8__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call double @calc_joinrel_size_estimate(i32* %14, %struct.TYPE_7__* %15, i32 %18, i32 %21, i32 %24, i32 %27, i32* %28, i32* %29)
  store double %30, double* %13, align 8
  %31 = load double, double* %13, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fcmp ogt double %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  store double %39, double* %13, align 8
  br label %40

40:                                               ; preds = %36, %6
  %41 = load double, double* %13, align 8
  ret double %41
}

declare dso_local double @calc_joinrel_size_estimate(i32*, %struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
