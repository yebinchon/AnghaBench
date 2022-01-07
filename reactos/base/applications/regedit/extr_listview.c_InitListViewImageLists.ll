; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_InitListViewImageLists.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_InitListViewImageLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CX_ICON = common dso_local global i32 0, align 4
@CY_ICON = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@LISTVIEW_NUM_ICONS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDI_BIN = common dso_local global i32 0, align 4
@Image_Bin = common dso_local global i8* null, align 8
@IDI_STRING = common dso_local global i32 0, align 4
@Image_String = common dso_local global i8* null, align 8
@LVSIL_SMALL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @InitListViewImageLists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitListViewImageLists(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @CX_ICON, align 4
  %7 = load i32, i32* @CY_ICON, align 4
  %8 = load i32, i32* @ILC_MASK, align 4
  %9 = load i64, i64* @LISTVIEW_NUM_ICONS, align 8
  %10 = call i32* @ImageList_Create(i32 %6, i32 %7, i32 %8, i32 0, i64 %9)
  store i32* %10, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load i32, i32* @hInst, align 4
  %16 = load i32, i32* @IDI_BIN, align 4
  %17 = call i32 @MAKEINTRESOURCEW(i32 %16)
  %18 = call i32 @LoadIconW(i32 %15, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @ImageList_AddIcon(i32* %19, i32 %20)
  store i8* %21, i8** @Image_Bin, align 8
  %22 = load i32, i32* @hInst, align 4
  %23 = load i32, i32* @IDI_STRING, align 4
  %24 = call i32 @MAKEINTRESOURCEW(i32 %23)
  %25 = call i32 @LoadIconW(i32 %22, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @ImageList_AddIcon(i32* %26, i32 %27)
  store i8* %28, i8** @Image_String, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @ImageList_GetImageCount(i32* %29)
  %31 = load i64, i64* @LISTVIEW_NUM_ICONS, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %14
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %14
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @LVSIL_SMALL, align 4
  %39 = call i32 @ListView_SetImageList(i32 %36, i32* %37, i32 %38)
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %33, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32* @ImageList_Create(i32, i32, i32, i32, i64) #1

declare dso_local i32 @LoadIconW(i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i8* @ImageList_AddIcon(i32*, i32) #1

declare dso_local i64 @ImageList_GetImageCount(i32*) #1

declare dso_local i32 @ListView_SetImageList(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
