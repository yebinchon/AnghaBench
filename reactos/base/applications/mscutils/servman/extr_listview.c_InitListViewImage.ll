; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_listview.c_InitListViewImage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_listview.c_InitListViewImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDI_SM_ICON = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@LVSIL_SMALL = common dso_local global i32 0, align 4
@SM_CXICON = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@LVSIL_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @InitListViewImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitListViewImage(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load i32, i32* @SM_CXSMICON, align 4
  %9 = call i32 @GetSystemMetrics(i32 %8)
  %10 = load i32, i32* @SM_CYSMICON, align 4
  %11 = call i32 @GetSystemMetrics(i32 %10)
  %12 = load i32, i32* @ILC_MASK, align 4
  %13 = load i32, i32* @ILC_COLOR32, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @ImageList_Create(i32 %9, i32 %11, i32 %14, i32 1, i32 1)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %1
  %19 = load i32, i32* @hInstance, align 4
  %20 = load i32, i32* @IDI_SM_ICON, align 4
  %21 = call i32 @MAKEINTRESOURCE(i32 %20)
  %22 = load i32, i32* @IMAGE_ICON, align 4
  %23 = call i64 @LoadImageW(i32 %19, i32 %21, i32 %22, i32 16, i32 16, i32 0)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ImageList_AddIcon(i64 %27, i64 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @LVSIL_SMALL, align 4
  %35 = call i32 @ListView_SetImageList(i32 %32, i64 %33, i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @DestroyIcon(i64 %36)
  br label %38

38:                                               ; preds = %26, %18
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* @SM_CXICON, align 4
  %41 = call i32 @GetSystemMetrics(i32 %40)
  %42 = load i32, i32* @SM_CYICON, align 4
  %43 = call i32 @GetSystemMetrics(i32 %42)
  %44 = load i32, i32* @ILC_MASK, align 4
  %45 = load i32, i32* @ILC_COLOR32, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @ImageList_Create(i32 %41, i32 %43, i32 %46, i32 1, i32 1)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %39
  %51 = load i32, i32* @hInstance, align 4
  %52 = load i32, i32* @IDI_SM_ICON, align 4
  %53 = call i32 @MAKEINTRESOURCE(i32 %52)
  %54 = load i32, i32* @IMAGE_ICON, align 4
  %55 = call i64 @LoadImageW(i32 %51, i32 %53, i32 %54, i32 32, i32 32, i32 0)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @ImageList_AddIcon(i64 %59, i64 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @LVSIL_NORMAL, align 4
  %67 = call i32 @ListView_SetImageList(i32 %64, i64 %65, i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @DestroyIcon(i64 %68)
  br label %70

70:                                               ; preds = %58, %50
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @ImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i64 @LoadImageW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @ImageList_AddIcon(i64, i64) #1

declare dso_local i32 @ListView_SetImageList(i32, i64, i32) #1

declare dso_local i32 @DestroyIcon(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
