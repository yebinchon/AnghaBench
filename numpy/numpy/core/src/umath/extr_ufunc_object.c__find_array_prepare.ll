; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__find_array_prepare.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c__find_array_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@npy_um_str_array_prepare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32, i32)* @_find_array_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_find_array_prepare(i32* %0, i32 %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = bitcast %struct.TYPE_3__* %6 to { i32*, i32 }*
  %13 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %12, i32 0, i32 0
  store i32* %0, i32** %13, align 8
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %12, i32 0, i32 1
  store i32 %1, i32* %14, align 8
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @npy_um_str_array_prepare, align 4
  %18 = call i32* @_find_array_method(i32 %16, i32 %17)
  store i32* %18, i32** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @Py_XINCREF(i32* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load i32**, i32*** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* %30, i32** %34, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %23

38:                                               ; preds = %23
  br label %60

39:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @PyTuple_GET_ITEM(i32* %46, i32 %47)
  %49 = load i32, i32* @npy_um_str_array_prepare, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i32* @_get_output_array_method(i32 %48, i32 %49, i32* %50)
  %52 = load i32**, i32*** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* %51, i32** %55, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @Py_XDECREF(i32* %61)
  ret void
}

declare dso_local i32* @_find_array_method(i32, i32) #1

declare dso_local i32 @Py_XINCREF(i32*) #1

declare dso_local i32* @_get_output_array_method(i32, i32, i32*) #1

declare dso_local i32 @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
