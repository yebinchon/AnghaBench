; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_get_selected_window.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_get_selected_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"dwm\00", align 1
@INCLUDE_MINIMIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*)* @get_selected_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_selected_window(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [512 x i32], align 16
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  %5 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %6 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %5, i32 0, i32 3
  %7 = call i64 @dstr_cmpi(%struct.TYPE_6__* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %11 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [512 x i32], [512 x i32]* %4, i64 0, i64 0
  %15 = call i32 @os_utf8_to_wcs(i32 %13, i32 0, i32* %14, i32 512)
  %16 = getelementptr inbounds [512 x i32], [512 x i32]* %4, i64 0, i64 0
  %17 = call i64 @FindWindowW(i32* %16, i32* null)
  store i64 %17, i64* %3, align 8
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* @INCLUDE_MINIMIZED, align 4
  %20 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %21 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %24 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %28 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %32 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @find_window(i32 %19, i32 %22, i32 %26, i32 %30, i32 %34)
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %18, %9
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @setup_window(%struct.game_capture* %40, i64 %41)
  br label %46

43:                                               ; preds = %36
  %44 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %45 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %39
  ret void
}

declare dso_local i64 @dstr_cmpi(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @os_utf8_to_wcs(i32, i32, i32*, i32) #1

declare dso_local i64 @FindWindowW(i32*, i32*) #1

declare dso_local i64 @find_window(i32, i32, i32, i32, i32) #1

declare dso_local i32 @setup_window(%struct.game_capture*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
