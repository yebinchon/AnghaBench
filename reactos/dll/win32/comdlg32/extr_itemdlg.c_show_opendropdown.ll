; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_show_opendropdown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_show_opendropdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@IDOK = common dso_local global i32 0, align 4
@WM_MENUCOMMAND = common dso_local global i32 0, align 4
@PM_REMOVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MIIM_ID = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @show_opendropdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_opendropdown(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__, align 4
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IDOK, align 4
  %11 = call i32 @GetDlgItem(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @GetWindowRect(i32 %12, %struct.TYPE_10__* %4)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @TrackPopupMenu(i32 %16, i32 0, i32 %18, i32 %20, i32 0, i32 %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WM_MENUCOMMAND, align 4
  %31 = load i32, i32* @WM_MENUCOMMAND, align 4
  %32 = load i32, i32* @PM_REMOVE, align 4
  %33 = call i64 @PeekMessageW(%struct.TYPE_11__* %5, i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %26
  %36 = load i32, i32* @TRUE, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i32 12, i32* %39, align 4
  %40 = load i32, i32* @MIIM_ID, align 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @GetMenuItemInfoW(i32 %44, i32 %46, i32 %47, %struct.TYPE_12__* %6)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = call i32 @on_default_action(%struct.TYPE_13__* %53)
  %55 = call i64 @SUCCEEDED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %35
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = call i32 @EndDialog(i32 %60, i32 %61)
  br label %67

63:                                               ; preds = %35
  %64 = load i32, i32* @FALSE, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %26, %1
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @TrackPopupMenu(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @PeekMessageW(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetMenuItemInfoW(i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @on_default_action(%struct.TYPE_13__*) #1

declare dso_local i32 @EndDialog(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
