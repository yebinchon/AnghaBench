; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___hudstuff.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___hudstuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hudstuff(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = call i32* @__get_cur_panel(%struct.TYPE_9__* %10)
  store i32* %11, i32** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @r_core_visual_hudstuff(%struct.TYPE_10__* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %16 = call i64 @__check_panel_type(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @__set_panel_addr(%struct.TYPE_10__* %19, i32* %20, i32 %23)
  br label %52

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @__get_panel(%struct.TYPE_9__* %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %38 = call i64 @__check_panel_type(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @__set_panel_addr(%struct.TYPE_10__* %41, i32* %42, i32 %45)
  br label %51

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %26

51:                                               ; preds = %40, %26
  br label %52

52:                                               ; preds = %51, %18
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = call i32 @__set_refresh_all(%struct.TYPE_10__* %53, i32 1, i32 0)
  ret void
}

declare dso_local i32* @__get_cur_panel(%struct.TYPE_9__*) #1

declare dso_local i32 @r_core_visual_hudstuff(%struct.TYPE_10__*) #1

declare dso_local i64 @__check_panel_type(i32*, i32) #1

declare dso_local i32 @__set_panel_addr(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32* @__get_panel(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
