; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WC_EDITW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64*)* @EDIT_WM_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_Create(%struct.TYPE_9__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = call i32 @debugstr_w(i64* %6)
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @EDIT_WM_SetFont(%struct.TYPE_9__* %9, i32 0, i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = call i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_9__* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @GetClientRect(i32 %16, i32* %5)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i32 @EDIT_SetRectNP(%struct.TYPE_9__* %18, i32* %5)
  %20 = load i64*, i64** %4, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i64*, i64** %4, align 8
  %30 = load i64*, i64** %4, align 8
  %31 = call i32 @strlenW(i64* %30)
  %32 = load i32, i32* @FALSE, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__* %27, i32 %28, i64* %29, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__* %39)
  br label %41

41:                                               ; preds = %26, %22, %2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @WC_EDITW, align 4
  %48 = call i32 @OpenThemeData(i32 %46, i32 %47)
  ret i32 1
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @EDIT_WM_SetFont(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @EDIT_EM_EmptyUndoBuffer(%struct.TYPE_9__*) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @EDIT_SetRectNP(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_9__*, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_9__*) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @OpenThemeData(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
