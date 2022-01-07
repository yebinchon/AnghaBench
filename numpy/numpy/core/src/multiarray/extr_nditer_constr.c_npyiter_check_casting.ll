; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_casting.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_nditer_constr.c_npyiter_check_casting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"Iterator: Checking casting for operand %d\0A\00", align 1
@NPY_OP_ITFLAG_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Iterator operand %d dtype could not be cast from \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c" according to the rule %s\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@NPY_OP_ITFLAG_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Iterator requested dtype could not be cast from \00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c", the operand %d dtype, according to the rule %s\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"Iterator: Setting NPY_OP_ITFLAG_CAST because the types aren't equivalent\0A\00", align 1
@NPY_OP_ITFLAG_CAST = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32**, i32, i32*)* @npyiter_check_casting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npyiter_check_casting(i32 %0, i32** %1, i32** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32** %1, i32*** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %159, %5
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %162

19:                                               ; preds = %15
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @NPY_IT_DBG_PRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32**, i32*** %8, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %158

28:                                               ; preds = %19
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @PyArray_DESCR(i32* %33)
  %35 = load i32**, i32*** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @PyArray_EquivTypes(i64 %34, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %158, label %42

42:                                               ; preds = %28
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NPY_OP_ITFLAG_READ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %42
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32**, i32*** %9, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @PyArray_CanCastArrayTo(i32* %56, i32* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %12, align 4
  %67 = call i32* (i8*, i32, ...) @PyUString_FromFormat(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store i32* %67, i32** %13, align 8
  %68 = load i32**, i32*** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i64 @PyArray_DESCR(i32* %72)
  %74 = inttoptr i64 %73 to i32*
  %75 = call i32* @PyObject_Repr(i32* %74)
  %76 = call i32 @PyUString_ConcatAndDel(i32** %13, i32* %75)
  %77 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @PyUString_ConcatAndDel(i32** %13, i32* %77)
  %79 = load i32**, i32*** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = call i32* @PyObject_Repr(i32* %83)
  %85 = call i32 @PyUString_ConcatAndDel(i32** %13, i32* %84)
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @npyiter_casting_to_string(i32 %86)
  %88 = call i32* (i8*, i32, ...) @PyUString_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = call i32 @PyUString_ConcatAndDel(i32** %13, i32* %88)
  %90 = load i32, i32* @PyExc_TypeError, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @PyErr_SetObject(i32 %90, i32* %91)
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @Py_DECREF(i32* %93)
  store i32 0, i32* %6, align 4
  br label %163

95:                                               ; preds = %51, %42
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NPY_OP_ITFLAG_WRITE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %149

104:                                              ; preds = %95
  %105 = load i32**, i32*** %9, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32**, i32*** %8, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @PyArray_DESCR(i32* %114)
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @PyArray_CanCastTypeTo(i32* %109, i64 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %149, label %119

119:                                              ; preds = %104
  %120 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32* %120, i32** %14, align 8
  %121 = load i32**, i32*** %9, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = call i32* @PyObject_Repr(i32* %125)
  %127 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %126)
  %128 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %129 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %128)
  %130 = load i32**, i32*** %8, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @PyArray_DESCR(i32* %134)
  %136 = inttoptr i64 %135 to i32*
  %137 = call i32* @PyObject_Repr(i32* %136)
  %138 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %137)
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @npyiter_casting_to_string(i32 %140)
  %142 = call i32* (i8*, i32, ...) @PyUString_FromFormat(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %139, i32 %141)
  %143 = call i32 @PyUString_ConcatAndDel(i32** %14, i32* %142)
  %144 = load i32, i32* @PyExc_TypeError, align 4
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @PyErr_SetObject(i32 %144, i32* %145)
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @Py_DECREF(i32* %147)
  store i32 0, i32* %6, align 4
  br label %163

149:                                              ; preds = %104, %95
  %150 = call i32 @NPY_IT_DBG_PRINT(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  %151 = load i32, i32* @NPY_OP_ITFLAG_CAST, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %149, %28, %19
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %15

162:                                              ; preds = %15
  store i32 1, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %119, %65
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @NPY_IT_DBG_PRINT1(i8*, i32) #1

declare dso_local i32 @PyArray_EquivTypes(i64, i32*) #1

declare dso_local i64 @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyArray_CanCastArrayTo(i32*, i32*, i32) #1

declare dso_local i32* @PyUString_FromFormat(i8*, i32, ...) #1

declare dso_local i32 @PyUString_ConcatAndDel(i32**, i32*) #1

declare dso_local i32* @PyObject_Repr(i32*) #1

declare dso_local i32* @PyUString_FromString(i8*) #1

declare dso_local i32 @npyiter_casting_to_string(i32) #1

declare dso_local i32 @PyErr_SetObject(i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyArray_CanCastTypeTo(i32*, i64, i32) #1

declare dso_local i32 @NPY_IT_DBG_PRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
