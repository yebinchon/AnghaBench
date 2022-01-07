; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_check_for_trivial_loop.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_check_for_trivial_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32**, i64)* @check_for_trivial_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_trivial_loop(%struct.TYPE_3__* %0, i32** %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  store i64 %21, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %109, %4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %112

26:                                               ; preds = %22
  %27 = load i32**, i32*** %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %108

32:                                               ; preds = %26
  %33 = load i32**, i32*** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PyArray_ISALIGNED(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load i32**, i32*** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i32*, i32** %40, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32**, i32*** %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PyArray_DESCR(i32* %47)
  %49 = call i32 @PyArray_EquivTypes(i32* %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %108, label %51

51:                                               ; preds = %39, %32
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %51
  %56 = load i32**, i32*** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @PyArray_NDIM(i32* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %55
  %63 = load i32**, i32*** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @PyArray_NDIM(i32* %66)
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %106

69:                                               ; preds = %62
  %70 = load i32**, i32*** %7, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i64 @PyArray_DIM(i32* %73, i32 0)
  %75 = load i64, i64* %9, align 8
  %76 = icmp ule i64 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %69, %55
  %78 = load i32**, i32*** %8, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @Py_INCREF(i32* %81)
  %83 = load i32**, i32*** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32**, i32*** %8, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @PyArray_CastToType(i32* %86, i32* %90, i32 0)
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %13, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %77
  store i32 -1, i32* %5, align 4
  br label %113

96:                                               ; preds = %77
  %97 = load i32**, i32*** %7, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @Py_DECREF(i32* %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i32**, i32*** %7, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  store i32* %102, i32** %105, align 8
  br label %107

106:                                              ; preds = %69, %62, %51
  store i32 0, i32* %5, align 4
  br label %113

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %39, %26
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %10, align 8
  br label %22

112:                                              ; preds = %22
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %106, %95
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @PyArray_ISALIGNED(i32*) #1

declare dso_local i32 @PyArray_EquivTypes(i32*, i32) #1

declare dso_local i32 @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyArray_NDIM(i32*) #1

declare dso_local i64 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyArray_CastToType(i32*, i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
