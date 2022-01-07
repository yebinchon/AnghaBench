; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_KeyDown.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_KeyDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"() Key: %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@WM_KEYDOWN = common dso_local global i32 0, align 4
@HOTKEYF_SHIFT = common dso_local global i64 0, align 8
@HOTKEYF_CONTROL = common dso_local global i64 0, align 8
@HOTKEYF_ALT = common dso_local global i64 0, align 8
@WM_COMMAND = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @HOTKEY_KeyDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HOTKEY_KeyDown(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @GWL_STYLE, align 4
  %14 = call i32 @GetWindowLongW(i64 %12, i32 %13)
  %15 = load i32, i32* @WS_DISABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %62 [
    i32 131, label %31
    i32 128, label %31
    i32 129, label %31
    i32 134, label %31
    i32 133, label %31
    i32 136, label %31
    i32 130, label %44
    i32 135, label %50
    i32 132, label %56
  ]

31:                                               ; preds = %19, %19, %19, %19, %19, %19
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @InvalidateRect(i64 %34, i32* null, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @WM_KEYDOWN, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DefWindowProcW(i64 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %122

44:                                               ; preds = %19
  %45 = load i64, i64* @HOTKEYF_SHIFT, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = or i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %88

50:                                               ; preds = %19
  %51 = load i64, i64* @HOTKEYF_CONTROL, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %88

56:                                               ; preds = %19
  %57 = load i64, i64* @HOTKEYF_ALT, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %88

62:                                               ; preds = %19
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = call i32 @HOTKEY_IsCombInv(%struct.TYPE_4__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i8* @MAKEWORD(i32 %67, i64 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %84

75:                                               ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @MAKEWORD(i32 %76, i64 %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %75, %66
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %56, %50, %44
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %94, %88
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @TRUE, align 4
  %105 = call i32 @InvalidateRect(i64 %103, i32* null, i32 %104)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @WM_COMMAND, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @GetDlgCtrlID(i64 %112)
  %114 = load i32, i32* @EN_CHANGE, align 4
  %115 = call i32 @MAKEWPARAM(i32 %113, i32 %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @SendMessageW(i32 %108, i32 %109, i32 %115, i32 %119)
  br label %121

121:                                              ; preds = %100, %94
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %31, %18
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @InvalidateRect(i64, i32*, i32) #1

declare dso_local i32 @DefWindowProcW(i64, i32, i32, i32) #1

declare dso_local i32 @HOTKEY_IsCombInv(%struct.TYPE_4__*) #1

declare dso_local i8* @MAKEWORD(i32, i64) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEWPARAM(i32, i32) #1

declare dso_local i32 @GetDlgCtrlID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
