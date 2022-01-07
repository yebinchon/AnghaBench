; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_RemoveItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_RemoveItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"%p, (%s)\0A\00", align 1
@TVN_DELETEITEMW = common dso_local global i32 0, align 4
@TVC_UNKNOWN = common dso_local global i32 0, align 4
@TVIF_HANDLE = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@LPSTR_TEXTCALLBACKW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*)* @TREEVIEW_RemoveItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TREEVIEW_RemoveItem(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %7 = call i32 @TREEVIEW_ItemName(%struct.TYPE_14__* %6)
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %5, i32 %7)
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i32 @TREEVIEW_RemoveAllChildren(%struct.TYPE_15__* %14, %struct.TYPE_14__* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = load i32, i32* @TVN_DELETEITEMW, align 4
  %20 = load i32, i32* @TVC_UNKNOWN, align 4
  %21 = load i32, i32* @TVIF_HANDLE, align 4
  %22 = load i32, i32* @TVIF_PARAM, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = call i32 @TREEVIEW_SendTreeviewNotify(%struct.TYPE_15__* %18, i32 %19, i32 %20, i32 %23, %struct.TYPE_14__* %24, i32 0)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = call i32 @TREEVIEW_UnlinkItem(%struct.TYPE_14__* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LPSTR_TEXTCALLBACKW, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %17
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @heap_free(i64 %40)
  br label %42

42:                                               ; preds = %37, %17
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = call i32 @TREEVIEW_FreeItem(%struct.TYPE_15__* %43, %struct.TYPE_14__* %44)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @TREEVIEW_ItemName(%struct.TYPE_14__*) #1

declare dso_local i32 @TREEVIEW_RemoveAllChildren(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @TREEVIEW_SendTreeviewNotify(%struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @TREEVIEW_UnlinkItem(%struct.TYPE_14__*) #1

declare dso_local i32 @heap_free(i64) #1

declare dso_local i32 @TREEVIEW_FreeItem(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
