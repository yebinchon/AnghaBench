; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawTics.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawTics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@COLOR_3DDKSHADOW = common dso_local global i32 0, align 4
@TBS_VERT = common dso_local global i32 0, align 4
@TKP_TICSVERT = common dso_local global i32 0, align 4
@TKP_TICS = common dso_local global i32 0, align 4
@TSS_NORMAL = common dso_local global i32 0, align 4
@TMT_COLOR = common dso_local global i32 0, align 4
@TIC_EDGE = common dso_local global i32 0, align 4
@TBS_ENABLESELRANGE = common dso_local global i32 0, align 4
@TIC_SELECTIONMARKMIN = common dso_local global i32 0, align 4
@TIC_SELECTIONMARKMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @TRACKBAR_DrawTics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TRACKBAR_DrawTics(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 15
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %17 = load i32, i32* @PS_SOLID, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* @COLOR_3DDKSHADOW, align 4
  %22 = call i32 @GetSysColor(i32 %21)
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @GetWindowTheme(i32 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TBS_VERT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @TKP_TICSVERT, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @TKP_TICS, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %11, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @TSS_NORMAL, align 4
  %47 = load i32, i32* @TMT_COLOR, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %49 = call i32 @GetThemeColor(i64 %44, i32 %45, i32 %46, i32 %47, i32* %48)
  br label %50

50:                                               ; preds = %42, %2
  %51 = call i64 @CreatePenIndirect(%struct.TYPE_10__* %7)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @SelectObject(i32 %55, i64 %56)
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i64 [ %57, %54 ], [ 0, %58 ]
  store i64 %60, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %79, %59
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @TRACKBAR_DrawTic(%struct.TYPE_9__* %68, i32 %69, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %61

82:                                               ; preds = %61
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @TIC_EDGE, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @TRACKBAR_DrawTic(%struct.TYPE_9__* %83, i32 %84, i32 %87, i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @TIC_EDGE, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @TRACKBAR_DrawTic(%struct.TYPE_9__* %92, i32 %93, i32 %96, i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TBS_ENABLESELRANGE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %130

107:                                              ; preds = %82
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = call i64 @TRACKBAR_HasSelection(%struct.TYPE_9__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @TIC_SELECTIONMARKMIN, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @TRACKBAR_DrawTic(%struct.TYPE_9__* %112, i32 %113, i32 %116, i32 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @TIC_SELECTIONMARKMAX, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @TRACKBAR_DrawTic(%struct.TYPE_9__* %121, i32 %122, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %111, %107, %82
  %131 = load i64, i64* %9, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %4, align 4
  %135 = load i64, i64* %8, align 8
  %136 = call i64 @SelectObject(i32 %134, i64 %135)
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @DeleteObject(i64 %137)
  br label %139

139:                                              ; preds = %133, %130
  ret void
}

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @GetThemeColor(i64, i32, i32, i32, i32*) #1

declare dso_local i64 @CreatePenIndirect(%struct.TYPE_10__*) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @TRACKBAR_DrawTic(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @TRACKBAR_HasSelection(%struct.TYPE_9__*) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
