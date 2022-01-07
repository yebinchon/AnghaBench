; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_einsum_sub_op_from_str.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_einsum_sub_op_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"must specify the einstein sum subscripts string and at least one operand\00", align 1
@NPY_MAXARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"too many operands\00", align 1
@NPY_ARRAY_ENSUREARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i8**, i32**)* @einsum_sub_op_from_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @einsum_sub_op_from_str(i32* %0, i32** %1, i8** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @PyTuple_GET_SIZE(i32* %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @PyExc_ValueError, align 4
  %21 = call i32 @PyErr_SetString(i32 %20, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %123

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @NPY_MAXARGS, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @PyExc_ValueError, align 4
  %28 = call i32 @PyErr_SetString(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %123

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @PyTuple_GET_ITEM(i32* %31, i32 0)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i64 @PyUnicode_Check(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32*, i32** %12, align 8
  %38 = call i32* @PyUnicode_AsASCIIString(i32* %37)
  %39 = load i32**, i32*** %7, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %123

44:                                               ; preds = %36
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %12, align 8
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i32*, i32** %12, align 8
  %49 = call i8* @PyBytes_AsString(i32* %48)
  %50 = load i8**, i8*** %8, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32**, i32*** %7, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @Py_XDECREF(i32* %56)
  %58 = load i32**, i32*** %7, align 8
  store i32* null, i32** %58, align 8
  store i32 -1, i32* %5, align 4
  br label %123

59:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %69, %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %60

72:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32* @PyTuple_GET_ITEM(i32* %78, i32 %80)
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* @NPY_ARRAY_ENSUREARRAY, align 4
  %84 = call i64 @PyArray_FROM_OF(i32* %82, i32 %83)
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32**, i32*** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  store i32* %85, i32** %89, align 8
  %90 = load i32**, i32*** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %77
  br label %103

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %73

101:                                              ; preds = %73
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %123

103:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  br label %104

104:                                              ; preds = %119, %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i32**, i32*** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @Py_XDECREF(i32* %113)
  %115 = load i32**, i32*** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %104

122:                                              ; preds = %104
  store i32 -1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %101, %54, %43, %26, %19
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @PyTuple_GET_SIZE(i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32* @PyTuple_GET_ITEM(i32*, i32) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i8* @PyBytes_AsString(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @PyArray_FROM_OF(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
