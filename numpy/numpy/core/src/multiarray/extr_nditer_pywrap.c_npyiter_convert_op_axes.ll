; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_convert_op_axes.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_pywrap.c_npyiter_convert_op_axes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"op_axes must be a tuple/list matching the number of ops\00", align 1
@Py_None = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Each entry of op_axes must be None or a tuple/list\00", align 1
@NPY_MAXDIMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Too many dimensions in op_axes\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Each entry of op_axes must have the same size\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"If op_axes is provided, at least one list of axes must be contained within it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32**, i32*)* @npyiter_convert_op_axes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_convert_op_axes(i32* %0, i32 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @PyTuple_Check(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @PyList_Check(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @PySequence_Size(i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %17
  %27 = load i32, i32* @PyExc_ValueError, align 4
  %28 = call i32 @PyErr_SetString(i32 %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %172

29:                                               ; preds = %21
  %30 = load i32*, i32** %9, align 8
  store i32 -1, i32* %30, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %161, %29
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %164

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32* @PySequence_GetItem(i32* %36, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %172

42:                                               ; preds = %35
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** @Py_None, align 8
  %45 = icmp eq i32* %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32**, i32*** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  br label %158

51:                                               ; preds = %42
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @PyTuple_Check(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @PyList_Check(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @PyExc_ValueError, align 4
  %61 = call i32 @PyErr_SetString(i32 %60, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @Py_DECREF(i32* %62)
  store i32 0, i32* %5, align 4
  br label %172

64:                                               ; preds = %55, %51
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @PySequence_Size(i32* %69)
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NPY_MAXDIMS, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32, i32* @PyExc_ValueError, align 4
  %78 = call i32 @PyErr_SetString(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @Py_DECREF(i32* %79)
  store i32 0, i32* %5, align 4
  br label %172

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @PySequence_Size(i32* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @PyExc_ValueError, align 4
  %90 = call i32 @PyErr_SetString(i32 %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @Py_DECREF(i32* %91)
  store i32 0, i32* %5, align 4
  br label %172

93:                                               ; preds = %82
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %154, %93
  %95 = load i32, i32* %12, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %157

99:                                               ; preds = %94
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32* @PySequence_GetItem(i32* %100, i32 %101)
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @Py_DECREF(i32* %106)
  store i32 0, i32* %5, align 4
  br label %172

108:                                              ; preds = %99
  %109 = load i32*, i32** %13, align 8
  %110 = load i32*, i32** @Py_None, align 8
  %111 = icmp eq i32* %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32**, i32*** %8, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 -1, i32* %120, align 4
  br label %151

121:                                              ; preds = %108
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @PyArray_PyIntAsInt(i32* %122)
  %124 = load i32**, i32*** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %123, i32* %131, align 4
  %132 = load i32**, i32*** %8, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %150

142:                                              ; preds = %121
  %143 = call i64 (...) @PyErr_Occurred()
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @Py_DECREF(i32* %146)
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @Py_DECREF(i32* %148)
  store i32 0, i32* %5, align 4
  br label %172

150:                                              ; preds = %142, %121
  br label %151

151:                                              ; preds = %150, %112
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @Py_DECREF(i32* %152)
  br label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %94

157:                                              ; preds = %94
  br label %158

158:                                              ; preds = %157, %46
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @Py_DECREF(i32* %159)
  br label %161

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %31

164:                                              ; preds = %31
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* @PyExc_ValueError, align 4
  %170 = call i32 @PyErr_SetString(i32 %169, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %172

171:                                              ; preds = %164
  store i32 1, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %168, %145, %105, %88, %76, %59, %41, %26
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @PyTuple_Check(i32*) #1

declare dso_local i32 @PyList_Check(i32*) #1

declare dso_local i32 @PySequence_Size(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyArray_PyIntAsInt(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
