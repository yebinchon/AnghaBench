; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_libobs_to_py_.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_libobs_to_py_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"%s:%d: SWIG could not find type: %s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@Py_None = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [66 x i8] c"%s:%d: SWIG failed to convert obs object to python object: %s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libobs_to_py_(i8* %0, i8* %1, i32 %2, i32** %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32** %3, i32*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32* @SWIG_TypeQuery(i8* %17)
  store i32* %18, i32** %16, align 8
  %19 = load i32*, i32** %16, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %7
  %22 = load i8*, i8** %14, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i8*, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i8*, i8** %13, align 8
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i8* [ %27, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %28 ]
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23, i8* %30, i8* %34, i8* %35)
  store i32 0, i32* %8, align 4
  br label %64

37:                                               ; preds = %7
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32* @SWIG_NewPointerObj(i8* %38, i32* %39, i32 %40)
  %42 = load i32**, i32*** %12, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32**, i32*** %12, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** @Py_None, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %13, align 8
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i8* [ %53, %52 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %54 ]
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* %48, i32 %49, i8* %56, i8* %60, i8* %61)
  store i32 0, i32* %8, align 4
  br label %64

63:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %55, %29
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32* @SWIG_TypeQuery(i8*) #1

declare dso_local i32 @warn(i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @SWIG_NewPointerObj(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
