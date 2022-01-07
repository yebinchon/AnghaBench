; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawChannel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_DrawChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@TBS_VERT = common dso_local global i32 0, align 4
@TKP_TRACKVERT = common dso_local global i32 0, align 4
@TKP_TRACK = common dso_local global i32 0, align 4
@TKS_NORMAL = common dso_local global i32 0, align 4
@EDGE_SUNKEN = common dso_local global i32 0, align 4
@BF_RECT = common dso_local global i32 0, align 4
@BF_ADJUST = common dso_local global i32 0, align 4
@TBS_ENABLESELRANGE = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @TRACKBAR_DrawChannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TRACKBAR_DrawChannel(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @GetWindowTheme(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TBS_VERT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @TKP_TRACKVERT, align 4
  br label %29

27:                                               ; preds = %16
  %28 = load i32, i32* @TKP_TRACK, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load i32, i32* @TKS_NORMAL, align 4
  %32 = call i32 @DrawThemeBackground(i64 %17, i32 %18, i32 %30, i32 %31, i32* %5, i32 0)
  br label %63

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @EDGE_SUNKEN, align 4
  %36 = load i32, i32* @BF_RECT, align 4
  %37 = load i32, i32* @BF_ADJUST, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @DrawEdge(i32 %34, i32* %5, i32 %35, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TBS_ENABLESELRANGE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %33
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @WHITE_BRUSH, align 4
  %49 = call i32 @GetStockObject(i32 %48)
  %50 = call i32 @FillRect(i32 %47, i32* %5, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = call i64 @TRACKBAR_HasSelection(%struct.TYPE_4__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %59 = call i32 @GetSysColorBrush(i32 %58)
  %60 = call i32 @FillRect(i32 %55, i32* %57, i32 %59)
  br label %61

61:                                               ; preds = %54, %46
  br label %62

62:                                               ; preds = %61, %33
  br label %63

63:                                               ; preds = %62, %29
  ret void
}

declare dso_local i64 @GetWindowTheme(i32) #1

declare dso_local i32 @DrawThemeBackground(i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DrawEdge(i32, i32*, i32, i32) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i64 @TRACKBAR_HasSelection(%struct.TYPE_4__*) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
