; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h__DictionaryItem.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h__DictionaryItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@DICT_FLAG_NONE_DEFAULT = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@DICT_FLAG_HAS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"O|O\00", align 1
@DICT_FLAG_RETURN_BOOL = common dso_local global i32 0, align 4
@Py_False = common dso_local global i32* null, align 8
@NUL = common dso_local global i64 0, align 8
@RAISE_NO_EMPTY_KEYS = common dso_local global i32 0, align 4
@PyExc_KeyError = common dso_local global i32 0, align 4
@Py_True = common dso_local global i32* null, align 8
@DICT_FLAG_POP = common dso_local global i32 0, align 4
@RAISE_LOCKED_DICTIONARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i32)* @_DictionaryItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_DictionaryItem(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DICT_FLAG_NONE_DEFAULT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32*, i32** @Py_None, align 8
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32* [ %21, %20 ], [ null, %22 ]
  store i32* %24, i32** %9, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %13, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @DICT_FLAG_HAS_DEFAULT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @PyArg_ParseTuple(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32** %8, i32** %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32* null, i32** %4, align 8
  br label %124

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %23
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @DICT_FLAG_RETURN_BOOL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32*, i32** @Py_False, align 8
  store i32* %46, i32** %9, align 8
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32*, i32** %8, align 8
  %49 = call i64* @StringToChars(i32* %48, i32** %15)
  store i64* %49, i64** %11, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32* null, i32** %4, align 8
  br label %124

52:                                               ; preds = %47
  %53 = load i64*, i64** %11, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NUL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @RAISE_NO_EMPTY_KEYS, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @Py_XDECREF(i32* %59)
  store i32* null, i32** %4, align 8
  br label %124

61:                                               ; preds = %52
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64*, i64** %11, align 8
  %65 = call i32* @hash_find(i32* %63, i64* %64)
  store i32* %65, i32** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @Py_XDECREF(i32* %66)
  %68 = load i32*, i32** %14, align 8
  %69 = call i64 @HASHITEM_EMPTY(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %61
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @Py_INCREF(i32* %75)
  %77 = load i32*, i32** %9, align 8
  store i32* %77, i32** %4, align 8
  br label %124

78:                                               ; preds = %71
  %79 = load i32, i32* @PyExc_KeyError, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @PyErr_SetObject(i32 %79, i32* %80)
  store i32* null, i32** %4, align 8
  br label %124

82:                                               ; preds = %61
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @DICT_FLAG_RETURN_BOOL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32*, i32** @Py_True, align 8
  store i32* %88, i32** %10, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @Py_INCREF(i32* %89)
  %91 = load i32*, i32** %10, align 8
  store i32* %91, i32** %4, align 8
  br label %124

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %14, align 8
  %95 = call %struct.TYPE_7__* @dict_lookup(i32* %94)
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %12, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = call i32* @ConvertToPyObject(i32* %97)
  store i32* %98, i32** %10, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %93
  store i32* null, i32** %4, align 8
  br label %124

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @DICT_FLAG_POP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @RAISE_LOCKED_DICTIONARY, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @Py_DECREF(i32* %113)
  store i32* null, i32** %4, align 8
  br label %124

115:                                              ; preds = %106
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @hash_remove(i32* %117, i32* %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %121 = call i32 @dictitem_free(%struct.TYPE_7__* %120)
  br label %122

122:                                              ; preds = %115, %101
  %123 = load i32*, i32** %10, align 8
  store i32* %123, i32** %4, align 8
  br label %124

124:                                              ; preds = %122, %111, %100, %87, %78, %74, %57, %51, %36
  %125 = load i32*, i32** %4, align 8
  ret i32* %125
}

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**, i32**) #1

declare dso_local i64* @StringToChars(i32*, i32**) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32* @hash_find(i32*, i64*) #1

declare dso_local i64 @HASHITEM_EMPTY(i32*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @dict_lookup(i32*) #1

declare dso_local i32* @ConvertToPyObject(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @hash_remove(i32*, i32*) #1

declare dso_local i32 @dictitem_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
