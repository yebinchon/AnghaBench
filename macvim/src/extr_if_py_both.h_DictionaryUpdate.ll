; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_DictionaryUpdate.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_DictionaryUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }

@RAISE_LOCKED_DICTIONARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"|O\00", align 1
@Py_None = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"expected sequence element of size 2, but got sequence of size %d\00", align 1
@VAR_UNKNOWN = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__*, i32*, i32*)* @DictionaryUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DictionaryUpdate(%struct.TYPE_20__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %8, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @RAISE_LOCKED_DICTIONARY, align 4
  store i32* null, i32** %4, align 8
  br label %181

28:                                               ; preds = %3
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @ConvertFromPyMapping(i32* %32, %struct.TYPE_17__* %9)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  br label %181

36:                                               ; preds = %31
  %37 = call i32 (...) @VimTryStart()
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dict_extend(%struct.TYPE_19__* %40, i32 %43, i32* bitcast ([6 x i8]* @.str to i32*))
  %45 = call i32 @clear_tv(%struct.TYPE_17__* %9)
  %46 = call i64 (...) @VimTryEnd()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32* null, i32** %4, align 8
  br label %181

49:                                               ; preds = %36
  br label %177

50:                                               ; preds = %28
  store i32* null, i32** %10, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PyArg_ParseTuple(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32** %10)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32* null, i32** %4, align 8
  br label %181

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** @Py_None, align 8
  %60 = call i32 @Py_INCREF(i32* %59)
  %61 = load i32*, i32** @Py_None, align 8
  store i32* %61, i32** %4, align 8
  br label %181

62:                                               ; preds = %55
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @PyObject_HasAttrString(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32* @DictionaryUpdate(%struct.TYPE_20__* %67, i32* null, i32* %68)
  store i32* %69, i32** %4, align 8
  br label %181

70:                                               ; preds = %62
  %71 = load i32*, i32** %10, align 8
  %72 = call i32* @PyObject_GetIter(i32* %71)
  store i32* %72, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32* null, i32** %4, align 8
  br label %181

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %168, %75
  %77 = load i32*, i32** %11, align 8
  %78 = call i32* @PyIter_Next(i32* %77)
  store i32* %78, i32** %12, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %169

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = call i32* @PySequence_Fast(i32* %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32* %82, i32** %13, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @Py_DECREF(i32* %85)
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @Py_DECREF(i32* %87)
  store i32* null, i32** %4, align 8
  br label %181

89:                                               ; preds = %80
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @Py_DECREF(i32* %90)
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @PySequence_Fast_GET_SIZE(i32* %92)
  %94 = icmp ne i32 %93, 2
  br i1 %94, label %95, label %105

95:                                               ; preds = %89
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @Py_DECREF(i32* %96)
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @Py_DECREF(i32* %98)
  %100 = load i32, i32* @PyExc_ValueError, align 4
  %101 = call i32 @N_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @PySequence_Fast_GET_SIZE(i32* %102)
  %104 = call i32 @PyErr_FORMAT(i32 %100, i32 %101, i32 %103)
  store i32* null, i32** %4, align 8
  br label %181

105:                                              ; preds = %89
  %106 = load i32*, i32** %13, align 8
  %107 = call i32* @PySequence_Fast_GET_ITEM(i32* %106, i32 0)
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = call i32* @StringToChars(i32* %108, i32** %16)
  store i32* %109, i32** %17, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %105
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @Py_DECREF(i32* %112)
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @Py_DECREF(i32* %114)
  store i32* null, i32** %4, align 8
  br label %181

116:                                              ; preds = %105
  %117 = load i32*, i32** %17, align 8
  %118 = call %struct.TYPE_18__* @dictitem_alloc(i32* %117)
  store %struct.TYPE_18__* %118, %struct.TYPE_18__** %18, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = call i32 @Py_XDECREF(i32* %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %122 = icmp eq %struct.TYPE_18__* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @Py_DECREF(i32* %124)
  %126 = load i32*, i32** %11, align 8
  %127 = call i32 @Py_DECREF(i32* %126)
  %128 = call i32 (...) @PyErr_NoMemory()
  store i32* null, i32** %4, align 8
  br label %181

129:                                              ; preds = %116
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @VAR_UNKNOWN, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i32* @PySequence_Fast_GET_ITEM(i32* %137, i32 1)
  store i32* %138, i32** %15, align 8
  %139 = load i32*, i32** %15, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = call i32 @ConvertFromPyObject(i32* %139, %struct.TYPE_15__* %141)
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %151

144:                                              ; preds = %129
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @Py_DECREF(i32* %145)
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @Py_DECREF(i32* %147)
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %150 = call i32 @dictitem_free(%struct.TYPE_18__* %149)
  store i32* null, i32** %4, align 8
  br label %181

151:                                              ; preds = %129
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @Py_DECREF(i32* %152)
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %156 = call i64 @dict_add(%struct.TYPE_19__* %154, %struct.TYPE_18__* %155)
  %157 = load i64, i64* @FAIL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %151
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @RAISE_KEY_ADD_FAIL(i32 %162)
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @Py_DECREF(i32* %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %167 = call i32 @dictitem_free(%struct.TYPE_18__* %166)
  store i32* null, i32** %4, align 8
  br label %181

168:                                              ; preds = %151
  br label %76

169:                                              ; preds = %76
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @Py_DECREF(i32* %170)
  %172 = call i64 (...) @PyErr_Occurred()
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32* null, i32** %4, align 8
  br label %181

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175
  br label %177

177:                                              ; preds = %176, %49
  %178 = load i32*, i32** @Py_None, align 8
  %179 = call i32 @Py_INCREF(i32* %178)
  %180 = load i32*, i32** @Py_None, align 8
  store i32* %180, i32** %4, align 8
  br label %181

181:                                              ; preds = %177, %174, %159, %144, %123, %111, %95, %84, %74, %66, %58, %54, %48, %35, %26
  %182 = load i32*, i32** %4, align 8
  ret i32* %182
}

declare dso_local i32 @ConvertFromPyMapping(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i32 @dict_extend(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @clear_tv(%struct.TYPE_17__*) #1

declare dso_local i64 @VimTryEnd(...) #1

declare dso_local i32 @PyArg_ParseTuple(i32*, i8*, i32**) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyObject_HasAttrString(i32*, i8*) #1

declare dso_local i32* @PyObject_GetIter(i32*) #1

declare dso_local i32* @PyIter_Next(i32*) #1

declare dso_local i32* @PySequence_Fast(i32*, i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PySequence_Fast_GET_SIZE(i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @PySequence_Fast_GET_ITEM(i32*, i32) #1

declare dso_local i32* @StringToChars(i32*, i32**) #1

declare dso_local %struct.TYPE_18__* @dictitem_alloc(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @ConvertFromPyObject(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dictitem_free(%struct.TYPE_18__*) #1

declare dso_local i64 @dict_add(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @RAISE_KEY_ADD_FAIL(i32) #1

declare dso_local i64 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
