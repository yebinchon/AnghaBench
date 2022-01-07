; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_PyArray_BusDayRollConverter.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_PyArray_BusDayRollConverter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"backward\00", align 1
@NPY_BUSDAY_BACKWARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@NPY_BUSDAY_FORWARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@NPY_BUSDAY_FOLLOWING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"modifiedfollowing\00", align 1
@NPY_BUSDAY_MODIFIEDFOLLOWING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"modifiedpreceding\00", align 1
@NPY_BUSDAY_MODIFIEDPRECEDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"nat\00", align 1
@NPY_BUSDAY_NAT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@NPY_BUSDAY_PRECEDING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@NPY_BUSDAY_RAISE = common dso_local global i32 0, align 4
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Invalid business day roll parameter \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @PyArray_BusDayRollConverter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PyArray_BusDayRollConverter(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @Py_INCREF(i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @PyUnicode_Check(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @PyUnicode_AsASCIIString(i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @Py_DECREF(i32* %22)
  store i32 0, i32* %3, align 4
  br label %133

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @Py_DECREF(i32* %25)
  %27 = load i32*, i32** %9, align 8
  store i32* %27, i32** %6, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @PyBytes_AsStringAndSize(i32* %29, i8** %7, i32* %8)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @Py_DECREF(i32* %33)
  store i32 0, i32* %3, align 4
  br label %133

35:                                               ; preds = %28
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %124 [
    i32 98, label %40
    i32 102, label %48
    i32 109, label %74
    i32 110, label %100
    i32 112, label %108
    i32 114, label %116
  ]

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @NPY_BUSDAY_BACKWARD, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %130

47:                                               ; preds = %40
  br label %124

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %72 [
    i32 114, label %56
    i32 108, label %64
  ]

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @NPY_BUSDAY_FORWARD, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %130

63:                                               ; preds = %56
  br label %72

64:                                               ; preds = %51
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @NPY_BUSDAY_FOLLOWING, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %130

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %51, %71, %63
  br label %73

73:                                               ; preds = %72, %48
  br label %124

74:                                               ; preds = %35
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 8
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %98 [
    i32 102, label %82
    i32 112, label %90
  ]

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @NPY_BUSDAY_MODIFIEDFOLLOWING, align 4
  %88 = load i32*, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %130

89:                                               ; preds = %82
  br label %98

90:                                               ; preds = %77
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @NPY_BUSDAY_MODIFIEDPRECEDING, align 4
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  br label %130

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %77, %97, %89
  br label %99

99:                                               ; preds = %98, %74
  br label %124

100:                                              ; preds = %35
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @NPY_BUSDAY_NAT, align 4
  %106 = load i32*, i32** %5, align 8
  store i32 %105, i32* %106, align 4
  br label %130

107:                                              ; preds = %100
  br label %124

108:                                              ; preds = %35
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @NPY_BUSDAY_PRECEDING, align 4
  %114 = load i32*, i32** %5, align 8
  store i32 %113, i32* %114, align 4
  br label %130

115:                                              ; preds = %108
  br label %124

116:                                              ; preds = %35
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @NPY_BUSDAY_RAISE, align 4
  %122 = load i32*, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  br label %130

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %35, %123, %115, %107, %99, %73, %47
  %125 = load i32, i32* @PyExc_ValueError, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @PyErr_Format(i32 %125, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %126)
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @Py_DECREF(i32* %128)
  store i32 0, i32* %3, align 4
  br label %133

130:                                              ; preds = %120, %112, %104, %94, %86, %68, %60, %44
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @Py_DECREF(i32* %131)
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %130, %124, %32, %21
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyBytes_AsStringAndSize(i32*, i8**, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
