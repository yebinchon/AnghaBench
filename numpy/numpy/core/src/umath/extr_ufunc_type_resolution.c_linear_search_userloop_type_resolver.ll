; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_linear_search_userloop_type_resolver.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_linear_search_userloop_type_resolver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }

@NPY_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**, i32, i32, i32, i32, i32**, i32*, i8*, i8*)* @linear_search_userloop_type_resolver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_search_userloop_type_resolver(%struct.TYPE_8__* %0, i32** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32** %6, i32* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32** %6, i32*** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %32, %35
  store i64 %36, i64* %23, align 8
  store i32 -1, i32* %25, align 4
  store i64 0, i64* %22, align 8
  br label %37

37:                                               ; preds = %127, %10
  %38 = load i64, i64* %22, align 8
  %39 = load i64, i64* %23, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %130

41:                                               ; preds = %37
  %42 = load i32**, i32*** %13, align 8
  %43 = load i64, i64* %22, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %130

48:                                               ; preds = %41
  %49 = load i32**, i32*** %13, align 8
  %50 = load i64, i64* %22, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = call %struct.TYPE_9__* @PyArray_DESCR(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %26, align 4
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %25, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %126

59:                                               ; preds = %48
  %60 = load i32, i32* %26, align 4
  %61 = call i64 @PyTypeNum_ISUSERDEF(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* @NPY_VOID, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %126

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %26, align 4
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %26, align 4
  %70 = call i32* @PyInt_FromLong(i32 %69)
  store i32* %70, i32** %27, align 8
  %71 = load i32*, i32** %27, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 -1, i32* %11, align 4
  br label %131

74:                                               ; preds = %67
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %27, align 8
  %79 = call i32* @PyDict_GetItem(i32 %77, i32* %78)
  store i32* %79, i32** %28, align 8
  %80 = load i32*, i32** %27, align 8
  %81 = call i32 @Py_DECREF(i32* %80)
  %82 = load i32*, i32** %28, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %127

85:                                               ; preds = %74
  %86 = load i32*, i32** %28, align 8
  %87 = call i64 @NpyCapsule_AsVoidPtr(i32* %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %24, align 8
  br label %89

89:                                               ; preds = %121, %85
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %92, label %125

92:                                               ; preds = %89
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %29, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = load i32**, i32*** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32*, i32** %29, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = load i8*, i8** %20, align 8
  %108 = load i8*, i8** %21, align 8
  %109 = call i32 @ufunc_loop_matches(%struct.TYPE_8__* %96, i32** %97, i32 %98, i32 %99, i32 %100, i32 %101, i32* %102, i32 %105, i32* %106, i8* %107, i8* %108)
  switch i32 %109, label %120 [
    i32 -1, label %110
    i32 1, label %111
  ]

110:                                              ; preds = %92
  store i32 -1, i32* %11, align 4
  br label %131

111:                                              ; preds = %92
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %113 = load i32**, i32*** %13, align 8
  %114 = load i32**, i32*** %18, align 8
  %115 = load i32*, i32** %29, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @set_ufunc_loop_data_types(%struct.TYPE_8__* %112, i32** %113, i32** %114, i32* %115, i32 %118)
  store i32 1, i32* %11, align 4
  br label %131

120:                                              ; preds = %92
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %24, align 8
  br label %89

125:                                              ; preds = %89
  br label %126

126:                                              ; preds = %125, %63, %48
  br label %127

127:                                              ; preds = %126, %84
  %128 = load i64, i64* %22, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %22, align 8
  br label %37

130:                                              ; preds = %47, %37
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %130, %111, %110, %73
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_9__* @PyArray_DESCR(i32*) #1

declare dso_local i64 @PyTypeNum_ISUSERDEF(i32) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

declare dso_local i32* @PyDict_GetItem(i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @NpyCapsule_AsVoidPtr(i32*) #1

declare dso_local i32 @ufunc_loop_matches(%struct.TYPE_8__*, i32**, i32, i32, i32, i32, i32*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @set_ufunc_loop_data_types(%struct.TYPE_8__*, i32**, i32**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
