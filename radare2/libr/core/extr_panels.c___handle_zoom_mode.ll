; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_zoom_mode.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_zoom_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__handle_zoom_mode(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = call i32 @r_cons_switchbuf(i32 0)
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %69 [
    i32 81, label %12
    i32 113, label %12
    i32 13, label %12
    i32 99, label %15
    i32 67, label %15
    i32 59, label %15
    i32 32, label %15
    i32 95, label %15
    i32 47, label %15
    i32 34, label %15
    i32 65, label %15
    i32 114, label %15
    i32 48, label %15
    i32 49, label %15
    i32 50, label %15
    i32 51, label %15
    i32 52, label %15
    i32 53, label %15
    i32 54, label %15
    i32 55, label %15
    i32 56, label %15
    i32 57, label %15
    i32 117, label %15
    i32 85, label %15
    i32 98, label %15
    i32 100, label %15
    i32 110, label %15
    i32 78, label %15
    i32 103, label %15
    i32 104, label %15
    i32 106, label %15
    i32 107, label %15
    i32 74, label %15
    i32 75, label %15
    i32 108, label %15
    i32 46, label %15
    i32 82, label %15
    i32 112, label %15
    i32 80, label %15
    i32 115, label %15
    i32 83, label %15
    i32 116, label %15
    i32 84, label %15
    i32 120, label %15
    i32 88, label %15
    i32 58, label %15
    i32 91, label %15
    i32 93, label %15
    i32 9, label %16
    i32 90, label %39
    i32 63, label %62
  ]

12:                                               ; preds = %2, %2, %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @__toggle_zoom_mode(%struct.TYPE_9__* %13)
  br label %69

15:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__restore_panel_pos(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @__handle_tab_key(%struct.TYPE_9__* %26, i32 0)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__save_panel_pos(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = call i32 @__maximize_panel_size(%struct.TYPE_8__* %37)
  br label %69

39:                                               ; preds = %2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__restore_panel_pos(i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i32 @__handle_tab_key(%struct.TYPE_9__* %49, i32 1)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__save_panel_pos(i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = call i32 @__maximize_panel_size(%struct.TYPE_8__* %60)
  br label %69

62:                                               ; preds = %2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = call i32 @__toggle_zoom_mode(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = call i32 @__toggle_help(%struct.TYPE_9__* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = call i32 @__toggle_zoom_mode(%struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %2, %62, %39, %16, %12
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @r_cons_switchbuf(i32) #1

declare dso_local i32 @__toggle_zoom_mode(%struct.TYPE_9__*) #1

declare dso_local i32 @__restore_panel_pos(i32) #1

declare dso_local i32 @__handle_tab_key(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @__save_panel_pos(i32) #1

declare dso_local i32 @__maximize_panel_size(%struct.TYPE_8__*) #1

declare dso_local i32 @__toggle_help(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
