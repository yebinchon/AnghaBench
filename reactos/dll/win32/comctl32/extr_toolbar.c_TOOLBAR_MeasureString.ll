; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_MeasureString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_MeasureString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@TBSTATE_HIDDEN = common dso_local global i32 0, align 4
@TBSTYLE_EX_MIXEDBUTTONS = common dso_local global i32 0, align 4
@BTNS_SHOWTEXT = common dso_local global i32 0, align 4
@DT_VCENTER = common dso_local global i32 0, align 4
@DT_SINGLELINE = common dso_local global i32 0, align 4
@DT_CALCRECT = common dso_local global i32 0, align 4
@BTNS_NOPREFIX = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"string size %d x %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_14__*, i32, %struct.TYPE_16__*)* @TOOLBAR_MeasureString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_MeasureString(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %89

19:                                               ; preds = %4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TBSTATE_HIDDEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %89, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TBSTYLE_EX_MIXEDBUTTONS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BTNS_SHOWTEXT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %33, %26
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = call i32* @TOOLBAR_GetText(%struct.TYPE_13__* %41, %struct.TYPE_14__* %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %88

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @strlenW(i32* %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = call i32 @GetTextExtentPoint32W(i32 %47, i32* %48, i32 %50, %struct.TYPE_16__* %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SetRect(%struct.TYPE_15__* %9, i32 0, i32 0, i32 %55, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* @DT_VCENTER, align 4
  %63 = load i32, i32* @DT_SINGLELINE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @DT_CALCRECT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BTNS_NOPREFIX, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %46
  %74 = load i32, i32* @DT_NOPREFIX, align 4
  br label %76

75:                                               ; preds = %46
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = or i32 %66, %77
  %79 = call i32 @DrawTextW(i32 %60, i32* %61, i32 -1, %struct.TYPE_15__* %9, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %76, %40
  br label %89

89:                                               ; preds = %88, %33, %19, %4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %95)
  ret void
}

declare dso_local i32* @TOOLBAR_GetText(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @GetTextExtentPoint32W(i32, i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i32 @SetRect(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @DrawTextW(i32, i32*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
