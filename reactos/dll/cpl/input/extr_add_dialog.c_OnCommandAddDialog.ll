; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_add_dialog.c_OnCommandAddDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_add_dialog.c_OnCommandAddDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IDC_KEYBOARD_LO_COMBO = common dso_local global i32 0, align 4
@CBN_SELCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @OnCommandAddDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnCommandAddDialog(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @LOWORD(i32 %17)
  switch i32 %18, label %100 [
    i32 128, label %19
    i32 130, label %42
    i32 129, label %47
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @GetDlgItem(i32 %20, i32 129)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IDC_KEYBOARD_LO_COMBO, align 4
  %24 = call i32 @GetDlgItem(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ComboBox_GetCurSel(i32 %26)
  %28 = call i64 @ComboBox_GetItemData(i32 %25, i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ComboBox_GetCurSel(i32 %31)
  %33 = call i64 @ComboBox_GetItemData(i32 %30, i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = call i32 @InputList_Add(%struct.TYPE_5__* %35, %struct.TYPE_6__* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @LOWORD(i32 %39)
  %41 = call i32 @EndDialog(i32 %38, i32 %40)
  br label %100

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @LOWORD(i32 %44)
  %46 = call i32 @EndDialog(i32 %43, i32 %45)
  br label %100

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @HIWORD(i32 %48)
  %50 = load i32, i32* @CBN_SELCHANGE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %99

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @GetDlgItem(i32 %53, i32 129)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IDC_KEYBOARD_LO_COMBO, align 4
  %57 = call i32 @GetDlgItem(i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ComboBox_GetCurSel(i32 %59)
  %61 = call i64 @ComboBox_GetItemData(i32 %58, i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %12, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = icmp ne %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %98

65:                                               ; preds = %52
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @GetDefaultLayoutForLocale(i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @ComboBox_GetCount(i32 %70)
  store i32 %71, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %94, %65
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i64 @ComboBox_GetItemData(i32 %77, i32 %78)
  %80 = inttoptr i64 %79 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %16, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @ComboBox_SetCurSel(i32 %90, i32 %91)
  br label %97

93:                                               ; preds = %83, %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %72

97:                                               ; preds = %89, %72
  br label %98

98:                                               ; preds = %97, %52
  br label %99

99:                                               ; preds = %98, %47
  br label %100

100:                                              ; preds = %2, %99, %42, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @ComboBox_GetItemData(i32, i32) #1

declare dso_local i32 @ComboBox_GetCurSel(i32) #1

declare dso_local i32 @InputList_Add(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @EndDialog(i32, i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @GetDefaultLayoutForLocale(i32) #1

declare dso_local i32 @ComboBox_GetCount(i32) #1

declare dso_local i32 @ComboBox_SetCurSel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
