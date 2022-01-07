; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_GetItemPath.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_GetItemPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pathBuffer = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @GetItemPath(i32 %0, i64 %1, i32** %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32**, i32*** %7, align 8
  store i32* null, i32** %10, align 8
  %11 = load i64*, i64** @pathBuffer, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = call i32 (...) @GetProcessHeap()
  %15 = call i64* @HeapAlloc(i32 %14, i32 0, i32 1024)
  store i64* %15, i64** @pathBuffer, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i64*, i64** @pathBuffer, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i64* null, i64** %4, align 8
  br label %48

20:                                               ; preds = %16
  %21 = load i64*, i64** @pathBuffer, align 8
  store i64 0, i64* %21, align 8
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i64*, i64** @pathBuffer, align 8
  %24 = call i64 @HeapSize(i32 %22, i32 0, i64* %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i64* null, i64** %4, align 8
  br label %48

29:                                               ; preds = %20
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @TreeView_GetSelection(i32 %33)
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i64* null, i64** %4, align 8
  br label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i32**, i32*** %7, align 8
  %43 = call i32 @get_item_path(i32 %40, i64 %41, i32** %42, i64** @pathBuffer, i32* %8, i32* %9)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i64* null, i64** %4, align 8
  br label %48

46:                                               ; preds = %39
  %47 = load i64*, i64** @pathBuffer, align 8
  store i64* %47, i64** %4, align 8
  br label %48

48:                                               ; preds = %46, %45, %38, %28, %19
  %49 = load i64*, i64** %4, align 8
  ret i64* %49
}

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @HeapSize(i32, i32, i64*) #1

declare dso_local i64 @TreeView_GetSelection(i32) #1

declare dso_local i32 @get_item_path(i32, i64, i32**, i64**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
