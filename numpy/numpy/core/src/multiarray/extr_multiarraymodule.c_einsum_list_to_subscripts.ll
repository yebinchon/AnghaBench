; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_einsum_list_to_subscripts.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_multiarraymodule.c_einsum_list_to_subscripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"the subscripts for each operand must be a list or a tuple\00", align 1
@Py_Ellipsis = common dso_local global i32* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"each subscripts list may have only one ellipsis\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"subscripts list is too long\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"subscript is not within the valid range [0, 52)\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"each subscript must be either an integer or an ellipsis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @einsum_list_to_subscripts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @einsum_list_to_subscripts(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @PySequence_Fast(i32* %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %147

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @PySequence_Size(i32* %21)
  store i64 %22, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %140, %20
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %143

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32* @PySequence_Fast_GET_ITEM(i32* %28, i64 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** @Py_Ellipsis, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %34, label %68

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @PyExc_ValueError, align 4
  %39 = call i32 @PyErr_SetString(i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @Py_DECREF(i32* %40)
  store i32 -1, i32* %4, align 4
  br label %147

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 3
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @PyExc_ValueError, align 4
  %49 = call i32 @PyErr_SetString(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @Py_DECREF(i32* %50)
  store i32 -1, i32* %4, align 4
  br label %147

52:                                               ; preds = %42
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 46, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 46, i8* %62, align 1
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 46, i8* %67, align 1
  store i32 1, i32* %8, align 4
  br label %139

68:                                               ; preds = %27
  %69 = load i32*, i32** %12, align 8
  %70 = call i64 @PyInt_Check(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32*, i32** %12, align 8
  %74 = call i64 @PyLong_Check(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %133

76:                                               ; preds = %72, %68
  %77 = load i32*, i32** %12, align 8
  %78 = call i64 @PyInt_AsLong(i32* %77)
  store i64 %78, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* %7, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* @PyExc_ValueError, align 4
  %85 = call i32 @PyErr_SetString(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @Py_DECREF(i32* %86)
  store i32 -1, i32* %4, align 4
  br label %147

88:                                               ; preds = %76
  %89 = load i64, i64* %13, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, i32* %14, align 4
  br label %124

92:                                               ; preds = %88
  %93 = load i64, i64* %13, align 8
  %94 = icmp slt i64 %93, 26
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i8
  %98 = sext i8 %97 to i32
  %99 = add nsw i32 65, %98
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 %100, i8* %105, align 1
  br label %123

106:                                              ; preds = %92
  %107 = load i64, i64* %13, align 8
  %108 = icmp slt i64 %107, 52
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i64, i64* %13, align 8
  %111 = trunc i64 %110 to i8
  %112 = sext i8 %111 to i32
  %113 = add nsw i32 97, %112
  %114 = sub nsw i32 %113, 26
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %115, i8* %120, align 1
  br label %122

121:                                              ; preds = %106
  store i32 1, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %109
  br label %123

123:                                              ; preds = %122, %95
  br label %124

124:                                              ; preds = %123, %91
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* @PyExc_ValueError, align 4
  %129 = call i32 @PyErr_SetString(i32 %128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @Py_DECREF(i32* %130)
  store i32 -1, i32* %4, align 4
  br label %147

132:                                              ; preds = %124
  br label %138

133:                                              ; preds = %72
  %134 = load i32, i32* @PyExc_ValueError, align 4
  %135 = call i32 @PyErr_SetString(i32 %134, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @Py_DECREF(i32* %136)
  store i32 -1, i32* %4, align 4
  br label %147

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %52
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %23

143:                                              ; preds = %23
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @Py_DECREF(i32* %144)
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %133, %127, %83, %47, %37, %19
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32* @PySequence_Fast(i32*, i8*) #1

declare dso_local i64 @PySequence_Size(i32*) #1

declare dso_local i32* @PySequence_Fast_GET_ITEM(i32*, i64) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i64 @PyInt_AsLong(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
