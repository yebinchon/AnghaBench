; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_LButtonUp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_trackbar.c_TRACKBAR_LButtonUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@TB_DRAG_MODE = common dso_local global i32 0, align 4
@TB_THUMBPOSITION = common dso_local global i32 0, align 4
@TB_ENDTRACK = common dso_local global i32 0, align 4
@NM_RELEASEDCAPTURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TB_AUTO_PAGE = common dso_local global i32 0, align 4
@TB_REFRESH_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @TRACKBAR_LButtonUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TRACKBAR_LButtonUp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TB_DRAG_MODE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = load i32, i32* @TB_THUMBPOSITION, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %11, %15
  %17 = call i32 @notify_with_scroll(%struct.TYPE_7__* %10, i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = load i32, i32* @TB_ENDTRACK, align 4
  %20 = call i32 @notify_with_scroll(%struct.TYPE_7__* %18, i32 %19)
  %21 = load i32, i32* @TB_DRAG_MODE, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = call i32 (...) @ReleaseCapture()
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = load i32, i32* @NM_RELEASEDCAPTURE, align 4
  %30 = call i32 @notify(%struct.TYPE_7__* %28, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @TRACKBAR_ActivateToolTip(%struct.TYPE_7__* %31, i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @TRACKBAR_InvalidateThumb(%struct.TYPE_7__* %34, i32 %37)
  br label %39

39:                                               ; preds = %9, %1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TB_AUTO_PAGE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TB_REFRESH_TIMER, align 4
  %51 = call i32 @KillTimer(i32 %49, i32 %50)
  %52 = load i32, i32* @TB_AUTO_PAGE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = load i32, i32* @TB_ENDTRACK, align 4
  %60 = call i32 @notify_with_scroll(%struct.TYPE_7__* %58, i32 %59)
  %61 = call i32 (...) @ReleaseCapture()
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = load i32, i32* @NM_RELEASEDCAPTURE, align 4
  %64 = call i32 @notify(%struct.TYPE_7__* %62, i32 %63)
  br label %65

65:                                               ; preds = %46, %39
  ret i32 0
}

declare dso_local i32 @notify_with_scroll(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ReleaseCapture(...) #1

declare dso_local i32 @notify(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @TRACKBAR_ActivateToolTip(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @TRACKBAR_InvalidateThumb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @KillTimer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
