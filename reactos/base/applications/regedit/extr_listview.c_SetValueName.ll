; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_SetValueName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_listview.c_SetValueName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@LVIS_FOCUSED = common dso_local global i32 0, align 4
@LVIS_SELECTED = common dso_local global i32 0, align 4
@LVFI_STRING = common dso_local global i32 0, align 4
@iListViewSelect = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetValueName(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @ListView_GetItemCount(i32 %9)
  store i64 %10, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @LVIS_FOCUSED, align 4
  %19 = load i32, i32* @LVIS_SELECTED, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ListView_SetItemState(i32 %16, i64 %17, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %11

25:                                               ; preds = %11
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @LVFI_STRING, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @ListView_FindItem(i32 %34, i32 -1, %struct.TYPE_3__* %8)
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @LVIS_FOCUSED, align 4
  %40 = load i32, i32* @LVIS_SELECTED, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @LVIS_FOCUSED, align 4
  %43 = load i32, i32* @LVIS_SELECTED, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @ListView_SetItemState(i32 %37, i64 %38, i32 %41, i32 %44)
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* @iListViewSelect, align 8
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @ListView_GetItemCount(i32) #1

declare dso_local i32 @ListView_SetItemState(i32, i64, i32, i32) #1

declare dso_local i64 @ListView_FindItem(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
