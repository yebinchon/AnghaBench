; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_SetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_edit.c_EDIT_WM_SetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@EC_LEFTMARGIN = common dso_local global i32 0, align 4
@EC_RIGHTMARGIN = common dso_local global i32 0, align 4
@EC_USEFONTINFO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@EF_FOCUSED = common dso_local global i32 0, align 4
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i64)* @EDIT_WM_SetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_SetFont(%struct.TYPE_14__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = call i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GetDC(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SelectObject(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @GetTextMetricsW(i32 %27, %struct.TYPE_13__* %7)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @SelectObject(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %26
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ReleaseDC(i32 %46, i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GetClientRect(i32 %51, i32* %10)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call i32 @EDIT_SetRectNP(%struct.TYPE_14__* %53, i32* %10)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = load i32, i32* @EC_LEFTMARGIN, align 4
  %57 = load i32, i32* @EC_RIGHTMARGIN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EC_USEFONTINFO, align 4
  %60 = load i32, i32* @EC_USEFONTINFO, align 4
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @EDIT_EM_SetMargins(%struct.TYPE_14__* %55, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ES_MULTILINE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %43
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = call i32 @get_text_length(%struct.TYPE_14__* %71)
  %73 = call i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_14__* %70, i32 0, i32 %72, i32 0, i32* null)
  br label %77

74:                                               ; preds = %43
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = call i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_14__* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i64, i64* %6, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @EDIT_UpdateText(%struct.TYPE_14__* %81, i32* null, i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EF_FOCUSED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %84
  %92 = call i32 (...) @DestroyCaret()
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @CreateCaret(i32 %95, i32 0, i32 1, i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @EF_AFTER_WRAP, align 4
  %108 = and i32 %106, %107
  %109 = call i32 @EDIT_SetCaretPos(%struct.TYPE_14__* %100, i32 %103, i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ShowCaret(i32 %112)
  br label %114

114:                                              ; preds = %91, %84
  ret void
}

declare dso_local i32 @EDIT_InvalidateUniscribeData(%struct.TYPE_14__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @GetTextMetricsW(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @EDIT_SetRectNP(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @EDIT_EM_SetMargins(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @EDIT_BuildLineDefs_ML(%struct.TYPE_14__*, i32, i32, i32, i32*) #1

declare dso_local i32 @get_text_length(%struct.TYPE_14__*) #1

declare dso_local i32 @EDIT_CalcLineWidth_SL(%struct.TYPE_14__*) #1

declare dso_local i32 @EDIT_UpdateText(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @DestroyCaret(...) #1

declare dso_local i32 @CreateCaret(i32, i32, i32, i32) #1

declare dso_local i32 @EDIT_SetCaretPos(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @ShowCaret(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
