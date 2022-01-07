; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NCPaint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NCPaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@WS_MINIMIZE = common dso_local global i32 0, align 4
@WS_BORDER = common dso_local global i32 0, align 4
@DCX_USESTYLE = common dso_local global i32 0, align 4
@DCX_WINDOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"rect (%s)\0A\00", align 1
@EDGE_ETCHED = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BDR_RAISEDINNER = common dso_local global i32 0, align 4
@BF_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @REBAR_NCPaint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_NCPaint(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WS_MINIMIZE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WS_BORDER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %14
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DCX_USESTYLE, align 4
  %26 = load i32, i32* @DCX_WINDOW, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @GetDCEx(i32 %24, i32 0, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %96

31:                                               ; preds = %21
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @GetWindowRect(i32 %34, %struct.TYPE_9__* %4)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @OffsetRect(%struct.TYPE_9__* %4, i32 %38, i32 %41)
  %43 = call i32 @wine_dbgstr_rect(%struct.TYPE_9__* %4)
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @EDGE_ETCHED, align 4
  %47 = load i32, i32* @BF_RECT, align 4
  %48 = call i32 @DrawEdge(i32 %45, %struct.TYPE_9__* %4, i32 %46, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ReleaseDC(i32 %51, i32 %52)
  br label %95

54:                                               ; preds = %14
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @GetWindowTheme(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %54
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DCX_USESTYLE, align 4
  %65 = load i32, i32* @DCX_WINDOW, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @GetDCEx(i32 %63, i32 0, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %96

70:                                               ; preds = %60
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GetWindowRect(i32 %73, %struct.TYPE_9__* %4)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 0, %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @OffsetRect(%struct.TYPE_9__* %4, i32 %77, i32 %80)
  %82 = call i32 @wine_dbgstr_rect(%struct.TYPE_9__* %4)
  %83 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @BDR_RAISEDINNER, align 4
  %87 = load i32, i32* @BF_TOP, align 4
  %88 = call i32 @DrawThemeEdge(i32 %84, i32 %85, i32 0, i32 0, %struct.TYPE_9__* %4, i32 %86, i32 %87, i32* null)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @ReleaseDC(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %70, %54
  br label %95

95:                                               ; preds = %94, %31
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %69, %30, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @GetDCEx(i32, i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @OffsetRect(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_9__*) #1

declare dso_local i32 @DrawEdge(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @GetWindowTheme(i32) #1

declare dso_local i32 @DrawThemeEdge(i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
