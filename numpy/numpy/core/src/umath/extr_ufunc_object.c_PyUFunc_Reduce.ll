; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_PyUFunc_Reduce.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_PyUFunc_Reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_MAXDIMS = common dso_local global i32 0, align 4
@PyUFunc_Reduce.NoValue = internal global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0AEvaluating ufunc %s.reduce\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"numpy\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_NoValue\00", align 1
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"duplicate value in 'axis'\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@Py_None = common dso_local global i32* null, align 8
@NPY_UNSAFE_CASTING = common dso_local global i32 0, align 4
@reduce_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32, i32*, i32*, i32, i32*, i32*)* @PyUFunc_Reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PyUFunc_Reduce(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %33 = load i32, i32* @NPY_MAXDIMS, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %23, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %24, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i8* @ufunc_get_name_cstr(i32* %37)
  store i8* %38, i8** %28, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %39 = load i8*, i8** %28, align 8
  %40 = call i32 @NPY_UF_DBG_PRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i32 @npy_cache_import(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32** @PyUFunc_Reduce.NoValue)
  %42 = load i32*, i32** @PyUFunc_Reduce.NoValue, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %9
  store i32* null, i32** %10, align 8
  store i32 1, i32* %31, align 4
  br label %147

45:                                               ; preds = %9
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @PyArray_NDIM(i32* %46)
  store i32 %47, i32* %21, align 4
  %48 = load i32, i32* %21, align 4
  %49 = call i32 @memset(i32* %36, i32 0, i32 %48)
  store i32 0, i32* %20, align 4
  br label %50

50:                                               ; preds = %72, %45
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %32, align 4
  %60 = load i32, i32* %32, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %36, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @PyExc_ValueError, align 4
  %67 = call i32 @PyErr_SetString(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %10, align 8
  store i32 1, i32* %31, align 4
  br label %147

68:                                               ; preds = %54
  %69 = load i32, i32* %32, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %36, i64 %70
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %20, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %20, align 4
  br label %50

75:                                               ; preds = %50
  %76 = call i64 @_get_bufsize_errmask(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %29, i32* %30)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32* null, i32** %10, align 8
  store i32 1, i32* %31, align 4
  br label %147

79:                                               ; preds = %75
  %80 = load i32*, i32** %11, align 8
  %81 = call i32* @_get_identity(i32* %80, i32* %22)
  store i32* %81, i32** %27, align 8
  %82 = load i32*, i32** %27, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32* null, i32** %10, align 8
  store i32 1, i32* %31, align 4
  br label %147

85:                                               ; preds = %79
  %86 = load i32*, i32** %18, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %18, align 8
  %90 = load i32*, i32** @PyUFunc_Reduce.NoValue, align 8
  %91 = icmp eq i32* %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %88, %85
  %93 = load i32*, i32** %27, align 8
  store i32* %93, i32** %18, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = load i32*, i32** @Py_None, align 8
  %96 = icmp ne i32* %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load i32*, i32** %12, align 8
  %99 = call i64 @PyArray_ISOBJECT(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i32*, i32** %12, align 8
  %103 = call i64 @PyArray_SIZE(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32*, i32** %18, align 8
  %107 = call i32 @Py_DECREF(i32* %106)
  %108 = load i32*, i32** @Py_None, align 8
  store i32* %108, i32** %18, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @Py_INCREF(i32* %109)
  br label %111

111:                                              ; preds = %105, %101, %97, %92
  br label %117

112:                                              ; preds = %88
  %113 = load i32*, i32** %27, align 8
  %114 = call i32 @Py_DECREF(i32* %113)
  %115 = load i32*, i32** %18, align 8
  %116 = call i32 @Py_INCREF(i32* %115)
  br label %117

117:                                              ; preds = %112, %111
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = call i64 @reduce_type_resolver(i32* %118, i32* %119, i32* %120, i32** %25)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32*, i32** %18, align 8
  %125 = call i32 @Py_DECREF(i32* %124)
  store i32* null, i32** %10, align 8
  store i32 1, i32* %31, align 4
  br label %147

126:                                              ; preds = %117
  %127 = load i32*, i32** %12, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32*, i32** %19, align 8
  %130 = load i32*, i32** %25, align 8
  %131 = load i32*, i32** %25, align 8
  %132 = load i32, i32* @NPY_UNSAFE_CASTING, align 4
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32*, i32** %18, align 8
  %136 = load i32, i32* @reduce_loop, align 4
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %29, align 4
  %139 = load i8*, i8** %28, align 8
  %140 = load i32, i32* %30, align 4
  %141 = call i32* @PyUFunc_ReduceWrapper(i32* %127, i32* %128, i32* %129, i32* %130, i32* %131, i32 %132, i32* %36, i32 %133, i32 %134, i32 0, i32* %135, i32 %136, i32* %137, i32 %138, i8* %139, i32 %140)
  store i32* %141, i32** %26, align 8
  %142 = load i32*, i32** %25, align 8
  %143 = call i32 @Py_DECREF(i32* %142)
  %144 = load i32*, i32** %18, align 8
  %145 = call i32 @Py_DECREF(i32* %144)
  %146 = load i32*, i32** %26, align 8
  store i32* %146, i32** %10, align 8
  store i32 1, i32* %31, align 4
  br label %147

147:                                              ; preds = %126, %123, %84, %78, %65, %44
  %148 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32*, i32** %10, align 8
  ret i32* %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @ufunc_get_name_cstr(i32*) #2

declare dso_local i32 @NPY_UF_DBG_PRINT1(i8*, i8*) #2

declare dso_local i32 @npy_cache_import(i8*, i8*, i32**) #2

declare dso_local i32 @PyArray_NDIM(i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @PyErr_SetString(i32, i8*) #2

declare dso_local i64 @_get_bufsize_errmask(i32*, i8*, i32*, i32*) #2

declare dso_local i32* @_get_identity(i32*, i32*) #2

declare dso_local i64 @PyArray_ISOBJECT(i32*) #2

declare dso_local i64 @PyArray_SIZE(i32*) #2

declare dso_local i32 @Py_DECREF(i32*) #2

declare dso_local i32 @Py_INCREF(i32*) #2

declare dso_local i64 @reduce_type_resolver(i32*, i32*, i32*, i32**) #2

declare dso_local i32* @PyUFunc_ReduceWrapper(i32*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
