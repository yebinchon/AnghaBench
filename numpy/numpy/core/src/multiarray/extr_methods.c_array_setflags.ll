; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_setflags.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@array_setflags.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"uic\00", align 1
@Py_None = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"|OOO:setflags\00", align 1
@NPY_ARRAY_ALIGNED = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"cannot set aligned flag of mis-aligned array to True\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"cannot set WRITEBACKIFCOPY flag to True\00", align 1
@NPY_ARRAY_WRITEBACKIFCOPY = common dso_local global i32 0, align 4
@NPY_ARRAY_UPDATEIFCOPY = common dso_local global i32 0, align 4
@NPY_ARRAY_OWNDATA = common dso_local global i32 0, align 4
@NPY_ARRAY_WRITEABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [108 x i8] c"making a non-writeable array writeable is deprecated for arrays without a base which do not own their data.\00", align 1
@NPY_ARRAY_WARN_ON_WRITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"cannot set WRITEABLE flag to True of this array\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_setflags(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** @Py_None, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** @Py_None, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** @Py_None, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PyArray_FLAGS(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @PyArg_ParseTupleAndKeywords(i32* %20, i32* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @array_setflags.kwlist, i64 0, i64 0), i32** %8, i32** %9, i32** %10)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %133

25:                                               ; preds = %3
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** @Py_None, align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @PyObject_Not(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @NPY_ARRAY_ALIGNED, align 4
  %36 = call i32 @PyArray_CLEARFLAGS(i32* %34, i32 %35)
  br label %49

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @IsAligned(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @NPY_ARRAY_ALIGNED, align 4
  %44 = call i32 @PyArray_ENABLEFLAGS(i32* %42, i32 %43)
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @PyExc_ValueError, align 4
  %47 = call i32 @PyErr_SetString(i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %133

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** @Py_None, align 8
  %53 = icmp ne i32* %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load i32*, i32** %10, align 8
  %56 = call i64 @PyObject_IsTrue(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @PyExc_ValueError, align 4
  %63 = call i32 @PyErr_SetString(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %133

64:                                               ; preds = %54
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @NPY_ARRAY_WRITEBACKIFCOPY, align 4
  %67 = call i32 @PyArray_CLEARFLAGS(i32* %65, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @NPY_ARRAY_UPDATEIFCOPY, align 4
  %70 = call i32 @PyArray_CLEARFLAGS(i32* %68, i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @Py_XDECREF(i32* %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** @Py_None, align 8
  %81 = icmp ne i32* %79, %80
  br i1 %81, label %82, label %131

82:                                               ; preds = %78
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @PyObject_IsTrue(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %123

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = call i64 @_IsWriteable(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i32*, i32** %5, align 8
  %92 = call i32* @PyArray_BASE(i32* %91)
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* @NPY_ARRAY_OWNDATA, align 4
  %97 = call i32 @PyArray_CHKFLAGS(i32* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %102 = call i32 @PyArray_CHKFLAGS(i32* %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = call i64 @DEPRECATE(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32* null, i32** %4, align 8
  br label %133

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108, %99, %94, %90
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %112 = call i32 @PyArray_ENABLEFLAGS(i32* %110, i32 %111)
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @NPY_ARRAY_WARN_ON_WRITE, align 4
  %115 = call i32 @PyArray_CLEARFLAGS(i32* %113, i32 %114)
  br label %122

116:                                              ; preds = %86
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @PyExc_ValueError, align 4
  %121 = call i32 @PyErr_SetString(i32 %120, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %133

122:                                              ; preds = %109
  br label %130

123:                                              ; preds = %82
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* @NPY_ARRAY_WRITEABLE, align 4
  %126 = call i32 @PyArray_CLEARFLAGS(i32* %124, i32 %125)
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* @NPY_ARRAY_WARN_ON_WRITE, align 4
  %129 = call i32 @PyArray_CLEARFLAGS(i32* %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %122
  br label %131

131:                                              ; preds = %130, %78
  %132 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %133

133:                                              ; preds = %131, %116, %107, %58, %45, %24
  %134 = load i32*, i32** %4, align 8
  ret i32* %134
}

declare dso_local i32 @PyArray_FLAGS(i32*) #1

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i32**, i32**) #1

declare dso_local i64 @PyObject_Not(i32*) #1

declare dso_local i32 @PyArray_CLEARFLAGS(i32*, i32) #1

declare dso_local i64 @IsAligned(i32*) #1

declare dso_local i32 @PyArray_ENABLEFLAGS(i32*, i32) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i64 @PyObject_IsTrue(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @_IsWriteable(i32*) #1

declare dso_local i32* @PyArray_BASE(i32*) #1

declare dso_local i32 @PyArray_CHKFLAGS(i32*, i32) #1

declare dso_local i64 @DEPRECATE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
