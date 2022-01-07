; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_StringToLine.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_StringToLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENC_OPT = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"expected str() or unicode() instance, but got %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"string cannot contain newlines\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @StringToLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @StringToLine(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @PyBytes_Check(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @PyBytes_AsStringAndSize(i32* %14, i8** %4, i32* %7)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %13
  store i8* null, i8** %2, align 8
  br label %124

21:                                               ; preds = %17
  br label %50

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @PyUnicode_Check(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @ENC_OPT, align 4
  %29 = call i32* @PyUnicode_AsEncodedString(i32* %27, i32 %28, i32* null)
  store i32* %29, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %124

32:                                               ; preds = %26
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @PyBytes_AsStringAndSize(i32* %33, i8** %4, i32* %7)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %32
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @Py_DECREF(i32* %40)
  store i8* null, i8** %2, align 8
  br label %124

42:                                               ; preds = %36
  br label %49

43:                                               ; preds = %22
  %44 = load i32, i32* @PyExc_TypeError, align 4
  %45 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @Py_TYPE_NAME(i32* %46)
  %48 = call i32 @PyErr_FORMAT(i32 %44, i32 %45, i32 %47)
  store i8* null, i8** %2, align 8
  br label %124

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @memchr(i8* %51, i8 signext 10, i32 %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  %63 = icmp eq i8* %57, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %7, align 4
  br label %72

67:                                               ; preds = %56
  %68 = call i32 @N_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @PyErr_SET_VIM(i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @Py_XDECREF(i32* %70)
  store i8* null, i8** %2, align 8
  br label %124

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i64 @alloc(i32 %75)
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %5, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = call i32 (...) @PyErr_NoMemory()
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @Py_XDECREF(i32* %82)
  store i8* null, i8** %2, align 8
  br label %124

84:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %113, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 10, i8* %101, align 1
  br label %112

102:                                              ; preds = %89
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 %107, i8* %111, align 1
  br label %112

112:                                              ; preds = %102, %97
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %85

116:                                              ; preds = %85
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @Py_XDECREF(i32* %121)
  %123 = load i8*, i8** %5, align 8
  store i8* %123, i8** %2, align 8
  br label %124

124:                                              ; preds = %116, %80, %67, %43, %39, %31, %20
  %125 = load i8*, i8** %2, align 8
  ret i8* %125
}

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i32 @PyBytes_AsStringAndSize(i32*, i8**, i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsEncodedString(i32*, i32, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @PyErr_FORMAT(i32, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @Py_TYPE_NAME(i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @PyErr_SET_VIM(i32) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @alloc(i32) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
