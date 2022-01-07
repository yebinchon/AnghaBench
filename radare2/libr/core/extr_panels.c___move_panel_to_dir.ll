; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_panel_to_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___move_panel_to_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [44 x i8] c"Move the current panel to direction (h/l): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__move_panel_to_dir(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @__dismantle_panel(i32* %12, i32* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call i32 @__show_status(%struct.TYPE_9__* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @r_cons_arrow_to_hjkl(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @__set_refresh_all(%struct.TYPE_9__* %19, i32 0, i32 1)
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %42 [
    i32 104, label %22
    i32 108, label %27
    i32 107, label %32
    i32 106, label %37
  ]

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @__move_panel_to_left(%struct.TYPE_9__* %23, i32* %24, i32 %25)
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @__move_panel_to_right(%struct.TYPE_9__* %28, i32* %29, i32 %30)
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @__move_panel_to_up(%struct.TYPE_9__* %33, i32* %34, i32 %35)
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @__move_panel_to_down(%struct.TYPE_9__* %38, i32* %39, i32 %40)
  br label %43

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %37, %32, %27, %22
  ret void
}

declare dso_local i32 @__dismantle_panel(i32*, i32*) #1

declare dso_local i32 @__show_status(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @r_cons_arrow_to_hjkl(i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @__move_panel_to_left(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @__move_panel_to_right(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @__move_panel_to_up(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @__move_panel_to_down(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
