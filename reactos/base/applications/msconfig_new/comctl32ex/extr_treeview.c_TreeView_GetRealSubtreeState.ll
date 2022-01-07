; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_GetRealSubtreeState.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_GetRealSubtreeState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TreeView_GetRealSubtreeState(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @TreeView_GetChild(i32 %8, i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @TreeView_GetCheckState(i32 %11, i32* %12)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %34, %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @TreeView_GetNextSibling(i32 %18, i32* %19)
  store i32* %20, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @TreeView_GetCheckState(i32 %25, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 2, %33 ]
  store i32 %35, i32* %6, align 4
  br label %14

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32* @TreeView_GetChild(i32, i32*) #1

declare dso_local i32 @TreeView_GetCheckState(i32, i32*) #1

declare dso_local i32* @TreeView_GetNextSibling(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
