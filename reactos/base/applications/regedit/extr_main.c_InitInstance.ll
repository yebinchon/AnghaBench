; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_main.c_InitInstance.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_main.c_InitInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i32 }

@FrameWndProc = common dso_local global i32 0, align 4
@IDI_REGEDIT = common dso_local global i32 0, align 4
@IMAGE_ICON = common dso_local global i32 0, align 4
@SM_CXSMICON = common dso_local global i32 0, align 4
@SM_CYSMICON = common dso_local global i32 0, align 4
@LR_SHARED = common dso_local global i32 0, align 4
@IDC_ARROW = common dso_local global i32 0, align 4
@COLOR_3DFACE = common dso_local global i64 0, align 8
@szFrameClass = common dso_local global i32 0, align 4
@ChildWndProc = common dso_local global i32 0, align 4
@szChildClass = common dso_local global i32 0, align 4
@IDR_REGEDIT_MENU = common dso_local global i32 0, align 4
@hMenuFrame = common dso_local global i8* null, align 8
@IDR_POPUP_MENUS = common dso_local global i32 0, align 4
@hPopupMenus = common dso_local global i8* null, align 8
@ID_EDIT_PERMISSIONS = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_BYPOSITION = common dso_local global i32 0, align 4
@ID_EDIT_MODIFY = common dso_local global i32 0, align 4
@strClipboardFormat = common dso_local global i32 0, align 4
@nClipboardFormat = common dso_local global i32 0, align 4
@WS_EX_WINDOWEDGE = common dso_local global i32 0, align 4
@szTitle = common dso_local global i32 0, align 4
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_CLIPSIBLINGS = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@hFrameWnd = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@SBT_NOBORDERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@STATUS_WINDOW = common dso_local global i32 0, align 4
@hStatusBar = common dso_local global i64 0, align 8
@ID_VIEW_MENU = common dso_local global i32 0, align 4
@ID_VIEW_STATUSBAR = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitInstance(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @ZeroMemory(%struct.TYPE_4__* %8, i32 64)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 64, i32* %12, align 8
  %13 = load i32, i32* @FrameWndProc, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 8
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 7
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @IDI_REGEDIT, align 4
  %19 = call i32 @MAKEINTRESOURCEW(i32 %18)
  %20 = call i8* @LoadIconW(i8* %17, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @IDI_REGEDIT, align 4
  %24 = call i32 @MAKEINTRESOURCEW(i32 %23)
  %25 = load i32, i32* @IMAGE_ICON, align 4
  %26 = load i32, i32* @SM_CXSMICON, align 4
  %27 = call i32 @GetSystemMetrics(i32 %26)
  %28 = load i32, i32* @SM_CYSMICON, align 4
  %29 = call i32 @GetSystemMetrics(i32 %28)
  %30 = load i32, i32* @LR_SHARED, align 4
  %31 = call i64 @LoadImageW(i8* %22, i32 %24, i32 %25, i32 %27, i32 %29, i32 %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @IDC_ARROW, align 4
  %35 = call i8* @LoadCursorW(i32* null, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* @COLOR_3DFACE, align 8
  %38 = add nsw i64 %37, 1
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @szFrameClass, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = call i32 @RegisterClassExW(%struct.TYPE_4__* %8)
  store i32 %43, i32* %10, align 4
  %44 = call i32 @ZeroMemory(%struct.TYPE_4__* %9, i32 64)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 64, i32* %45, align 8
  %46 = load i32, i32* @ChildWndProc, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 8
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 4, i32* %48, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 7
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* @IDI_REGEDIT, align 4
  %53 = call i32 @MAKEINTRESOURCEW(i32 %52)
  %54 = call i8* @LoadIconW(i8* %51, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 6
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @IDC_ARROW, align 4
  %57 = call i8* @LoadCursorW(i32* null, i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 5
  store i8* %57, i8** %58, align 8
  %59 = load i64, i64* @COLOR_3DFACE, align 8
  %60 = add nsw i64 %59, 1
  %61 = inttoptr i64 %60 to i8*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* @szChildClass, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @IDI_REGEDIT, align 4
  %67 = call i32 @MAKEINTRESOURCEW(i32 %66)
  %68 = load i32, i32* @IMAGE_ICON, align 4
  %69 = load i32, i32* @SM_CXSMICON, align 4
  %70 = call i32 @GetSystemMetrics(i32 %69)
  %71 = load i32, i32* @SM_CYSMICON, align 4
  %72 = call i32 @GetSystemMetrics(i32 %71)
  %73 = load i32, i32* @LR_SHARED, align 4
  %74 = call i64 @LoadImageW(i8* %65, i32 %67, i32 %68, i32 %70, i32 %72, i32 %73)
  %75 = inttoptr i64 %74 to i8*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i8* %75, i8** %76, align 8
  %77 = call i32 @RegisterClassExW(%struct.TYPE_4__* %9)
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @RegisterHexEditorClass(i8* %78)
  %80 = load i8*, i8** %4, align 8
  %81 = load i32, i32* @IDR_REGEDIT_MENU, align 4
  %82 = call i32 @MAKEINTRESOURCEW(i32 %81)
  %83 = call i8* @LoadMenuW(i8* %80, i32 %82)
  store i8* %83, i8** @hMenuFrame, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* @IDR_POPUP_MENUS, align 4
  %86 = call i32 @MAKEINTRESOURCEW(i32 %85)
  %87 = call i8* @LoadMenuW(i8* %84, i32 %86)
  store i8* %87, i8** @hPopupMenus, align 8
  %88 = call i32 (...) @InitCommonControls()
  %89 = load i8*, i8** @hMenuFrame, align 8
  %90 = call i32* @GetSubMenu(i8* %89, i32 1)
  store i32* %90, i32** %7, align 8
  %91 = call i32 (...) @InitializeAclUiDll()
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %2
  %95 = load i32*, i32** %7, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @ID_EDIT_PERMISSIONS, align 4
  %100 = load i32, i32* @MF_BYCOMMAND, align 4
  %101 = call i32 @RemoveMenu(i32* %98, i32 %99, i32 %100)
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @MF_BYPOSITION, align 4
  %104 = call i32 @RemoveMenu(i32* %102, i32 4, i32 %103)
  br label %105

105:                                              ; preds = %97, %94
  br label %106

106:                                              ; preds = %105, %2
  %107 = load i32*, i32** %7, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* @ID_EDIT_MODIFY, align 4
  %112 = load i32, i32* @MF_BYCOMMAND, align 4
  %113 = call i32 @SetMenuDefaultItem(i32* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i32, i32* @strClipboardFormat, align 4
  %116 = call i32 @RegisterClipboardFormatW(i32 %115)
  store i32 %116, i32* @nClipboardFormat, align 4
  %117 = load i32, i32* @WS_EX_WINDOWEDGE, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @UlongToPtr(i32 %118)
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @szTitle, align 4
  %122 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %123 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @CW_USEDEFAULT, align 4
  %128 = load i32, i32* @CW_USEDEFAULT, align 4
  %129 = load i32, i32* @CW_USEDEFAULT, align 4
  %130 = load i32, i32* @CW_USEDEFAULT, align 4
  %131 = load i8*, i8** @hMenuFrame, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @CreateWindowExW(i32 %117, i32 %120, i32 %121, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32* null, i8* %131, i8* %132, i32* null)
  store i32 %133, i32* @hFrameWnd, align 4
  %134 = load i32, i32* @hFrameWnd, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %114
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %3, align 4
  br label %170

138:                                              ; preds = %114
  %139 = load i32, i32* @WS_VISIBLE, align 4
  %140 = load i32, i32* @WS_CHILD, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @WS_CLIPSIBLINGS, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @SBT_NOBORDERS, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @hFrameWnd, align 4
  %149 = load i32, i32* @STATUS_WINDOW, align 4
  %150 = call i64 @CreateStatusWindowW(i32 %147, i8* bitcast ([1 x i32]* @.str to i8*), i32 %148, i32 %149)
  store i64 %150, i64* @hStatusBar, align 8
  %151 = load i64, i64* @hStatusBar, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %138
  %154 = load i32, i32* @hFrameWnd, align 4
  %155 = load i32, i32* @FALSE, align 4
  %156 = call i32 @SetupStatusBar(i32 %154, i32 %155)
  %157 = load i8*, i8** @hMenuFrame, align 8
  %158 = load i32, i32* @ID_VIEW_MENU, align 4
  %159 = call i32* @GetSubMenu(i8* %157, i32 %158)
  %160 = load i32, i32* @ID_VIEW_STATUSBAR, align 4
  %161 = load i32, i32* @MF_BYCOMMAND, align 4
  %162 = load i32, i32* @MF_CHECKED, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @CheckMenuItem(i32* %159, i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %153, %138
  %166 = call i32 (...) @LoadSettings()
  %167 = load i32, i32* @hFrameWnd, align 4
  %168 = call i32 @UpdateWindow(i32 %167)
  %169 = load i32, i32* @TRUE, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %165, %136
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @LoadIconW(i8*, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i64 @LoadImageW(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i8* @LoadCursorW(i32*, i32) #1

declare dso_local i32 @RegisterClassExW(%struct.TYPE_4__*) #1

declare dso_local i32 @RegisterHexEditorClass(i8*) #1

declare dso_local i8* @LoadMenuW(i8*, i32) #1

declare dso_local i32 @InitCommonControls(...) #1

declare dso_local i32* @GetSubMenu(i8*, i32) #1

declare dso_local i32 @InitializeAclUiDll(...) #1

declare dso_local i32 @RemoveMenu(i32*, i32, i32) #1

declare dso_local i32 @SetMenuDefaultItem(i32*, i32, i32) #1

declare dso_local i32 @RegisterClipboardFormatW(i32) #1

declare dso_local i32 @CreateWindowExW(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i32*) #1

declare dso_local i64 @UlongToPtr(i32) #1

declare dso_local i64 @CreateStatusWindowW(i32, i8*, i32, i32) #1

declare dso_local i32 @SetupStatusBar(i32, i32) #1

declare dso_local i32 @CheckMenuItem(i32*, i32, i32) #1

declare dso_local i32 @LoadSettings(...) #1

declare dso_local i32 @UpdateWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
