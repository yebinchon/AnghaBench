; ModuleID = '/home/carl/AnghaBench/nuklear/demo/allegro5/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/allegro5/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.TYPE_5__ = type { i64 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to initialize allegro5!\0A\00", align 1
@ALLEGRO_WINDOWED = common dso_local global i32 0, align 4
@ALLEGRO_RESIZABLE = common dso_local global i32 0, align 4
@ALLEGRO_OPENGL = common dso_local global i32 0, align 4
@ALLEGRO_SAMPLE_BUFFERS = common dso_local global i32 0, align 4
@ALLEGRO_SUGGEST = common dso_local global i32 0, align 4
@ALLEGRO_SAMPLES = common dso_local global i32 0, align 4
@WINDOW_WIDTH = common dso_local global i32 0, align 4
@WINDOW_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create display!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to create event_queue!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"../../../extra_font/Roboto-Regular.ttf\00", align 1
@ALLEGRO_EVENT_DISPLAY_CLOSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Demo\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_SCALABLE = common dso_local global i32 0, align 4
@NK_WINDOW_CLOSABLE = common dso_local global i32 0, align 4
@NK_WINDOW_MINIMIZABLE = common dso_local global i32 0, align 4
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@main.op = internal global i32 0, align 4
@main.property = internal global i32 20, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"button pressed\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"easy\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Compression:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nk_context*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %9 = call i32 (...) @al_init()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 1) #3
  unreachable

15:                                               ; preds = %0
  %16 = call i32 (...) @al_install_mouse()
  %17 = call i32 @al_set_mouse_wheel_precision(i32 150)
  %18 = call i32 (...) @al_install_keyboard()
  %19 = load i32, i32* @ALLEGRO_WINDOWED, align 4
  %20 = load i32, i32* @ALLEGRO_RESIZABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ALLEGRO_OPENGL, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @al_set_new_display_flags(i32 %23)
  %25 = load i32, i32* @ALLEGRO_SAMPLE_BUFFERS, align 4
  %26 = load i32, i32* @ALLEGRO_SUGGEST, align 4
  %27 = call i32 @al_set_new_display_option(i32 %25, i32 1, i32 %26)
  %28 = load i32, i32* @ALLEGRO_SAMPLES, align 4
  %29 = load i32, i32* @ALLEGRO_SUGGEST, align 4
  %30 = call i32 @al_set_new_display_option(i32 %28, i32 8, i32 %29)
  %31 = load i32, i32* @WINDOW_WIDTH, align 4
  %32 = load i32, i32* @WINDOW_HEIGHT, align 4
  %33 = call i32* @al_create_display(i32 %31, i32 %32)
  store i32* %33, i32** %2, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %15
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %15
  %41 = call i32* (...) @al_create_event_queue()
  store i32* %41, i32** %3, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @al_destroy_display(i32* %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %40
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @al_get_display_event_source(i32* %52)
  %54 = call i32 @al_register_event_source(i32* %51, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 (...) @al_get_mouse_event_source()
  %57 = call i32 @al_register_event_source(i32* %55, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 (...) @al_get_keyboard_event_source()
  %60 = call i32 @al_register_event_source(i32* %58, i32 %59)
  %61 = call i32* @nk_allegro5_font_create_from_file(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 12, i32 0)
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @WINDOW_WIDTH, align 4
  %65 = load i32, i32* @WINDOW_HEIGHT, align 4
  %66 = call %struct.nk_context* @nk_allegro5_init(i32* %62, i32* %63, i32 %64, i32 %65)
  store %struct.nk_context* %66, %struct.nk_context** %5, align 8
  br label %67

67:                                               ; preds = %50, %143
  %68 = call i32 @al_init_timeout(i32* %7, double 6.000000e-02)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @al_wait_for_event_until(i32* %69, %struct.TYPE_5__* %6, i32* %7)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ALLEGRO_EVENT_DISPLAY_CLOSE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %152

79:                                               ; preds = %73, %67
  %80 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %81 = call i32 @nk_input_begin(%struct.nk_context* %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %88, %84
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = call i32 @nk_allegro5_handle_event(%struct.TYPE_5__* %6)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @al_get_next_event(i32* %90, %struct.TYPE_5__* %6)
  store i32 %91, i32* %8, align 4
  br label %85

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %79
  %94 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %95 = call i32 @nk_input_end(%struct.nk_context* %94)
  %96 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %97 = call i32 @nk_rect(i32 50, i32 50, i32 200, i32 200)
  %98 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %99 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @NK_WINDOW_SCALABLE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @NK_WINDOW_CLOSABLE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @NK_WINDOW_MINIMIZABLE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %108 = or i32 %106, %107
  %109 = call i64 @nk_begin(%struct.nk_context* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %93
  %112 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %113 = call i32 @nk_layout_row_static(%struct.nk_context* %112, i32 30, i32 80, i32 1)
  %114 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %115 = call i64 @nk_button_label(%struct.nk_context* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @stdout, align 4
  %119 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %111
  %121 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %122 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %121, i32 30, i32 2)
  %123 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %124 = load i32, i32* @main.op, align 4
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i64 @nk_option_label(%struct.nk_context* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  store i32 0, i32* @main.op, align 4
  br label %130

130:                                              ; preds = %129, %120
  %131 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %132 = load i32, i32* @main.op, align 4
  %133 = icmp eq i32 %132, 1
  %134 = zext i1 %133 to i32
  %135 = call i64 @nk_option_label(%struct.nk_context* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 1, i32* @main.op, align 4
  br label %138

138:                                              ; preds = %137, %130
  %139 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %140 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %139, i32 22, i32 1)
  %141 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %142 = call i32 @nk_property_int(%struct.nk_context* %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 0, i32* @main.property, i32 100, i32 10, i32 1)
  br label %143

143:                                              ; preds = %138, %93
  %144 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %145 = call i32 @nk_end(%struct.nk_context* %144)
  %146 = load %struct.nk_context*, %struct.nk_context** %5, align 8
  %147 = call i32 @overview(%struct.nk_context* %146)
  %148 = call i32 @al_map_rgb(i32 19, i32 43, i32 81)
  %149 = call i32 @al_clear_to_color(i32 %148)
  %150 = call i32 (...) @nk_allegro5_render()
  %151 = call i32 (...) @al_flip_display()
  br label %67

152:                                              ; preds = %78
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @nk_allegro5_font_del(i32* %153)
  %155 = call i32 (...) @nk_allegro5_shutdown()
  %156 = load i32*, i32** %2, align 8
  %157 = call i32 @al_destroy_display(i32* %156)
  %158 = load i32*, i32** %3, align 8
  %159 = call i32 @al_destroy_event_queue(i32* %158)
  ret i32 0
}

declare dso_local i32 @al_init(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @al_install_mouse(...) #1

declare dso_local i32 @al_set_mouse_wheel_precision(i32) #1

declare dso_local i32 @al_install_keyboard(...) #1

declare dso_local i32 @al_set_new_display_flags(i32) #1

declare dso_local i32 @al_set_new_display_option(i32, i32, i32) #1

declare dso_local i32* @al_create_display(i32, i32) #1

declare dso_local i32* @al_create_event_queue(...) #1

declare dso_local i32 @al_destroy_display(i32*) #1

declare dso_local i32 @al_register_event_source(i32*, i32) #1

declare dso_local i32 @al_get_display_event_source(i32*) #1

declare dso_local i32 @al_get_mouse_event_source(...) #1

declare dso_local i32 @al_get_keyboard_event_source(...) #1

declare dso_local i32* @nk_allegro5_font_create_from_file(i8*, i32, i32) #1

declare dso_local %struct.nk_context* @nk_allegro5_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @al_init_timeout(i32*, double) #1

declare dso_local i32 @al_wait_for_event_until(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @nk_input_begin(%struct.nk_context*) #1

declare dso_local i32 @nk_allegro5_handle_event(%struct.TYPE_5__*) #1

declare dso_local i32 @al_get_next_event(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @nk_input_end(%struct.nk_context*) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_layout_row_static(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i64 @nk_button_label(%struct.nk_context*, i8*) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i64 @nk_option_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_property_int(%struct.nk_context*, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

declare dso_local i32 @overview(%struct.nk_context*) #1

declare dso_local i32 @al_clear_to_color(i32) #1

declare dso_local i32 @al_map_rgb(i32, i32, i32) #1

declare dso_local i32 @nk_allegro5_render(...) #1

declare dso_local i32 @al_flip_display(...) #1

declare dso_local i32 @nk_allegro5_font_del(i32*) #1

declare dso_local i32 @nk_allegro5_shutdown(...) #1

declare dso_local i32 @al_destroy_event_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
