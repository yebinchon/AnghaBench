; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_menu.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___handle_mouse_on_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_25__*)*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }

@PANEL_MODE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__handle_mouse_on_menu(%struct.TYPE_25__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %7, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @get_word_from_canvas_for_menu(%struct.TYPE_25__* %16, %struct.TYPE_24__* %17, i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %9, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %86, %3
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %28
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %11, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %34, i64 %37
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %12, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %83, %31
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %50, i64 %52
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @strcmp(i8* %47, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %82, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %64, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %65, i64 %69
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %72, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %75 = call i32 %73(%struct.TYPE_25__* %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %79 = call i32 @__update_menu_contents(%struct.TYPE_25__* %76, %struct.TYPE_23__* %77, %struct.TYPE_22__* %78)
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  br label %102

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %40

86:                                               ; preds = %40
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %88 = call i32 @__del_menu(%struct.TYPE_25__* %87)
  br label %28

89:                                               ; preds = %28
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = call i32 @__clear_panels_menu(%struct.TYPE_25__* %90)
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = load i32, i32* @PANEL_MODE_DEFAULT, align 4
  %94 = call i32 @__set_mode(%struct.TYPE_25__* %92, i32 %93)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %96 = call %struct.TYPE_19__* @__get_cur_panel(%struct.TYPE_24__* %95)
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @free(i8* %100)
  br label %102

102:                                              ; preds = %89, %59
  ret void
}

declare dso_local i8* @get_word_from_canvas_for_menu(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @__update_menu_contents(%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__del_menu(%struct.TYPE_25__*) #1

declare dso_local i32 @__clear_panels_menu(%struct.TYPE_25__*) #1

declare dso_local i32 @__set_mode(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_19__* @__get_cur_panel(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
