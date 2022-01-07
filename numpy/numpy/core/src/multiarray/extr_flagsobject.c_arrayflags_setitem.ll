; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_setitem.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_flagsobject.c_arrayflags_setitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"WRITEABLE\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ALIGNED\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"UPDATEIFCOPY\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"WRITEBACKIFCOPY\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@PyExc_KeyError = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Unknown flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @arrayflags_setitem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arrayflags_setitem(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @PyUnicode_Check(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @PyUnicode_AsASCIIString(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i8* @PyBytes_AS_STRING(i32* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @PyBytes_GET_SIZE(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 16, i32* %10, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @memcpy(i8* %26, i8* %27, i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @Py_DECREF(i32* %30)
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8* %32, i8** %8, align 8
  br label %44

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @PyBytes_Check(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = call i8* @PyBytes_AS_STRING(i32* %38)
  store i8* %39, i8** %8, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @PyBytes_GET_SIZE(i32* %40)
  store i32 %41, i32* %10, align 4
  br label %43

42:                                               ; preds = %33
  br label %128

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55, %47
  %61 = load i32*, i32** %5, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @arrayflags_writeable_set(i32* %61, i32* %62)
  store i32 %63, i32* %4, align 4
  br label %131

64:                                               ; preds = %55, %52
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 7
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @strncmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @strncmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %67
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @arrayflags_aligned_set(i32* %81, i32* %82)
  store i32 %83, i32* %4, align 4
  br label %131

84:                                               ; preds = %75, %72
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %85, 12
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @strncmp(i8* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @strncmp(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %87
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @arrayflags_updateifcopy_set(i32* %101, i32* %102)
  store i32 %103, i32* %4, align 4
  br label %131

104:                                              ; preds = %95, %92
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 15
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @strncmp(i8* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @strncmp(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115, %107
  %121 = load i32*, i32** %5, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @arrayflags_writebackifcopy_set(i32* %121, i32* %122)
  store i32 %123, i32* %4, align 4
  br label %131

124:                                              ; preds = %115, %112
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %42
  %129 = load i32, i32* @PyExc_KeyError, align 4
  %130 = call i32 @PyErr_SetString(i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %120, %100, %80, %60
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i8* @PyBytes_AS_STRING(i32*) #1

declare dso_local i32 @PyBytes_GET_SIZE(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @arrayflags_writeable_set(i32*, i32*) #1

declare dso_local i32 @arrayflags_aligned_set(i32*, i32*) #1

declare dso_local i32 @arrayflags_updateifcopy_set(i32*, i32*) #1

declare dso_local i32 @arrayflags_writebackifcopy_set(i32*, i32*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
