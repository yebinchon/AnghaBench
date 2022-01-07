; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_InitTreeViewImageLists.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_treeview.c_InitTreeViewImageLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@NUM_ICONS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@hInst = common dso_local global i32 0, align 4
@IDI_OPEN_FILE = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@Image_Open = common dso_local global i8* null, align 8
@IDI_CLOSED_FILE = common dso_local global i32 0, align 4
@Image_Closed = common dso_local global i8* null, align 8
@IDI_ROOT = common dso_local global i32 0, align 4
@Image_Root = common dso_local global i8* null, align 8
@TVSIL_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @InitTreeViewImageLists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitTreeViewImageLists(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @SM_CXSMICON, align 4
  %7 = call i32 @GetSystemMetrics(i32 %6)
  %8 = load i32, i32* @SM_CYSMICON, align 4
  %9 = call i32 @GetSystemMetrics(i32 %8)
  %10 = load i32, i32* @ILC_MASK, align 4
  %11 = load i32, i32* @ILC_COLOR32, align 4
  %12 = or i32 %10, %11
  %13 = load i64, i64* @NUM_ICONS, align 8
  %14 = call i32* @ImageList_Create(i32 %7, i32 %9, i32 %12, i32 0, i64 %13)
  store i32* %14, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load i32, i32* @hInst, align 4
  %20 = load i32, i32* @IDI_OPEN_FILE, align 4
  %21 = call i32 @MAKEINTRESOURCEW(i32 %20)
  %22 = load i32, i32* @IMAGE_ICON, align 4
  %23 = load i32, i32* @SM_CXSMICON, align 4
  %24 = call i32 @GetSystemMetrics(i32 %23)
  %25 = load i32, i32* @SM_CYSMICON, align 4
  %26 = call i32 @GetSystemMetrics(i32 %25)
  %27 = call i64 @LoadImageW(i32 %19, i32 %21, i32 %22, i32 %24, i32 %26, i32 0)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i8* @ImageList_AddIcon(i32* %31, i64 %32)
  store i8* %33, i8** @Image_Open, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @DestroyIcon(i64 %34)
  br label %36

36:                                               ; preds = %30, %18
  %37 = load i32, i32* @hInst, align 4
  %38 = load i32, i32* @IDI_CLOSED_FILE, align 4
  %39 = call i32 @MAKEINTRESOURCEW(i32 %38)
  %40 = load i32, i32* @IMAGE_ICON, align 4
  %41 = load i32, i32* @SM_CXSMICON, align 4
  %42 = call i32 @GetSystemMetrics(i32 %41)
  %43 = load i32, i32* @SM_CYSMICON, align 4
  %44 = call i32 @GetSystemMetrics(i32 %43)
  %45 = call i64 @LoadImageW(i32 %37, i32 %39, i32 %40, i32 %42, i32 %44, i32 0)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load i32*, i32** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i8* @ImageList_AddIcon(i32* %49, i64 %50)
  store i8* %51, i8** @Image_Closed, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @DestroyIcon(i64 %52)
  br label %54

54:                                               ; preds = %48, %36
  %55 = load i32, i32* @hInst, align 4
  %56 = load i32, i32* @IDI_ROOT, align 4
  %57 = call i32 @MAKEINTRESOURCEW(i32 %56)
  %58 = load i32, i32* @IMAGE_ICON, align 4
  %59 = load i32, i32* @SM_CXSMICON, align 4
  %60 = call i32 @GetSystemMetrics(i32 %59)
  %61 = load i32, i32* @SM_CYSMICON, align 4
  %62 = call i32 @GetSystemMetrics(i32 %61)
  %63 = call i64 @LoadImageW(i32 %55, i32 %57, i32 %58, i32 %60, i32 %62, i32 0)
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i8* @ImageList_AddIcon(i32* %67, i64 %68)
  store i8* %69, i8** @Image_Root, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @DestroyIcon(i64 %70)
  br label %72

72:                                               ; preds = %66, %54
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @ImageList_GetImageCount(i32* %73)
  %75 = load i64, i64* @NUM_ICONS, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ImageList_Destroy(i32* %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %2, align 4
  br label %87

81:                                               ; preds = %72
  %82 = load i32, i32* %3, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @TVSIL_NORMAL, align 4
  %85 = call i32 @TreeView_SetImageList(i32 %82, i32* %83, i32 %84)
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %77, %16
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32* @ImageList_Create(i32, i32, i32, i32, i64) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i8* @ImageList_AddIcon(i32*, i64) #1

declare dso_local i32 @DestroyIcon(i64) #1

declare dso_local i64 @ImageList_GetImageCount(i32*) #1

declare dso_local i32 @ImageList_Destroy(i32*) #1

declare dso_local i32 @TreeView_SetImageList(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
