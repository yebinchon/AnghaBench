; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_RefreshPart.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_status.c_STATUSBAR_RefreshPart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"item %d\0A\00", align 1
@CLR_DEFAULT = common dso_local global i64 0, align 8
@COLOR_3DFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32)* @STATUSBAR_RefreshPart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @STATUSBAR_RefreshPart(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %82

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = call i32 @RectVisible(i32 %25, %struct.TYPE_12__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %82

31:                                               ; preds = %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @GetWindowTheme(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @GetClientRect(i32 %40, i32* %11)
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = call i32 @DrawThemeBackground(i32 %42, i32 %43, i32 0, i32 0, i32* %11, %struct.TYPE_12__* %45)
  br label %76

47:                                               ; preds = %31
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CLR_DEFAULT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @CreateSolidBrush(i64 %56)
  store i32 %57, i32* %9, align 4
  br label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @COLOR_3DFACE, align 4
  %60 = call i32 @GetSysColorBrush(i32 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @FillRect(i32 %62, %struct.TYPE_12__* %64, i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CLR_DEFAULT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @DeleteObject(i32 %73)
  br label %75

75:                                               ; preds = %72, %61
  br label %76

76:                                               ; preds = %75, %37
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @STATUSBAR_DrawPart(%struct.TYPE_10__* %77, i32 %78, %struct.TYPE_11__* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %30, %23
  ret void
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @RectVisible(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @GetWindowTheme(i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @DrawThemeBackground(i32, i32, i32, i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @CreateSolidBrush(i64) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @STATUSBAR_DrawPart(%struct.TYPE_10__*, i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
