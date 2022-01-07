; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_key_settings_dialog.c_UpdateKeySettingsListView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_key_settings_dialog.c_UpdateKeySettingsListView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32* }

@MAX_STR_LEN = common dso_local global i32 0, align 4
@hApplet = common dso_local global i32 0, align 4
@IDS_SWITCH_BET_INLANG = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVIF_STATE = common dso_local global i32 0, align 4
@_KeySettings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@IDS_LEFT_ALT_SHIFT = common dso_local global i32 0, align 4
@IDS_CTRL_SHIFT = common dso_local global i32 0, align 4
@IDS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UpdateKeySettingsListView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateKeySettingsListView(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @MAX_STR_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ListView_DeleteAllItems(i32 %12)
  %14 = call i32 @ZeroMemory(%struct.TYPE_5__* %6, i32 24)
  %15 = load i32, i32* @hApplet, align 4
  %16 = load i32, i32* @IDS_SWITCH_BET_INLANG, align 4
  %17 = call i32 @ARRAYSIZE(i32* %11)
  %18 = call i32 @LoadStringW(i32 %15, i32 %16, i32* %11, i32 %17)
  %19 = load i32, i32* @LVIF_TEXT, align 4
  %20 = load i32, i32* @LVIF_PARAM, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LVIF_STATE, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32* %11, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ListView_InsertItem(i32 %27, %struct.TYPE_5__* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_KeySettings, i32 0, i32 0), align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* @hApplet, align 4
  %33 = load i32, i32* @IDS_LEFT_ALT_SHIFT, align 4
  %34 = call i32 @ARRAYSIZE(i32* %11)
  %35 = call i32 @LoadStringW(i32 %32, i32 %33, i32* %11, i32 %34)
  br label %50

36:                                               ; preds = %1
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_KeySettings, i32 0, i32 0), align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @hApplet, align 4
  %41 = load i32, i32* @IDS_CTRL_SHIFT, align 4
  %42 = call i32 @ARRAYSIZE(i32* %11)
  %43 = call i32 @LoadStringW(i32 %40, i32 %41, i32* %11, i32 %42)
  br label %49

44:                                               ; preds = %36
  %45 = load i32, i32* @hApplet, align 4
  %46 = load i32, i32* @IDS_NONE, align 4
  %47 = call i32 @ARRAYSIZE(i32* %11)
  %48 = call i32 @LoadStringW(i32 %45, i32 %46, i32* %11, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ListView_SetItemText(i32 %51, i32 %52, i32 1, i32* %11)
  %54 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ListView_DeleteAllItems(i32) #2

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @ListView_InsertItem(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @ListView_SetItemText(i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
