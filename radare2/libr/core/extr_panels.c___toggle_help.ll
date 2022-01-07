; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___toggle_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___toggle_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@PANEL_MODE_MENU = common dso_local global i64 0, align 8
@PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__toggle_help(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.TYPE_16__* @__get_panel(%struct.TYPE_15__* %16, i32 %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %5, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @r_str_endswith(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %15
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @__dismantle_del_panel(%struct.TYPE_17__* %27, %struct.TYPE_16__* %28, i32 %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PANEL_MODE_MENU, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %39 = call i32 @__set_mode(%struct.TYPE_17__* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %26
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = call i32 @__set_refresh_all(%struct.TYPE_17__* %41, i32 0, i32 0)
  br label %62

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %9

47:                                               ; preds = %9
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = call i32 @__add_help_panel(%struct.TYPE_17__* %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PANEL_MODE_MENU, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %58 = call i32 @__set_mode(%struct.TYPE_17__* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %47
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = call i32 @__update_help(%struct.TYPE_15__* %60)
  br label %62

62:                                               ; preds = %59, %40
  ret void
}

declare dso_local %struct.TYPE_16__* @__get_panel(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @r_str_endswith(i32, i8*) #1

declare dso_local i32 @__dismantle_del_panel(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @__set_mode(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @__set_refresh_all(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @__add_help_panel(%struct.TYPE_17__*) #1

declare dso_local i32 @__update_help(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
