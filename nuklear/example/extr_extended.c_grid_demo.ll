; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_extended.c_grid_demo.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_extended.c_grid_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.media = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@grid_demo.text = internal global [3 x [64 x i8]] zeroinitializer, align 16
@grid_demo.text_len = internal global [3 x i32] zeroinitializer, align 4
@grid_demo.items = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"Item 0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"item 1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"item 2\00", align 1
@grid_demo.selected_item = internal global i32 0, align 4
@grid_demo.check = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Grid Demo\00", align 1
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_NO_SCROLLBAR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"Floating point:\00", align 1
@NK_TEXT_RIGHT = common dso_local global i32 0, align 4
@NK_EDIT_FIELD = common dso_local global i32 0, align 4
@nk_filter_float = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Hexadecimal:\00", align 1
@nk_filter_hex = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"Binary:\00", align 1
@nk_filter_binary = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Checkbox:\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Check me\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Combobox:\00", align 1
@NK_TEXT_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*, %struct.media*)* @grid_demo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grid_demo(%struct.nk_context* %0, %struct.media* %1) #0 {
  %3 = alloca %struct.nk_context*, align 8
  %4 = alloca %struct.media*, align 8
  %5 = alloca i32, align 4
  store %struct.nk_context* %0, %struct.nk_context** %3, align 8
  store %struct.media* %1, %struct.media** %4, align 8
  %6 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %7 = load %struct.media*, %struct.media** %4, align 8
  %8 = getelementptr inbounds %struct.media, %struct.media* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @nk_style_set_font(%struct.nk_context* %6, i32* %10)
  %12 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %13 = call i32 @nk_rect(i32 600, i32 350, i32 275, i32 250)
  %14 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %15 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NK_WINDOW_NO_SCROLLBAR, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @nk_begin(%struct.nk_context* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %96

23:                                               ; preds = %2
  %24 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %25 = load %struct.media*, %struct.media** %4, align 8
  %26 = getelementptr inbounds %struct.media, %struct.media* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @nk_style_set_font(%struct.nk_context* %24, i32* %28)
  %30 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %31 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %30, i32 30, i32 2)
  %32 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %33 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %34 = call i32 @nk_label(%struct.nk_context* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %36 = load i32, i32* @NK_EDIT_FIELD, align 4
  %37 = load i32, i32* @nk_filter_float, align 4
  %38 = call i32 @nk_edit_string(%struct.nk_context* %35, i32 %36, i8* getelementptr inbounds ([3 x [64 x i8]], [3 x [64 x i8]]* @grid_demo.text, i64 0, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @grid_demo.text_len, i64 0, i64 0), i32 64, i32 %37)
  %39 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %40 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %41 = call i32 @nk_label(%struct.nk_context* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %43 = load i32, i32* @NK_EDIT_FIELD, align 4
  %44 = load i32, i32* @nk_filter_hex, align 4
  %45 = call i32 @nk_edit_string(%struct.nk_context* %42, i32 %43, i8* getelementptr inbounds ([3 x [64 x i8]], [3 x [64 x i8]]* @grid_demo.text, i64 0, i64 1, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @grid_demo.text_len, i64 0, i64 1), i32 64, i32 %44)
  %46 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %47 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %48 = call i32 @nk_label(%struct.nk_context* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  %49 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %50 = load i32, i32* @NK_EDIT_FIELD, align 4
  %51 = load i32, i32* @nk_filter_binary, align 4
  %52 = call i32 @nk_edit_string(%struct.nk_context* %49, i32 %50, i8* getelementptr inbounds ([3 x [64 x i8]], [3 x [64 x i8]]* @grid_demo.text, i64 0, i64 2, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @grid_demo.text_len, i64 0, i64 2), i32 64, i32 %51)
  %53 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %54 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %55 = call i32 @nk_label(%struct.nk_context* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  %56 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %57 = call i32 @nk_checkbox_label(%struct.nk_context* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* @grid_demo.check)
  %58 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %59 = load i32, i32* @NK_TEXT_RIGHT, align 4
  %60 = call i32 @nk_label(%struct.nk_context* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %59)
  %61 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %62 = load i32, i32* @grid_demo.selected_item, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x i8*], [3 x i8*]* @grid_demo.items, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %67 = call i32 @nk_widget_width(%struct.nk_context* %66)
  %68 = call i32 @nk_vec2(i32 %67, i32 200)
  %69 = call i64 @nk_combo_begin_label(%struct.nk_context* %61, i8* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %23
  %72 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %73 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %72, i32 25, i32 1)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %89, %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i8*], [3 x i8*]* @grid_demo.items, i64 0, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* @NK_TEXT_LEFT, align 4
  %84 = call i64 @nk_combo_item_label(%struct.nk_context* %78, i8* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* @grid_demo.selected_item, align 4
  br label %88

88:                                               ; preds = %86, %77
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %94 = call i32 @nk_combo_end(%struct.nk_context* %93)
  br label %95

95:                                               ; preds = %92, %23
  br label %96

96:                                               ; preds = %95, %2
  %97 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %98 = call i32 @nk_end(%struct.nk_context* %97)
  %99 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %100 = load %struct.media*, %struct.media** %4, align 8
  %101 = getelementptr inbounds %struct.media, %struct.media* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @nk_style_set_font(%struct.nk_context* %99, i32* %103)
  ret void
}

declare dso_local i32 @nk_style_set_font(%struct.nk_context*, i32*) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @nk_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_edit_string(%struct.nk_context*, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @nk_checkbox_label(%struct.nk_context*, i8*, i32*) #1

declare dso_local i64 @nk_combo_begin_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_vec2(i32, i32) #1

declare dso_local i32 @nk_widget_width(%struct.nk_context*) #1

declare dso_local i64 @nk_combo_item_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_combo_end(%struct.nk_context*) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
