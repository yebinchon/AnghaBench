; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_column.c_ProcessPage_OnViewSelectColumns.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_column.c_ProcessPage_OnViewSelectColumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@hInst = common dso_local global i32 0, align 4
@IDD_COLUMNS_DIALOG = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@ColumnsDialogWndProc = common dso_local global i32 0, align 4
@IDOK = common dso_local global i64 0, align 8
@hProcessPageHeaderCtrl = common dso_local global i32 0, align 4
@hProcessPageListCtrl = common dso_local global i32 0, align 4
@COLUMN_NMAX = common dso_local global i32 0, align 4
@TaskManagerSettings = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ColumnPresets = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessPage_OnViewSelectColumns() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @hInst, align 4
  %3 = load i32, i32* @IDD_COLUMNS_DIALOG, align 4
  %4 = call i32 @MAKEINTRESOURCEW(i32 %3)
  %5 = load i32, i32* @hMainWnd, align 4
  %6 = load i32, i32* @ColumnsDialogWndProc, align 4
  %7 = call i64 @DialogBoxW(i32 %2, i32 %4, i32 %5, i32 %6)
  %8 = load i64, i64* @IDOK, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %0
  %11 = load i32, i32* @hProcessPageHeaderCtrl, align 4
  %12 = call i32 @Header_GetItemCount(i32 %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %21, %10
  %15 = load i32, i32* %1, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @hProcessPageListCtrl, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @ListView_DeleteColumn(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %1, align 4
  br label %14

24:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @COLUMN_NMAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TaskManagerSettings, i32 0, i32 0), align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ColumnPresets, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @TaskManagerSettings, i32 0, i32 1), align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %25

48:                                               ; preds = %25
  %49 = call i32 (...) @AddColumns()
  br label %50

50:                                               ; preds = %48, %0
  ret void
}

declare dso_local i64 @DialogBoxW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @Header_GetItemCount(i32) #1

declare dso_local i32 @ListView_DeleteColumn(i32, i32) #1

declare dso_local i32 @AddColumns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
