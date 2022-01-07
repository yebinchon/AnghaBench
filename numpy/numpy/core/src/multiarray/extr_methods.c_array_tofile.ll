; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_tofile.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_methods.c_array_tofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@array_tofile.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"O|ss:tofile\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@Py_RETURN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @array_tofile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @array_tofile(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @PyArg_ParseTupleAndKeywords(i32* %14, i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @array_tofile.kwlist, i64 0, i64 0), i32** %9, i8** %11, i8** %12)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %79

19:                                               ; preds = %3
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @NpyPath_PathlikeToFspath(i32* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %79

25:                                               ; preds = %19
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @PyBytes_Check(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @PyUnicode_Check(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29, %25
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @npy_PyFile_OpenFile(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 @Py_SETREF(i32* %34, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  br label %79

41:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %43

42:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32*, i32** %9, align 8
  %45 = call i32* @npy_PyFile_Dup2(i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %13)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %76

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i64 @PyArray_ToFile(i32* %50, i32* %51, i8* %52, i8* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %76

57:                                               ; preds = %49
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @npy_PyFile_DupClose2(i32* %58, i32* %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %76

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = call i64 @npy_PyFile_CloseFile(i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %76

72:                                               ; preds = %67, %64
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @Py_DECREF(i32* %73)
  %75 = load i32, i32* @Py_RETURN_NONE, align 4
  br label %76

76:                                               ; preds = %72, %71, %63, %56, %48
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @Py_DECREF(i32* %77)
  store i32* null, i32** %4, align 8
  br label %79

79:                                               ; preds = %76, %40, %24, %18
  %80 = load i32*, i32** %4, align 8
  ret i32* %80
}

declare dso_local i32 @PyArg_ParseTupleAndKeywords(i32*, i32*, i8*, i8**, i32**, i8**, i8**) #1

declare dso_local i32* @NpyPath_PathlikeToFspath(i32*) #1

declare dso_local i64 @PyBytes_Check(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32 @Py_SETREF(i32*, i32) #1

declare dso_local i32 @npy_PyFile_OpenFile(i32*, i8*) #1

declare dso_local i32* @npy_PyFile_Dup2(i32*, i8*, i32*) #1

declare dso_local i64 @PyArray_ToFile(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @npy_PyFile_DupClose2(i32*, i32*, i32) #1

declare dso_local i64 @npy_PyFile_CloseFile(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
