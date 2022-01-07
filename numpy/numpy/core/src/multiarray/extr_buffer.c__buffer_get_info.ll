; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_get_info.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_buffer.c__buffer_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_buffer_info_cache = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @_buffer_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_buffer_get_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %9 = load i32*, i32** @_buffer_info_cache, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = call i32* (...) @PyDict_New()
  store i32* %12, i32** @_buffer_info_cache, align 8
  %13 = load i32*, i32** @_buffer_info_cache, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32* null, i32** %2, align 8
  br label %112

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @_buffer_info_new(i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32* null, i32** %2, align 8
  br label %112

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = call i32* @PyLong_FromVoidPtr(i8* %25)
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %97

30:                                               ; preds = %23
  %31 = load i32*, i32** @_buffer_info_cache, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @PyDict_GetItem(i32* %31, i32* %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @Py_INCREF(i32* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @PyList_GET_SIZE(i32* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @PyList_GET_SIZE(i32* %44)
  %46 = sub nsw i64 %45, 1
  %47 = call i32* @PyList_GetItem(i32* %43, i64 %46)
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @PyLong_AsVoidPtr(i32* %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @_buffer_info_cmp(i32* %51, i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @_buffer_info_free(i32* %56)
  %58 = load i32*, i32** %8, align 8
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %55, %42
  br label %60

60:                                               ; preds = %59, %36
  br label %74

61:                                               ; preds = %30
  %62 = call i32* @PyList_New(i32 0)
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %97

66:                                               ; preds = %61
  %67 = load i32*, i32** @_buffer_info_cache, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i64 @PyDict_SetItem(i32* %67, i32* %68, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %97

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = icmp ne i32* %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = bitcast i32* %79 to i8*
  %81 = call i32* @PyLong_FromVoidPtr(i8* %80)
  store i32* %81, i32** %6, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %97

85:                                               ; preds = %78
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @PyList_Append(i32* %86, i32* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @Py_DECREF(i32* %89)
  br label %91

91:                                               ; preds = %85, %74
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @Py_DECREF(i32* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @Py_DECREF(i32* %94)
  %96 = load i32*, i32** %7, align 8
  store i32* %96, i32** %2, align 8
  br label %112

97:                                               ; preds = %84, %72, %65, %29
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = icmp ne i32* %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @_buffer_info_free(i32* %105)
  br label %107

107:                                              ; preds = %104, %100, %97
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @Py_XDECREF(i32* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @Py_XDECREF(i32* %110)
  store i32* null, i32** %2, align 8
  br label %112

112:                                              ; preds = %107, %91, %22, %15
  %113 = load i32*, i32** %2, align 8
  ret i32* %113
}

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32* @_buffer_info_new(i32*) #1

declare dso_local i32* @PyLong_FromVoidPtr(i8*) #1

declare dso_local i32* @PyDict_GetItem(i32*, i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyList_GET_SIZE(i32*) #1

declare dso_local i32* @PyList_GetItem(i32*, i64) #1

declare dso_local i64 @PyLong_AsVoidPtr(i32*) #1

declare dso_local i64 @_buffer_info_cmp(i32*, i32*) #1

declare dso_local i32 @_buffer_info_free(i32*) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i64 @PyDict_SetItem(i32*, i32*, i32*) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
