; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_RecalculateVisibleOrder.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_RecalculateVisibleOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @TREEVIEW_RecalculateVisibleOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TREEVIEW_RecalculateVisibleOrder(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = icmp ne %struct.TYPE_15__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %6, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %5, align 8
  br label %21

21:                                               ; preds = %46, %19
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = call i32 @ISVISIBLE(%struct.TYPE_15__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = call i32 @TREEVIEW_ComputeItemInternalMetrics(%struct.TYPE_16__* %32, %struct.TYPE_15__* %33)
  br label %35

35:                                               ; preds = %31, %28, %24
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %35
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = call %struct.TYPE_15__* @TREEVIEW_GetNextListItem(%struct.TYPE_16__* %47, %struct.TYPE_15__* %48)
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %5, align 8
  br label %21

50:                                               ; preds = %21
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %5, align 8
  br label %55

55:                                               ; preds = %62, %50
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = call i32 @TREEVIEW_ComputeItemRect(%struct.TYPE_16__* %59, %struct.TYPE_15__* %60)
  br label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = call %struct.TYPE_15__* @TREEVIEW_GetNextListItem(%struct.TYPE_16__* %63, %struct.TYPE_15__* %64)
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %5, align 8
  br label %55

66:                                               ; preds = %55
  ret void
}

declare dso_local i32 @ISVISIBLE(%struct.TYPE_15__*) #1

declare dso_local i32 @TREEVIEW_ComputeItemInternalMetrics(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @TREEVIEW_GetNextListItem(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @TREEVIEW_ComputeItemRect(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
