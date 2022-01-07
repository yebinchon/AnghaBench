; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_Refresh.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_Refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32*, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CLR_DEFAULT = common dso_local global i64 0, align 8
@COLOR_3DFACE = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@SBARS_SIZEGRIP = common dso_local global i32 0, align 4
@WS_MAXIMIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @STATUSBAR_Refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @STATUSBAR_Refresh(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @IsWindowVisible(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = call i32 @STATUSBAR_SetPartBounds(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @GetClientRect(i32 %23, i32* %6)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @GetWindowTheme(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @DrawThemeBackground(i32 %31, i32 %32, i32 0, i32 0, i32* %6, i32* null)
  br label %61

34:                                               ; preds = %18
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CLR_DEFAULT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @CreateSolidBrush(i64 %43)
  store i32 %44, i32* %7, align 4
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @COLOR_3DFACE, align 4
  %47 = call i32 @GetSysColorBrush(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @FillRect(i32 %49, i32* %6, i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CLR_DEFAULT, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @DeleteObject(i32 %58)
  br label %60

60:                                               ; preds = %57, %48
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  br label %75

71:                                               ; preds = %61
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i64 [ %70, %67 ], [ %74, %71 ]
  %77 = call i64 @SelectObject(i32 %62, i64 %76)
  store i64 %77, i64* %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 5
  %87 = call i32 @STATUSBAR_RefreshPart(%struct.TYPE_5__* %83, i32 %84, i32* %86, i32 0)
  br label %110

88:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %89

89:                                               ; preds = %106, %88
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @STATUSBAR_RefreshPart(%struct.TYPE_5__* %96, i32 %97, i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %95
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %89

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109, %82
  %111 = load i32, i32* %5, align 4
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @SelectObject(i32 %111, i64 %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @GWL_STYLE, align 4
  %118 = call i32 @GetWindowLongW(i32 %116, i32 %117)
  %119 = load i32, i32* @SBARS_SIZEGRIP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %110
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @GWL_STYLE, align 4
  %127 = call i32 @GetWindowLongW(i32 %125, i32 %126)
  %128 = load i32, i32* @WS_MAXIMIZE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @STATUSBAR_DrawSizeGrip(i32 %132, i32 %133, i32* %6)
  br label %135

135:                                              ; preds = %131, %122, %110
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %17
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @IsWindowVisible(i32) #1

declare dso_local i32 @STATUSBAR_SetPartBounds(%struct.TYPE_5__*) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @GetWindowTheme(i32) #1

declare dso_local i32 @DrawThemeBackground(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @CreateSolidBrush(i64) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @STATUSBAR_RefreshPart(%struct.TYPE_5__*, i32, i32*, i32) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @STATUSBAR_DrawSizeGrip(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
