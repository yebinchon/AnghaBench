; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_py_to_libobs_.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_py_to_libobs_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"%s:%d: SWIG could not find type: %s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"%s:%d: SWIG failed to convert python object to obs object: %s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @py_to_libobs_(i8* %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = call i32* @SWIG_TypeQuery(i8* %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %6
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i8*, i8** %11, align 8
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22, i8* %29, i8* %33, i8* %34)
  store i32 0, i32* %7, align 4
  br label %61

36:                                               ; preds = %6
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @SWIG_ConvertPtr(i32* %37, i8* %38, i32* %39, i32 0)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @SWIG_IsOK(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %51 ]
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 %46, i8* %53, i8* %57, i8* %58)
  store i32 0, i32* %7, align 4
  br label %61

60:                                               ; preds = %36
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %52, %28
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32* @SWIG_TypeQuery(i8*) #1

declare dso_local i32 @warn(i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @SWIG_ConvertPtr(i32*, i8*, i32*, i32) #1

declare dso_local i32 @SWIG_IsOK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
