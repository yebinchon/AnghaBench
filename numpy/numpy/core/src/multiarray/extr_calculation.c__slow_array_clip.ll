; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_calculation.c__slow_array_clip.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_calculation.c__slow_array_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@n_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*)* @_slow_array_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_slow_array_clip(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 1), align 4
  %19 = call i32* @_GenericBinaryOutFunction(i32* %15, i32* %16, i32* %17, i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32* null, i32** %5, align 8
  br label %51

23:                                               ; preds = %14
  br label %28

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @Py_INCREF(i32* %26)
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @n_ops, i32 0, i32 0), align 4
  %36 = call i32* @_GenericBinaryOutFunction(i32* %32, i32* %33, i32* %34, i32 %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @Py_XDECREF(i32* %40)
  store i32* null, i32** %5, align 8
  br label %51

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %28
  %44 = load i32*, i32** %10, align 8
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @Py_INCREF(i32* %45)
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @Py_DECREF(i32* %48)
  %50 = load i32*, i32** %11, align 8
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %47, %39, %22
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

declare dso_local i32* @_GenericBinaryOutFunction(i32*, i32*, i32*, i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
