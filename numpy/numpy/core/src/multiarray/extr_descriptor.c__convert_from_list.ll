; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_list.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__convert_from_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i32, i32, i32*, i32* }

@NPY_NEEDS_PYAPI = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"f%d\00", align 1
@NPY_FAIL = common dso_local global i32 0, align 4
@NPY_FROM_FIELDS = common dso_local global i8 0, align 1
@NPY_VOID = common dso_local global i32 0, align 4
@NPY_ALIGNED_STRUCT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i32)* @_convert_from_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @_convert_from_list(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %19 = load i8, i8* @NPY_NEEDS_PYAPI, align 1
  store i8 %19, i8* %17, align 1
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @PyList_GET_SIZE(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32* @PyList_GET_ITEM(i32* %22, i32 %24)
  store i32* %25, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i64 @PyBytes_Check(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i32*, i32** %12, align 8
  %31 = call i64 @PyBytes_GET_SIZE(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %29, %2
  store i32 0, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %176

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = call i32* @PyTuple_New(i32 %41)
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %176

46:                                               ; preds = %40
  %47 = call i32* (...) @PyDict_New()
  store i32* %47, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %130, %46
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %133

52:                                               ; preds = %48
  %53 = call i32* @PyTuple_New(i32 2)
  store i32* %53, i32** %13, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32* @PyUString_FromFormat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32* @PyList_GET_ITEM(i32* %59, i32 %60)
  %62 = call i32 @PyArray_DescrAlignConverter(i32* %61, %struct.TYPE_6__** %10)
  store i32 %62, i32* %15, align 4
  br label %68

63:                                               ; preds = %52
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32* @PyList_GET_ITEM(i32* %64, i32 %65)
  %67 = call i32 @PyArray_DescrConverter(i32* %66, %struct.TYPE_6__** %10)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @NPY_FAIL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @Py_DECREF(i32* %73)
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @Py_DECREF(i32* %75)
  br label %171

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 8
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @NPY_FROM_FIELDS, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %81, %83
  %85 = load i8, i8* %17, align 1
  %86 = sext i8 %85 to i32
  %87 = or i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %17, align 1
  %89 = load i32*, i32** %13, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = bitcast %struct.TYPE_6__* %90 to i32*
  %92 = call i32 @PyTuple_SET_ITEM(i32* %89, i32 0, i32* %91)
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %77
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @NPY_NEXT_ALIGNED_OFFSET(i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @PyArray_MAX(i32 %106, i32 %107)
  store i32 %108, i32* %16, align 4
  br label %109

109:                                              ; preds = %105, %77
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = call i32* @PyInt_FromLong(i64 %112)
  %114 = call i32 @PyTuple_SET_ITEM(i32* %110, i32 1, i32* %113)
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @PyDict_SetItem(i32* %115, i32* %116, i32* %117)
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @Py_DECREF(i32* %119)
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @PyTuple_SET_ITEM(i32* %121, i32 %122, i32* %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %109
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %48

133:                                              ; preds = %48
  %134 = load i32, i32* @NPY_VOID, align 4
  %135 = call %struct.TYPE_6__* @PyArray_DescrNewFromType(i32 %134)
  store %struct.TYPE_6__* %135, %struct.TYPE_6__** %11, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  store i32* %136, i32** %138, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  store i32* %139, i32** %141, align 8
  %142 = load i8, i8* %17, align 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i8 %142, i8* %144, align 8
  %145 = load i32, i32* %16, align 4
  %146 = icmp sgt i32 %145, 1
  br i1 %146, label %147, label %151

147:                                              ; preds = %133
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @NPY_NEXT_ALIGNED_OFFSET(i32 %148, i32 %149)
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %133
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load i8, i8* @NPY_ALIGNED_STRUCT, align 1
  %156 = sext i8 %155 to i32
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i8, i8* %158, align 8
  %160 = sext i8 %159 to i32
  %161 = or i32 %160, %156
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %158, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %154, %151
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %170, %struct.TYPE_6__** %3, align 8
  br label %176

171:                                              ; preds = %72
  %172 = load i32*, i32** %14, align 8
  %173 = call i32 @Py_DECREF(i32* %172)
  %174 = load i32*, i32** %9, align 8
  %175 = call i32 @Py_DECREF(i32* %174)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %176

176:                                              ; preds = %171, %166, %45, %39
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %177
}

declare dso_local i32 @PyList_GET_SIZE(i32*) #1

declare dso_local i32* @PyList_GET_ITEM(i32*, i32) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i64 @PyBytes_GET_SIZE(i32*) #1

declare dso_local i32* @PyTuple_New(i32) #1

declare dso_local i32* @PyDict_New(...) #1

declare dso_local i32* @PyUString_FromFormat(i8*, i32) #1

declare dso_local i32 @PyArray_DescrAlignConverter(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @PyArray_DescrConverter(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyTuple_SET_ITEM(i32*, i32, i32*) #1

declare dso_local i32 @NPY_NEXT_ALIGNED_OFFSET(i32, i32) #1

declare dso_local i32 @PyArray_MAX(i32, i32) #1

declare dso_local i32* @PyInt_FromLong(i64) #1

declare dso_local i32 @PyDict_SetItem(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @PyArray_DescrNewFromType(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
