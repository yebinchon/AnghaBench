; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_RefreshTreeView.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_RefreshTreeView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_WAIT = common dso_local global i32 0, align 4
@WM_SETREDRAW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RefreshTreeView(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @TreeView_GetSelection(i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* @IDC_WAIT, align 4
  %9 = call i32 @LoadCursor(i32* null, i32 %8)
  %10 = call i32 @SetCursor(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @WM_SETREDRAW, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @SendMessageW(i32 %11, i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @TreeView_GetRoot(i32 %16)
  %18 = call i64 @TreeView_GetChild(i32 %15, i32 %17)
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %22, %1
  %20 = load i64, i64* %3, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @RefreshTreeItem(i32 %23, i64 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @TreeView_GetNextSibling(i32 %26, i64 %27)
  store i64 %28, i64* %3, align 8
  br label %19

29:                                               ; preds = %19
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @WM_SETREDRAW, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @SendMessageW(i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @SetCursor(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @TreeView_SelectItem(i32 %36, i64 %37)
  %39 = load i32, i32* @TRUE, align 4
  ret i32 %39
}

declare dso_local i64 @TreeView_GetSelection(i32) #1

declare dso_local i32 @SetCursor(i32) #1

declare dso_local i32 @LoadCursor(i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @TreeView_GetChild(i32, i32) #1

declare dso_local i32 @TreeView_GetRoot(i32) #1

declare dso_local i32 @RefreshTreeItem(i32, i64) #1

declare dso_local i64 @TreeView_GetNextSibling(i32, i64) #1

declare dso_local i32 @TreeView_SelectItem(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
