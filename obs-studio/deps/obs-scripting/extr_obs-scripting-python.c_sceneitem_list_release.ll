; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_sceneitem_list_release.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/obs-scripting/extr_obs-scripting-python.c_sceneitem_list_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"O\00", align 1
@obs_sceneitem_t = common dso_local global i32 0, align 4
@item = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @sceneitem_list_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sceneitem_list_release(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @parse_args(i32* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %6)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32* (...) @python_none()
  store i32* %14, i32** %3, align 8
  br label %44

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @PyList_Size(i32* %16)
  store i64 %17, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %37, %15
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32* @PyList_GetItem(i32* %23, i64 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* @obs_sceneitem_t, align 4
  %27 = load i32, i32* @item, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @obs_sceneitem_t, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @py_to_libobs(i32 %29, i32* %30, i32* @item)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @item, align 4
  %35 = call i32 @obs_sceneitem_release(i32 %34)
  br label %36

36:                                               ; preds = %33, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %18

40:                                               ; preds = %18
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @UNUSED_PARAMETER(i32* %41)
  %43 = call i32* (...) @python_none()
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %40, %13
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32 @parse_args(i32*, i8*, i32**) #1

declare dso_local i32* @python_none(...) #1

declare dso_local i64 @PyList_Size(i32*) #1

declare dso_local i32* @PyList_GetItem(i32*, i64) #1

declare dso_local i64 @py_to_libobs(i32, i32*, i32*) #1

declare dso_local i32 @obs_sceneitem_release(i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
