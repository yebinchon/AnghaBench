; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_ls_push_libobs_obj_.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-lua-source.c_ls_push_libobs_obj_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"%s:%d: SWIG could not find type: %s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ls_push_libobs_obj_(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32* @SWIG_TypeQuery(i32* %17, i8* %18)
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %7
  %23 = load i8*, i8** %14, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** %13, align 8
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %29 ]
  %32 = load i8*, i8** %13, align 8
  %33 = icmp ne i8* %32, null
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24, i8* %31, i8* %35, i8* %36)
  store i32 0, i32* %8, align 4
  br label %44

38:                                               ; preds = %7
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @SWIG_NewPointerObj(i32* %39, i8* %40, i32* %41, i32 %42)
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %30
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32* @SWIG_TypeQuery(i32*, i8*) #1

declare dso_local i32 @warn(i8*, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @SWIG_NewPointerObj(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
