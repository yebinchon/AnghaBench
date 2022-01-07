; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_procpage.c_GetSelectedProcessId.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_procpage.c_GetSelectedProcessId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@hProcessPageListCtrl = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSelectedProcessId() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = load i32, i32* @hProcessPageListCtrl, align 4
  %5 = call i32 @ListView_GetSelectedCount(i32 %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %27

7:                                                ; preds = %0
  %8 = load i32, i32* @hProcessPageListCtrl, align 4
  %9 = call i32 @ListView_GetSelectionMark(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 24)
  %11 = load i32, i32* @LVIF_PARAM, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @hProcessPageListCtrl, align 4
  %16 = call i32 @ListView_GetItem(i32 %15, %struct.TYPE_5__* %3)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %1, align 4
  br label %28

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %0
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @ListView_GetSelectedCount(i32) #1

declare dso_local i32 @ListView_GetSelectionMark(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @ListView_GetItem(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
