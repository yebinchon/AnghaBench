; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_SysKeyDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_SysKeyDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@VK_BACK = common dso_local global i64 0, align 8
@VK_UP = common dso_local global i64 0, align 8
@VK_DOWN = common dso_local global i64 0, align 8
@WM_SYSKEYDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32)* @EDIT_WM_SysKeyDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_SysKeyDown(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @VK_BACK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 8192
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = call i64 @EDIT_EM_CanUndo(%struct.TYPE_6__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @EDIT_EM_Undo(%struct.TYPE_6__* %20)
  br label %22

22:                                               ; preds = %19, %15
  store i32 0, i32* %4, align 4
  br label %48

23:                                               ; preds = %11, %3
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @VK_UP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @VK_DOWN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27, %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32, i32* @WM_SYSKEYDOWN, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @EDIT_CheckCombo(%struct.TYPE_6__* %32, i32 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %48

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WM_SYSKEYDOWN, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @DefWindowProcW(i32 %43, i32 %44, i64 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %40, %37, %22
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @EDIT_EM_CanUndo(%struct.TYPE_6__*) #1

declare dso_local i32 @EDIT_EM_Undo(%struct.TYPE_6__*) #1

declare dso_local i64 @EDIT_CheckCombo(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @DefWindowProcW(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
