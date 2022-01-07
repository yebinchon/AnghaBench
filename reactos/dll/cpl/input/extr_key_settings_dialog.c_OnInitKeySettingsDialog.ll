; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_key_settings_dialog.c_OnInitKeySettingsDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_key_settings_dialog.c_OnInitKeySettingsDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i32, i32 }

@_KeySettings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@KLF_SHIFTLOCK = common dso_local global i32 0, align 4
@IDC_PRESS_SHIFT_KEY_RB = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@IDC_PRESS_CL_KEY_RB = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i32 0, align 4
@IDC_KEY_LISTVIEW = common dso_local global i32 0, align 4
@LVS_EX_FULLROWSELECT = common dso_local global i32 0, align 4
@LVCF_FMT = common dso_local global i32 0, align 4
@LVCF_TEXT = common dso_local global i32 0, align 4
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVCF_SUBITEM = common dso_local global i32 0, align 4
@LVCFMT_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@LVCFMT_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @OnInitKeySettingsDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitKeySettingsDialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @ReadKeysSettings()
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_KeySettings, i32 0, i32 0), align 4
  %8 = load i32, i32* @KLF_SHIFTLOCK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IDC_PRESS_SHIFT_KEY_RB, align 4
  %14 = load i32, i32* @BST_CHECKED, align 4
  %15 = call i32 @CheckDlgButton(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IDC_PRESS_CL_KEY_RB, align 4
  %18 = load i32, i32* @BST_UNCHECKED, align 4
  %19 = call i32 @CheckDlgButton(i32 %16, i32 %17, i32 %18)
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @IDC_PRESS_SHIFT_KEY_RB, align 4
  %23 = load i32, i32* @BST_UNCHECKED, align 4
  %24 = call i32 @CheckDlgButton(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @IDC_PRESS_CL_KEY_RB, align 4
  %27 = load i32, i32* @BST_CHECKED, align 4
  %28 = call i32 @CheckDlgButton(i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %11
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IDC_KEY_LISTVIEW, align 4
  %32 = call i32 @GetDlgItem(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LVS_EX_FULLROWSELECT, align 4
  %35 = call i32 @ListView_SetExtendedListViewStyle(i32 %33, i32 %34)
  %36 = call i32 @ZeroMemory(%struct.TYPE_5__* %4, i32 24)
  %37 = load i32, i32* @LVCF_FMT, align 4
  %38 = load i32, i32* @LVCF_TEXT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LVCF_WIDTH, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @LVCF_SUBITEM, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* @LVCFMT_LEFT, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i8* bitcast ([1 x i32]* @.str to i8*), i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 210, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ListView_InsertColumn(i32 %50, i32 0, %struct.TYPE_5__* %4)
  %52 = load i32, i32* @LVCFMT_RIGHT, align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 145, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i8* bitcast ([1 x i32]* @.str to i8*), i8** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ListView_InsertColumn(i32 %57, i32 1, %struct.TYPE_5__* %4)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @UpdateKeySettingsListView(i32 %59)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ReadKeysSettings(...) #1

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ListView_SetExtendedListViewStyle(i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ListView_InsertColumn(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @UpdateKeySettingsListView(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
