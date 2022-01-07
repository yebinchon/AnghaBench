; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_PropagateStateOfItemToParent.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_PropagateStateOfItemToParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TVIS_STATEIMAGEMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TreeView_PropagateStateOfItemToParent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %33

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TreeView_GetParent(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %33

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @TreeView_GetRealSubtreeState(i32 %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i32 @INDEXTOSTATEIMAGEMASK(i64 %27)
  %29 = load i32, i32* @TVIS_STATEIMAGEMASK, align 4
  %30 = call i32 @TreeView_SetItemState(i32 %24, i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  call void @TreeView_PropagateStateOfItemToParent(i32 %31, i32 %32)
  br label %33

33:                                               ; preds = %20, %19, %12
  ret void
}

declare dso_local i32 @TreeView_GetParent(i32, i32) #1

declare dso_local i64 @TreeView_GetRealSubtreeState(i32, i32) #1

declare dso_local i32 @TreeView_SetItemState(i32, i32, i32, i32) #1

declare dso_local i32 @INDEXTOSTATEIMAGEMASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
