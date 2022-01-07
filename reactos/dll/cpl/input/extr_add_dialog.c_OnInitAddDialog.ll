; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_add_dialog.c_OnInitAddDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_add_dialog.c_OnInitAddDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_6__* }

@IDC_INPUT_LANG_COMBO = common dso_local global i32 0, align 4
@IDC_KEYBOARD_LO_COMBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @OnInitAddDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitAddDialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IDC_INPUT_LANG_COMBO, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IDC_KEYBOARD_LO_COMBO, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = call i64 (...) @GetSystemDefaultLCID()
  store i64 %17, i64* %8, align 8
  %18 = call %struct.TYPE_6__* (...) @LocaleList_GetFirst()
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  br label %19

19:                                               ; preds = %42, %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ComboBox_AddString(i32 %23, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = call i32 @ComboBox_SetItemData(i32 %28, i32 %29, %struct.TYPE_6__* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ComboBox_SetCurSel(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %22
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %6, align 8
  br label %19

46:                                               ; preds = %19
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @GetDefaultLayoutForLocale(i64 %47)
  store i64 %48, i64* %9, align 8
  %49 = call %struct.TYPE_6__* (...) @LayoutList_GetFirst()
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %7, align 8
  br label %50

50:                                               ; preds = %73, %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ComboBox_AddString(i32 %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = call i32 @ComboBox_SetItemData(i32 %59, i32 %60, %struct.TYPE_6__* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ComboBox_SetCurSel(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %53
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %7, align 8
  br label %50

77:                                               ; preds = %50
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @ComboBox_SetCurSel(i32 %81, i32 0)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @GetSystemDefaultLCID(...) #1

declare dso_local %struct.TYPE_6__* @LocaleList_GetFirst(...) #1

declare dso_local i32 @ComboBox_AddString(i32, i32) #1

declare dso_local i32 @ComboBox_SetItemData(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

declare dso_local i64 @GetDefaultLayoutForLocale(i64) #1

declare dso_local %struct.TYPE_6__* @LayoutList_GetFirst(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
