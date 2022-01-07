; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__one_to_n_data_clone.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dtype_transfer.c__one_to_n_data_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @_one_to_n_data_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_one_to_n_data_clone(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = call i64 @PyArray_malloc(i32 16)
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @memcpy(%struct.TYPE_4__* %14, i32* %15, i32 16)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i8* @NPY_AUXDATA_CLONE(i32* %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = call i32 @PyArray_free(%struct.TYPE_4__* %34)
  store i32* null, i32** %2, align 8
  br label %65

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @NPY_AUXDATA_CLONE(i32* %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @NPY_AUXDATA_FREE(i32* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = call i32 @PyArray_free(%struct.TYPE_4__* %59)
  store i32* null, i32** %2, align 8
  br label %65

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = bitcast %struct.TYPE_4__* %63 to i32*
  store i32* %64, i32** %2, align 8
  br label %65

65:                                               ; preds = %62, %54, %33, %12
  %66 = load i32*, i32** %2, align 8
  ret i32* %66
}

declare dso_local i64 @PyArray_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i8* @NPY_AUXDATA_CLONE(i32*) #1

declare dso_local i32 @PyArray_free(%struct.TYPE_4__*) #1

declare dso_local i32 @NPY_AUXDATA_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
