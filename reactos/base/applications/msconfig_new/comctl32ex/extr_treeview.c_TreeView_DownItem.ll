; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_DownItem.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_DownItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TVI_LAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TreeView_DownItem(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %35

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @TreeView_GetNextSibling(i32 %14, i64 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @TVI_LAST, align 8
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @TreeView_GetParent(i32 %24, i64 %25)
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @Tree_Item_Copy(i32 %22, i64 %23, i32 %26, i64 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @TreeView_DeleteItem(i32 %29, i64 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @TreeView_SelectItem(i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @TreeView_GetNextSibling(i32, i64) #1

declare dso_local i64 @Tree_Item_Copy(i32, i64, i32, i64) #1

declare dso_local i32 @TreeView_GetParent(i32, i64) #1

declare dso_local i32 @TreeView_DeleteItem(i32, i64) #1

declare dso_local i32 @TreeView_SelectItem(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
