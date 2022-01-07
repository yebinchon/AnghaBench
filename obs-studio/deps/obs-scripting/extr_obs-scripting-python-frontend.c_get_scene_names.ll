; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python-frontend.c_get_scene_names.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python-frontend.c_get_scene_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @get_scene_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_scene_names(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i8** (...) @obs_frontend_get_scene_names()
  store i8** %9, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  store i8** %10, i8*** %6, align 8
  %11 = call i32* @PyList_New(i32 0)
  store i32* %11, i32** %7, align 8
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i8**, i8*** %6, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %21, label %36

21:                                               ; preds = %19
  %22 = load i8**, i8*** %6, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @PyUnicode_FromString(i8* %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @PyList_Append(i32* %28, i32* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @Py_DECREF(i32* %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %6, align 8
  br label %12

36:                                               ; preds = %19
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @UNUSED_PARAMETER(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @UNUSED_PARAMETER(i32* %39)
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @bfree(i8** %41)
  %43 = load i32*, i32** %7, align 8
  ret i32* %43
}

declare dso_local i8** @obs_frontend_get_scene_names(...) #1

declare dso_local i32* @PyList_New(i32) #1

declare dso_local i32* @PyUnicode_FromString(i8*) #1

declare dso_local i32 @PyList_Append(i32*, i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @bfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
