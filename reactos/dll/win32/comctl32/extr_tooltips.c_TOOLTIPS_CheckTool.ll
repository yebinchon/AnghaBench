; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_CheckTool.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_tooltips.c_TOOLTIPS_CheckTool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@TTM_WINDOWFROMPOINT = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@TTS_ALWAYSTIP = common dso_local global i32 0, align 4
@TTF_IDISHWND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"not active: hwnd %p, parent %p, active %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tool %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @TOOLTIPS_CheckTool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TOOLTIPS_CheckTool(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call i32 @GetCursorPos(i32* %6)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TTM_WINDOWFROMPOINT, align 4
  %16 = ptrtoint i32* %6 to i32
  %17 = call i64 @SendMessageW(i32 %14, i32 %15, i32 0, i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @ScreenToClient(i64 %22, i32* %6)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @TOOLTIPS_GetToolFromPoint(%struct.TYPE_6__* %24, i64 %25, i32* %6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %80

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GWL_STYLE, align 4
  %35 = call i32 @GetWindowLongW(i32 %33, i32 %34)
  %36 = load i32, i32* @TTS_ALWAYSTIP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @TTF_IDISHWND, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  br label %63

59:                                               ; preds = %42
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i64 [ %58, %55 ], [ %62, %59 ]
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @TOOLTIPS_IsWindowActive(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %10, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @GetParent(i64 %71)
  %73 = call i32 (...) @GetActiveWindow()
  %74 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %72, i32 %73)
  store i32 -1, i32* %3, align 4
  br label %80

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %39, %30
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %68, %29, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @GetCursorPos(i32*) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @ScreenToClient(i64, i32*) #1

declare dso_local i32 @TOOLTIPS_GetToolFromPoint(%struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @TOOLTIPS_IsWindowActive(i64) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @GetParent(i64) #1

declare dso_local i32 @GetActiveWindow(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
