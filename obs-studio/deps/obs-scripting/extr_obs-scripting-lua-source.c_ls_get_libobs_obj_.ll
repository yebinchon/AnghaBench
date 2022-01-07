; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_ls_get_libobs_obj_.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_ls_get_libobs_obj_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"%s:%d: SWIG could not find type: %s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"%s:%d: SWIG failed to convert lua object to obs object: %s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ls_get_libobs_obj_(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32* @SWIG_TypeQuery(i32* %18, i8* %19)
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %16, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %7
  %24 = load i8*, i8** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i8* [ %29, %28 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25, i8* %32, i8* %36, i8* %37)
  store i32 0, i32* %8, align 4
  br label %65

39:                                               ; preds = %7
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @SWIG_ConvertPtr(i32* %40, i32 %41, i8* %42, i32* %43, i32 0)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @SWIG_IsOK(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %14, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** %13, align 8
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i8* [ %54, %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %55 ]
  %58 = load i8*, i8** %13, align 8
  %59 = icmp ne i8* %58, null
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %49, i32 %50, i8* %57, i8* %61, i8* %62)
  store i32 0, i32* %8, align 4
  br label %65

64:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %56, %31
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32* @SWIG_TypeQuery(i32*, i8*) #1

declare dso_local i32 @warn(i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @SWIG_ConvertPtr(i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @SWIG_IsOK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
