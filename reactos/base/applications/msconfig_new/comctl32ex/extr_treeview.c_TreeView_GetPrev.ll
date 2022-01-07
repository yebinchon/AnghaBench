; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_GetPrev.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_GetPrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TreeView_GetPrev(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %33

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @TreeView_GetPrevSibling(i32 %12, i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32* @TreeView_GetParent(i32 %18, i32* %19)
  store i32* %20, i32** %3, align 8
  br label %33

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @TreeView_GetChild(i32 %22, i32* %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32* @TreeView_GetLastFromItem(i32 %28, i32* %29)
  store i32* %30, i32** %3, align 8
  br label %33

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %31, %27, %17, %10
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32* @TreeView_GetPrevSibling(i32, i32*) #1

declare dso_local i32* @TreeView_GetParent(i32, i32*) #1

declare dso_local i32* @TreeView_GetChild(i32, i32*) #1

declare dso_local i32* @TreeView_GetLastFromItem(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
