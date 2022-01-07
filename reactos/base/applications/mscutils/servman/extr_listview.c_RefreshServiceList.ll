; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_listview.c_RefreshServiceList.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_listview.c_RefreshServiceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }

@WM_SETREDRAW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVDESC = common dso_local global i64 0, align 8
@LVLOGONAS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RefreshServiceList(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @WM_SETREDRAW, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @SendMessage(i32 %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ListView_DeleteAllItems(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i64 @GetServiceList(%struct.TYPE_11__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %64, %20
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 %31
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %3, align 8
  %33 = call i32 @ZeroMemory(%struct.TYPE_12__* %4, i32 24)
  %34 = load i32, i32* @LVIF_TEXT, align 4
  %35 = load i32, i32* @LVIF_PARAM, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = ptrtoint %struct.TYPE_13__* %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ListView_InsertItem(i32 %47, %struct.TYPE_12__* %4)
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i64, i64* @LVDESC, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %60, %27
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @LVLOGONAS, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @ChangeListViewText(%struct.TYPE_11__* %56, %struct.TYPE_13__* %57, i64 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %51

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %21

67:                                               ; preds = %21
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = call i32 @UpdateServiceCount(%struct.TYPE_11__* %68)
  br label %70

70:                                               ; preds = %67, %1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WM_SETREDRAW, align 4
  %75 = load i32, i32* @TRUE, align 4
  %76 = call i32 @SendMessageW(i32 %73, i32 %74, i32 %75, i32 0)
  %77 = load i32, i32* @TRUE, align 4
  ret i32 %77
}

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @ListView_DeleteAllItems(i32) #1

declare dso_local i64 @GetServiceList(%struct.TYPE_11__*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ListView_InsertItem(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ChangeListViewText(%struct.TYPE_11__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @UpdateServiceCount(%struct.TYPE_11__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
