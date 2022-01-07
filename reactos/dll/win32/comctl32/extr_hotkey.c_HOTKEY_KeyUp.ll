; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_KeyUp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_hotkey.c_HOTKEY_KeyUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"() Key: %d\0A\00", align 1
@HOTKEYF_SHIFT = common dso_local global i64 0, align 8
@HOTKEYF_CONTROL = common dso_local global i64 0, align 8
@HOTKEYF_ALT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@WM_COMMAND = common dso_local global i32 0, align 4
@EN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @HOTKEY_KeyUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HOTKEY_KeyUp(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @GWL_STYLE, align 4
  %11 = call i32 @GetWindowLongW(i64 %9, i32 %10)
  %12 = load i32, i32* @WS_DISABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %44 [
    i32 128, label %23
    i32 130, label %30
    i32 129, label %37
  ]

23:                                               ; preds = %16
  %24 = load i64, i64* @HOTKEYF_SHIFT, align 8
  %25 = xor i64 %24, -1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = and i64 %28, %25
  store i64 %29, i64* %27, align 8
  br label %45

30:                                               ; preds = %16
  %31 = load i64, i64* @HOTKEYF_CONTROL, align 8
  %32 = xor i64 %31, -1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %45

37:                                               ; preds = %16
  %38 = load i64, i64* @HOTKEYF_ALT, align 8
  %39 = xor i64 %38, -1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %42, %39
  store i64 %43, i64* %41, align 8
  br label %45

44:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %73

45:                                               ; preds = %37, %30, %23
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @InvalidateRect(i64 %54, i32* null, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @WM_COMMAND, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @GetDlgCtrlID(i64 %63)
  %65 = load i32, i32* @EN_CHANGE, align 4
  %66 = call i32 @MAKEWPARAM(i32 %64, i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @SendMessageW(i32 %59, i32 %60, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %51, %45
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %44, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @GetWindowLongW(i64, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @InvalidateRect(i64, i32*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @MAKEWPARAM(i32, i32) #1

declare dso_local i32 @GetDlgCtrlID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
