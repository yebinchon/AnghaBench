; ModuleID = '/home/carl/AnghaBench/nuklear/demo/sdl_opengles2/extr_main.c_MainLoop.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/sdl_opengles2/extr_main.c_MainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.TYPE_4__ = type { i64 }

@SDL_QUIT = common dso_local global i64 0, align 8
@nk_false = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Demo\00", align 1
@NK_WINDOW_BORDER = common dso_local global i32 0, align 4
@NK_WINDOW_MOVABLE = common dso_local global i32 0, align 4
@NK_WINDOW_SCALABLE = common dso_local global i32 0, align 4
@NK_WINDOW_CLOSABLE = common dso_local global i32 0, align 4
@NK_WINDOW_MINIMIZABLE = common dso_local global i32 0, align 4
@NK_WINDOW_TITLE = common dso_local global i32 0, align 4
@NK_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@NK_TEXT_LEFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"CLOSE\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"CUT\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"PASTE\00", align 1
@MainLoop.op = internal global i32 0, align 4
@MainLoop.property = internal global i32 20, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"button pressed\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"easy\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"hard\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Compression:\00", align 1
@win = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@NK_ANTI_ALIASING_ON = common dso_local global i32 0, align 4
@MAX_VERTEX_MEMORY = common dso_local global i32 0, align 4
@MAX_ELEMENT_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @MainLoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MainLoop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nk_context*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca [4 x float], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.nk_context*
  store %struct.nk_context* %9, %struct.nk_context** %3, align 8
  %10 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %11 = call i32 @nk_input_begin(%struct.nk_context* %10)
  br label %12

12:                                               ; preds = %22, %1
  %13 = call i64 @SDL_PollEvent(%struct.TYPE_4__* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SDL_QUIT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @nk_false, align 4
  store i32 %21, i32* @running, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = call i32 @nk_sdl_handle_event(%struct.TYPE_4__* %4)
  br label %12

24:                                               ; preds = %12
  %25 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %26 = call i32 @nk_input_end(%struct.nk_context* %25)
  %27 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %28 = call i32 @nk_rect(i32 50, i32 50, i32 200, i32 200)
  %29 = load i32, i32* @NK_WINDOW_BORDER, align 4
  %30 = load i32, i32* @NK_WINDOW_MOVABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NK_WINDOW_SCALABLE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NK_WINDOW_CLOSABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NK_WINDOW_MINIMIZABLE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NK_WINDOW_TITLE, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @nk_begin(%struct.nk_context* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %124

42:                                               ; preds = %24
  %43 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %44 = call i32 @nk_menubar_begin(%struct.nk_context* %43)
  %45 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %46 = load i32, i32* @NK_STATIC, align 4
  %47 = call i32 @nk_layout_row_begin(%struct.nk_context* %45, i32 %46, i32 25, i32 2)
  %48 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %49 = call i32 @nk_layout_row_push(%struct.nk_context* %48, i32 45)
  %50 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %51 = load i32, i32* @NK_TEXT_LEFT, align 4
  %52 = call i32 @nk_vec2(i32 120, i32 200)
  %53 = call i64 @nk_menu_begin_label(%struct.nk_context* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  %56 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %57 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %56, i32 30, i32 1)
  %58 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %59 = load i32, i32* @NK_TEXT_LEFT, align 4
  %60 = call i32 @nk_menu_item_label(%struct.nk_context* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %62 = load i32, i32* @NK_TEXT_LEFT, align 4
  %63 = call i32 @nk_menu_item_label(%struct.nk_context* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %65 = call i32 @nk_menu_end(%struct.nk_context* %64)
  br label %66

66:                                               ; preds = %55, %42
  %67 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %68 = call i32 @nk_layout_row_push(%struct.nk_context* %67, i32 45)
  %69 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %70 = load i32, i32* @NK_TEXT_LEFT, align 4
  %71 = call i32 @nk_vec2(i32 120, i32 200)
  %72 = call i64 @nk_menu_begin_label(%struct.nk_context* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %76 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %75, i32 30, i32 1)
  %77 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %78 = load i32, i32* @NK_TEXT_LEFT, align 4
  %79 = call i32 @nk_menu_item_label(%struct.nk_context* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %81 = load i32, i32* @NK_TEXT_LEFT, align 4
  %82 = call i32 @nk_menu_item_label(%struct.nk_context* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  %83 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %84 = load i32, i32* @NK_TEXT_LEFT, align 4
  %85 = call i32 @nk_menu_item_label(%struct.nk_context* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %84)
  %86 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %87 = call i32 @nk_menu_end(%struct.nk_context* %86)
  br label %88

88:                                               ; preds = %74, %66
  %89 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %90 = call i32 @nk_layout_row_end(%struct.nk_context* %89)
  %91 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %92 = call i32 @nk_menubar_end(%struct.nk_context* %91)
  %93 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %94 = call i32 @nk_layout_row_static(%struct.nk_context* %93, i32 30, i32 80, i32 1)
  %95 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %96 = call i64 @nk_button_label(%struct.nk_context* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* @stdout, align 4
  %100 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %88
  %102 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %103 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %102, i32 30, i32 2)
  %104 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %105 = load i32, i32* @MainLoop.op, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @nk_option_label(%struct.nk_context* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i32 0, i32* @MainLoop.op, align 4
  br label %111

111:                                              ; preds = %110, %101
  %112 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %113 = load i32, i32* @MainLoop.op, align 4
  %114 = icmp eq i32 %113, 1
  %115 = zext i1 %114 to i32
  %116 = call i64 @nk_option_label(%struct.nk_context* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 1, i32* @MainLoop.op, align 4
  br label %119

119:                                              ; preds = %118, %111
  %120 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %121 = call i32 @nk_layout_row_dynamic(%struct.nk_context* %120, i32 25, i32 1)
  %122 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %123 = call i32 @nk_property_int(%struct.nk_context* %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 0, i32* @MainLoop.property, i32 100, i32 10, i32 1)
  br label %124

124:                                              ; preds = %119, %24
  %125 = load %struct.nk_context*, %struct.nk_context** %3, align 8
  %126 = call i32 @nk_end(%struct.nk_context* %125)
  %127 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %128 = call i32 @nk_rgb(i32 28, i32 48, i32 62)
  %129 = call i32 @nk_color_fv(float* %127, i32 %128)
  %130 = load i32, i32* @win, align 4
  %131 = call i32 @SDL_GetWindowSize(i32 %130, i32* %6, i32* %7)
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @glViewport(i32 0, i32 0, i32 %132, i32 %133)
  %135 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %136 = call i32 @glClear(i32 %135)
  %137 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %138 = load float, float* %137, align 16
  %139 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 1
  %140 = load float, float* %139, align 4
  %141 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 2
  %142 = load float, float* %141, align 8
  %143 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  %144 = load float, float* %143, align 4
  %145 = call i32 @glClearColor(float %138, float %140, float %142, float %144)
  %146 = load i32, i32* @NK_ANTI_ALIASING_ON, align 4
  %147 = load i32, i32* @MAX_VERTEX_MEMORY, align 4
  %148 = load i32, i32* @MAX_ELEMENT_MEMORY, align 4
  %149 = call i32 @nk_sdl_render(i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* @win, align 4
  %151 = call i32 @SDL_GL_SwapWindow(i32 %150)
  ret void
}

declare dso_local i32 @nk_input_begin(%struct.nk_context*) #1

declare dso_local i64 @SDL_PollEvent(%struct.TYPE_4__*) #1

declare dso_local i32 @nk_sdl_handle_event(%struct.TYPE_4__*) #1

declare dso_local i32 @nk_input_end(%struct.nk_context*) #1

declare dso_local i64 @nk_begin(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_menubar_begin(%struct.nk_context*) #1

declare dso_local i32 @nk_layout_row_begin(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i32 @nk_layout_row_push(%struct.nk_context*, i32) #1

declare dso_local i64 @nk_menu_begin_label(%struct.nk_context*, i8*, i32, i32) #1

declare dso_local i32 @nk_vec2(i32, i32) #1

declare dso_local i32 @nk_layout_row_dynamic(%struct.nk_context*, i32, i32) #1

declare dso_local i32 @nk_menu_item_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_menu_end(%struct.nk_context*) #1

declare dso_local i32 @nk_layout_row_end(%struct.nk_context*) #1

declare dso_local i32 @nk_menubar_end(%struct.nk_context*) #1

declare dso_local i32 @nk_layout_row_static(%struct.nk_context*, i32, i32, i32) #1

declare dso_local i64 @nk_button_label(%struct.nk_context*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @nk_option_label(%struct.nk_context*, i8*, i32) #1

declare dso_local i32 @nk_property_int(%struct.nk_context*, i8*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @nk_end(%struct.nk_context*) #1

declare dso_local i32 @nk_color_fv(float*, i32) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i32 @SDL_GetWindowSize(i32, i32*, i32*) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @nk_sdl_render(i32, i32, i32) #1

declare dso_local i32 @SDL_GL_SwapWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
