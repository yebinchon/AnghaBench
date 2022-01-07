; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_OnInitSettingsPage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_OnInitSettingsPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32 }

@IDC_KEYLAYOUT_LIST = common dso_local global i32 0, align 4
@MAX_STR_LEN = common dso_local global i32 0, align 4
@LVS_EX_FULLROWSELECT = common dso_local global i32 0, align 4
@LVCF_FMT = common dso_local global i32 0, align 4
@LVCF_TEXT = common dso_local global i32 0, align 4
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVCF_SUBITEM = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_LANGUAGE = common dso_local global i32 0, align 4
@LVCFMT_LEFT = common dso_local global i32 0, align 4
@IDS_LAYOUT = common dso_local global i32 0, align 4
@LVCFMT_RIGHT = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@ILC_COLOR8 = common dso_local global i32 0, align 4
@ILC_MASK = common dso_local global i32 0, align 4
@LVSIL_SMALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OnInitSettingsPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitSettingsPage(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %10 = call i32 (...) @LayoutList_Create()
  %11 = call i32 (...) @LocaleList_Create()
  %12 = call i32 (...) @InputList_Create()
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @IDC_KEYLAYOUT_LIST, align 4
  %15 = call i32* @GetDlgItem(i32* %13, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %1
  %19 = load i32, i32* @MAX_STR_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @LVS_EX_FULLROWSELECT, align 4
  %25 = call i32 @ListView_SetExtendedListViewStyle(i32* %23, i32 %24)
  %26 = call i32 @ZeroMemory(%struct.TYPE_4__* %8, i32 32)
  %27 = load i32, i32* @LVCF_FMT, align 4
  %28 = load i32, i32* @LVCF_TEXT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LVCF_WIDTH, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @LVCF_SUBITEM, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @hApplet, align 4
  %36 = load i32, i32* @IDS_LANGUAGE, align 4
  %37 = call i32 @ARRAYSIZE(i32* %22)
  %38 = call i32 @LoadStringW(i32 %35, i32 %36, i32* %22, i32 %37)
  %39 = load i32, i32* @LVCFMT_LEFT, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32* %22, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 175, i32* %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ListView_InsertColumn(i32* %44, i32 0, %struct.TYPE_4__* %8)
  %46 = load i32, i32* @hApplet, align 4
  %47 = load i32, i32* @IDS_LAYOUT, align 4
  %48 = call i32 @ARRAYSIZE(i32* %22)
  %49 = call i32 @LoadStringW(i32 %46, i32 %47, i32* %22, i32 %48)
  %50 = load i32, i32* @LVCFMT_RIGHT, align 4
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32 155, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32* %22, i32** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ListView_InsertColumn(i32* %55, i32 1, %struct.TYPE_4__* %8)
  %57 = load i32, i32* @SM_CXSMICON, align 4
  %58 = call i32 @GetSystemMetrics(i32 %57)
  %59 = mul nsw i32 %58, 2
  %60 = load i32, i32* @SM_CYSMICON, align 4
  %61 = call i32 @GetSystemMetrics(i32 %60)
  %62 = load i32, i32* @ILC_COLOR8, align 4
  %63 = load i32, i32* @ILC_MASK, align 4
  %64 = or i32 %62, %63
  %65 = call i32* @ImageList_Create(i32 %59, i32 %61, i32 %64, i32 0, i32 0)
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %18
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* @LVSIL_SMALL, align 4
  %72 = call i32* @ListView_SetImageList(i32* %69, i32* %70, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @ImageList_Destroy(i32* %73)
  br label %75

75:                                               ; preds = %68, %18
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @UpdateInputListView(i32* %76)
  %78 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %78)
  br label %79

79:                                               ; preds = %75, %1
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @FALSE, align 4
  %82 = call i32 @SetControlsState(i32* %80, i32 %81)
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @LayoutList_Create(...) #1

declare dso_local i32 @LocaleList_Create(...) #1

declare dso_local i32 @InputList_Create(...) #1

declare dso_local i32* @GetDlgItem(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ListView_SetExtendedListViewStyle(i32*, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i32 @ListView_InsertColumn(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32* @ImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32* @ListView_SetImageList(i32*, i32*, i32) #1

declare dso_local i32 @ImageList_Destroy(i32*) #1

declare dso_local i32 @UpdateInputListView(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @SetControlsState(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
