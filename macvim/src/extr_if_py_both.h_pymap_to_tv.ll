; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_pymap_to_tv.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_pymap_to_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@VAR_DICT = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@RAISE_NO_EMPTY_KEYS = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i32*)* @pymap_to_tv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pymap_to_tv(i32* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = call %struct.TYPE_18__* (...) @py_dict_alloc()
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %8, align 8
  %17 = icmp ne %struct.TYPE_18__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %152

19:                                               ; preds = %3
  %20 = load i32, i32* @VAR_DICT, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @PyMapping_Keys(i32* %27)
  store i32* %28, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %32 = call i32 @dict_unref(%struct.TYPE_18__* %31)
  store i32 -1, i32* %4, align 4
  br label %152

33:                                               ; preds = %19
  %34 = load i32*, i32** %11, align 8
  %35 = call i32* @PyObject_GetIter(i32* %34)
  store i32* %35, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = call i32 @dict_unref(%struct.TYPE_18__* %38)
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @Py_DECREF(i32* %40)
  store i32 -1, i32* %4, align 4
  br label %152

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @Py_DECREF(i32* %43)
  br label %45

45:                                               ; preds = %144, %42
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @PyIter_Next(i32* %46)
  store i32* %47, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %145

49:                                               ; preds = %45
  %50 = load i32*, i32** %13, align 8
  %51 = call i64* @StringToChars(i32* %50, i32** %15)
  store i64* %51, i64** %9, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @Py_DECREF(i32* %54)
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @Py_DECREF(i32* %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = call i32 @dict_unref(%struct.TYPE_18__* %58)
  store i32 -1, i32* %4, align 4
  br label %152

60:                                               ; preds = %49
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NUL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @Py_DECREF(i32* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @Py_DECREF(i32* %68)
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @Py_XDECREF(i32* %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = call i32 @dict_unref(%struct.TYPE_18__* %72)
  %74 = load i32, i32* @RAISE_NO_EMPTY_KEYS, align 4
  store i32 -1, i32* %4, align 4
  br label %152

75:                                               ; preds = %60
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32* @PyObject_GetItem(i32* %76, i32* %77)
  store i32* %78, i32** %14, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @Py_DECREF(i32* %81)
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @Py_DECREF(i32* %83)
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @Py_XDECREF(i32* %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = call i32 @dict_unref(%struct.TYPE_18__* %87)
  store i32 -1, i32* %4, align 4
  br label %152

89:                                               ; preds = %75
  %90 = load i64*, i64** %9, align 8
  %91 = call %struct.TYPE_17__* @dictitem_alloc(i64* %90)
  store %struct.TYPE_17__* %91, %struct.TYPE_17__** %10, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @Py_DECREF(i32* %92)
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @Py_XDECREF(i32* %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = icmp eq %struct.TYPE_17__* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @Py_DECREF(i32* %99)
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @Py_DECREF(i32* %101)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = call i32 @dict_unref(%struct.TYPE_18__* %103)
  %105 = call i32 (...) @PyErr_NoMemory()
  store i32 -1, i32* %4, align 4
  br label %152

106:                                              ; preds = %89
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @_ConvertFromPyObject(i32* %110, %struct.TYPE_14__* %112, i32* %113)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %125

116:                                              ; preds = %106
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @Py_DECREF(i32* %117)
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @Py_DECREF(i32* %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %122 = call i32 @vim_free(%struct.TYPE_17__* %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = call i32 @dict_unref(%struct.TYPE_18__* %123)
  store i32 -1, i32* %4, align 4
  br label %152

125:                                              ; preds = %106
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @Py_DECREF(i32* %126)
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = call i64 @dict_add(%struct.TYPE_18__* %128, %struct.TYPE_17__* %129)
  %131 = load i64, i64* @FAIL, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %125
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @RAISE_KEY_ADD_FAIL(i32 %136)
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @Py_DECREF(i32* %138)
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = call i32 @dictitem_free(%struct.TYPE_17__* %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %143 = call i32 @dict_unref(%struct.TYPE_18__* %142)
  store i32 -1, i32* %4, align 4
  br label %152

144:                                              ; preds = %125
  br label %45

145:                                              ; preds = %45
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @Py_DECREF(i32* %146)
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %149, align 4
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %145, %133, %116, %98, %80, %65, %53, %37, %30, %18
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_18__* @py_dict_alloc(...) #1

declare dso_local i32* @PyMapping_Keys(i32*) #1

declare dso_local i32 @dict_unref(%struct.TYPE_18__*) #1

declare dso_local i32* @PyObject_GetIter(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32* @PyIter_Next(i32*) #1

declare dso_local i64* @StringToChars(i32*, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32* @PyObject_GetItem(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @dictitem_alloc(i64*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @_ConvertFromPyObject(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @vim_free(%struct.TYPE_17__*) #1

declare dso_local i64 @dict_add(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @RAISE_KEY_ADD_FAIL(i32) #1

declare dso_local i32 @dictitem_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
