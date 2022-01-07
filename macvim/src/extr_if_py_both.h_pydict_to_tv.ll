; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_pydict_to_tv.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_pydict_to_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64 }

@VAR_DICT = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@RAISE_NO_EMPTY_KEYS = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32*)* @pydict_to_tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pydict_to_tv(i32* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %13, align 4
  %15 = call %struct.TYPE_18__* (...) @py_dict_alloc()
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = icmp ne %struct.TYPE_18__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %107

18:                                               ; preds = %3
  %19 = load i32, i32* @VAR_DICT, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %25, align 8
  br label %26

26:                                               ; preds = %101, %18
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @PyDict_Next(i32* %27, i32* %13, i32** %11, i32** %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %102

30:                                               ; preds = %26
  store i32* null, i32** %14, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %30
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %38 = call i32 @dict_unref(%struct.TYPE_18__* %37)
  store i32 -1, i32* %4, align 4
  br label %107

39:                                               ; preds = %33
  %40 = load i32*, i32** %11, align 8
  %41 = call i64* @StringToChars(i32* %40, i32** %14)
  store i64* %41, i64** %9, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = call i32 @dict_unref(%struct.TYPE_18__* %44)
  store i32 -1, i32* %4, align 4
  br label %107

46:                                               ; preds = %39
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NUL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %53 = call i32 @dict_unref(%struct.TYPE_18__* %52)
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @Py_XDECREF(i32* %54)
  %56 = load i32, i32* @RAISE_NO_EMPTY_KEYS, align 4
  store i32 -1, i32* %4, align 4
  br label %107

57:                                               ; preds = %46
  %58 = load i64*, i64** %9, align 8
  %59 = call %struct.TYPE_17__* @dictitem_alloc(i64* %58)
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %10, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @Py_XDECREF(i32* %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = icmp eq %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = call i32 (...) @PyErr_NoMemory()
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = call i32 @dict_unref(%struct.TYPE_18__* %66)
  store i32 -1, i32* %4, align 4
  br label %107

68:                                               ; preds = %57
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @_ConvertFromPyObject(i32* %72, %struct.TYPE_14__* %74, i32* %75)
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = call i32 @vim_free(%struct.TYPE_17__* %79)
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %82 = call i32 @dict_unref(%struct.TYPE_18__* %81)
  store i32 -1, i32* %4, align 4
  br label %107

83:                                               ; preds = %68
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %86 = call i64 @dict_add(%struct.TYPE_18__* %84, %struct.TYPE_17__* %85)
  %87 = load i64, i64* @FAIL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @RAISE_KEY_ADD_FAIL(i32 %92)
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = call i32 @clear_tv(%struct.TYPE_14__* %95)
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %98 = call i32 @vim_free(%struct.TYPE_17__* %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %100 = call i32 @dict_unref(%struct.TYPE_18__* %99)
  store i32 -1, i32* %4, align 4
  br label %107

101:                                              ; preds = %83
  br label %26

102:                                              ; preds = %26
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 4
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %102, %89, %78, %64, %51, %43, %36, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_18__* @py_dict_alloc(...) #1

declare dso_local i64 @PyDict_Next(i32*, i32*, i32**, i32**) #1

declare dso_local i32 @dict_unref(%struct.TYPE_18__*) #1

declare dso_local i64* @StringToChars(i32*, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local %struct.TYPE_17__* @dictitem_alloc(i64*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @_ConvertFromPyObject(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @vim_free(%struct.TYPE_17__*) #1

declare dso_local i64 @dict_add(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @RAISE_KEY_ADD_FAIL(i32) #1

declare dso_local i32 @clear_tv(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
