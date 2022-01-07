; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_Set3StateCheck.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/comctl32ex/extr_treeview.c_TreeView_Set3StateCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TVS_EX_PARTIALCHECKBOXES = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@TVS_CHECKBOXES = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDB_V7CHECK = common dso_local global i32 0, align 4
@IDB_2K3CHECK = common dso_local global i32 0, align 4
@TVSIL_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TreeView_Set3StateCheck(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 @GetComCtl32Version(i32* %5, i32* %6, i32* %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 6
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 10
  br i1 %16, label %17, label %34

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @TreeView_GetExtendedStyle(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TVS_EX_PARTIALCHECKBOXES, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @TreeView_SetExtendedStyle(i32 %20, i32 %23, i32 0)
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @GWL_STYLE, align 4
  %27 = call i32 @GetWindowLongPtr(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @GWL_STYLE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @TVS_CHECKBOXES, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @SetWindowLongPtr(i32 %28, i32 %29, i32 %32)
  br label %60

34:                                               ; preds = %14, %11
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @GWL_STYLE, align 4
  %37 = call i32 @GetWindowLongPtr(i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @GWL_STYLE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @TVS_CHECKBOXES, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @SetWindowLongPtr(i32 %38, i32 %39, i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @hInst, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 6000
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @IDB_V7CHECK, align 4
  %50 = call i32 @MAKEINTRESOURCEW(i32 %49)
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @IDB_2K3CHECK, align 4
  %53 = call i32 @MAKEINTRESOURCEW(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  %56 = call i32 @RGB(i32 255, i32 255, i32 255)
  %57 = call i32 @ImageList_LoadBitmap(i32 %45, i32 %55, i32 16, i32 4, i32 %56)
  %58 = load i32, i32* @TVSIL_STATE, align 4
  %59 = call i32 @TreeView_SetImageList(i32 %44, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %17
  ret void
}

declare dso_local i32 @GetComCtl32Version(i32*, i32*, i32*) #1

declare dso_local i32 @TreeView_GetExtendedStyle(i32) #1

declare dso_local i32 @TreeView_SetExtendedStyle(i32, i32, i32) #1

declare dso_local i32 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

declare dso_local i32 @TreeView_SetImageList(i32, i32, i32) #1

declare dso_local i32 @ImageList_LoadBitmap(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
