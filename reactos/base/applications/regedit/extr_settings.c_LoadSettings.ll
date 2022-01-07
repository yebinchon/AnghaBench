; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_settings.c_LoadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_settings.c_LoadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@g_szGeneralRegKey = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 86, i32 105, i32 101, i32 119, i32 0], align 4
@hMenuFrame = common dso_local global i32 0, align 4
@ID_VIEW_MENU = common dso_local global i32 0, align 4
@ID_VIEW_STATUSBAR = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@MF_CHECKED = common dso_local global i32 0, align 4
@MF_UNCHECKED = common dso_local global i32 0, align 4
@hStatusBar = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@g_pChildWnd = common dso_local global %struct.TYPE_8__* null, align 8
@hFrameWnd = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 76, i32 97, i32 115, i32 116, i32 75, i32 101, i32 121, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadSettings() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  store i32* null, i32** %1, align 8
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %13 = load i32, i32* @g_szGeneralRegKey, align 4
  %14 = call i64 @RegOpenKeyW(i32 %12, i32 %13, i32** %1)
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %113

17:                                               ; preds = %0
  store i32 32, i32* %5, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %1, align 8
  %20 = ptrtoint %struct.TYPE_6__* %4 to i32
  %21 = call i64 @RegQueryValueExW(i32* %19, i8* bitcast ([5 x i32]* @.str to i8*), i32* null, i32* null, i32 %20, i32* %5)
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %26, 32
  br i1 %27, label %28, label %90

28:                                               ; preds = %24
  %29 = load i32, i32* @hMenuFrame, align 4
  %30 = load i32, i32* @ID_VIEW_MENU, align 4
  %31 = call i32 @GetSubMenu(i32 %29, i32 %30)
  %32 = load i32, i32* @ID_VIEW_STATUSBAR, align 4
  %33 = load i32, i32* @MF_BYCOMMAND, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @MF_CHECKED, align 4
  br label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @MF_UNCHECKED, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = or i32 %33, %42
  %44 = call i32 @CheckMenuItem(i32 %31, i32 %32, i32 %43)
  %45 = load i32, i32* @hStatusBar, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @SW_SHOW, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @SW_HIDE, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @ShowWindow(i32 %45, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pChildWnd, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ListView_SetColumnWidth(i32 %58, i32 0, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pChildWnd, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ListView_SetColumnWidth(i32 %64, i32 1, i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pChildWnd, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ListView_SetColumnWidth(i32 %70, i32 2, i32 %72)
  %74 = load i32, i32* @hFrameWnd, align 4
  %75 = call i32 @GetClientRect(i32 %74, %struct.TYPE_7__* %7)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pChildWnd, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ResizeWnd(i32 %81, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load i32, i32* @hFrameWnd, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %89 = call i32 @SetWindowPlacement(i32 %87, %struct.TYPE_9__* %88)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %53, %24
  br label %91

91:                                               ; preds = %90, %17
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @hFrameWnd, align 4
  %96 = load i32, i32* @SW_SHOWNORMAL, align 4
  %97 = call i32 @ShowWindow(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %100 = load i32, i32* @g_szGeneralRegKey, align 4
  %101 = call i32 @COUNT_OF(i32* %11)
  %102 = call i64 @QueryStringValue(i32 %99, i32 %100, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32* %11, i32 %101)
  %103 = load i64, i64* @ERROR_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_pChildWnd, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SelectNode(i32 %108, i32* %11)
  br label %110

110:                                              ; preds = %105, %98
  %111 = load i32*, i32** %1, align 8
  %112 = call i32 @RegCloseKey(i32* %111)
  br label %117

113:                                              ; preds = %0
  %114 = load i32, i32* @hFrameWnd, align 4
  %115 = load i32, i32* @SW_SHOWNORMAL, align 4
  %116 = call i32 @ShowWindow(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %118)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyW(i32, i32, i32**) #2

declare dso_local i64 @RegQueryValueExW(i32*, i8*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @CheckMenuItem(i32, i32, i32) #2

declare dso_local i32 @GetSubMenu(i32, i32) #2

declare dso_local i32 @ShowWindow(i32, i32) #2

declare dso_local i32 @ListView_SetColumnWidth(i32, i32, i32) #2

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @ResizeWnd(i32, i32) #2

declare dso_local i32 @SetWindowPlacement(i32, %struct.TYPE_9__*) #2

declare dso_local i64 @QueryStringValue(i32, i32, i8*, i32*, i32) #2

declare dso_local i32 @COUNT_OF(i32*) #2

declare dso_local i32 @SelectNode(i32, i32*) #2

declare dso_local i32 @RegCloseKey(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
