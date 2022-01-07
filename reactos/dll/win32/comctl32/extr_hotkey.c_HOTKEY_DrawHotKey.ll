; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_DrawHotKey.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_DrawHotKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@SM_CXBORDER = common dso_local global i32 0, align 4
@SM_CYBORDER = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@comctl32_color = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32)* @HOTKEY_DrawHotKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HOTKEY_DrawHotKey(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @SM_CXBORDER, align 4
  %16 = call i64 @GetSystemMetrics(i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* @SM_CYBORDER, align 4
  %18 = call i64 @GetSystemMetrics(i32 %17)
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SelectObject(i32 %19, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GWL_STYLE, align 4
  %28 = call i32 @GetWindowLongW(i32 %26, i32 %27)
  %29 = load i32, i32* @WS_DISABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @comctl32_color, i32 0, i32 3), align 4
  %35 = call i32 @SetTextColor(i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @comctl32_color, i32 0, i32 2), align 4
  %38 = call i32 @SetBkColor(i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  br label %46

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @comctl32_color, i32 0, i32 1), align 4
  %42 = call i32 @SetTextColor(i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @comctl32_color, i32 0, i32 0), align 4
  %45 = call i32 @SetBkColor(i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @TextOutW(i32 %47, i64 %48, i64 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @GetTextExtentPoint32W(i32 %53, i32 %54, i32 %55, %struct.TYPE_6__* %9)
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %57, %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @SetBkColor(i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @SetTextColor(i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @SelectObject(i32 %69, i32 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @SetCaretPos(i64 %74, i64 %75)
  ret void
}

declare dso_local i64 @GetSystemMetrics(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @TextOutW(i32, i64, i64, i32, i32) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @SetCaretPos(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
