; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_canvas.c_main.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_canvas.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i64 }
%struct.nk_font_atlas = type { i32 }
%struct.nk_context = type { i32 }
%struct.nk_font = type { i32 }
%struct.nk_canvas = type { i32 }

@main.win = internal global i32* null, align 8
@error_callback = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[GFLW] failed to init!\0A\00", align 1
@GLFW_CONTEXT_VERSION_MAJOR = common dso_local global i32 0, align 4
@GLFW_CONTEXT_VERSION_MINOR = common dso_local global i32 0, align 4
@GLFW_OPENGL_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_CORE_PROFILE = common dso_local global i32 0, align 4
@GLFW_OPENGL_FORWARD_COMPAT = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4
@WINDOW_WIDTH = common dso_local global i32 0, align 4
@WINDOW_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Demo\00", align 1
@text_input = common dso_local global i32 0, align 4
@scroll_input = common dso_local global i32 0, align 4
@glewExperimental = common dso_local global i32 0, align 4
@GLEW_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to setup GLEW\0A\00", align 1
@NK_FONT_ATLAS_RGBA32 = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Text to draw\00", align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@NK_ANTI_ALIASING_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device, align 8
  %9 = alloca %struct.nk_font_atlas, align 4
  %10 = alloca %struct.nk_context, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nk_font*, align 8
  %15 = alloca %struct.nk_canvas, align 4
  %16 = alloca [12 x float], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @error_callback, align 4
  %18 = call i32 @glfwSetErrorCallback(i32 %17)
  %19 = call i32 (...) @glfwInit()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %2
  %26 = load i32, i32* @GLFW_CONTEXT_VERSION_MAJOR, align 4
  %27 = call i32 @glfwWindowHint(i32 %26, i32 3)
  %28 = load i32, i32* @GLFW_CONTEXT_VERSION_MINOR, align 4
  %29 = call i32 @glfwWindowHint(i32 %28, i32 3)
  %30 = load i32, i32* @GLFW_OPENGL_PROFILE, align 4
  %31 = load i32, i32* @GLFW_OPENGL_CORE_PROFILE, align 4
  %32 = call i32 @glfwWindowHint(i32 %30, i32 %31)
  %33 = load i32, i32* @GLFW_OPENGL_FORWARD_COMPAT, align 4
  %34 = load i32, i32* @GL_TRUE, align 4
  %35 = call i32 @glfwWindowHint(i32 %33, i32 %34)
  %36 = load i32, i32* @WINDOW_WIDTH, align 4
  %37 = load i32, i32* @WINDOW_HEIGHT, align 4
  %38 = call i32* @glfwCreateWindow(i32 %36, i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  store i32* %38, i32** @main.win, align 8
  %39 = load i32*, i32** @main.win, align 8
  %40 = call i32 @glfwMakeContextCurrent(i32* %39)
  %41 = load i32*, i32** @main.win, align 8
  %42 = call i32 @glfwSetWindowUserPointer(i32* %41, %struct.nk_context* %10)
  %43 = load i32*, i32** @main.win, align 8
  %44 = load i32, i32* @text_input, align 4
  %45 = call i32 @glfwSetCharCallback(i32* %43, i32 %44)
  %46 = load i32*, i32** @main.win, align 8
  %47 = load i32, i32* @scroll_input, align 4
  %48 = call i32 @glfwSetScrollCallback(i32* %46, i32 %47)
  %49 = load i32*, i32** @main.win, align 8
  %50 = call i32 @glfwGetWindowSize(i32* %49, i32* %6, i32* %7)
  %51 = load i32, i32* @WINDOW_WIDTH, align 4
  %52 = load i32, i32* @WINDOW_HEIGHT, align 4
  %53 = call i32 @glViewport(i32 0, i32 0, i32 %51, i32 %52)
  store i32 1, i32* @glewExperimental, align 4
  %54 = call i64 (...) @glewInit()
  %55 = load i64, i64* @GLEW_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %25
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %25
  %62 = call i32 @device_init(%struct.device* %8)
  %63 = call i32 @nk_font_atlas_init_default(%struct.nk_font_atlas* %9)
  %64 = call i32 @nk_font_atlas_begin(%struct.nk_font_atlas* %9)
  %65 = call %struct.nk_font* @nk_font_atlas_add_default(%struct.nk_font_atlas* %9, i32 13, i32 0)
  store %struct.nk_font* %65, %struct.nk_font** %14, align 8
  %66 = load i32, i32* @NK_FONT_ATLAS_RGBA32, align 4
  %67 = call i8* @nk_font_atlas_bake(%struct.nk_font_atlas* %9, i32* %12, i32* %13, i32 %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @device_upload_atlas(%struct.device* %8, i8* %68, i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @nk_handle_id(i32 %74)
  %76 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %77 = call i32 @nk_font_atlas_end(%struct.nk_font_atlas* %9, i32 %75, i32* %76)
  %78 = load %struct.nk_font*, %struct.nk_font** %14, align 8
  %79 = getelementptr inbounds %struct.nk_font, %struct.nk_font* %78, i32 0, i32 0
  %80 = call i32 @nk_init_default(%struct.nk_context* %10, i32* %79)
  %81 = load i32, i32* @GL_TEXTURE_2D, align 4
  %82 = call i32 @glEnable(i32 %81)
  br label %83

83:                                               ; preds = %88, %61
  %84 = load i32*, i32** @main.win, align 8
  %85 = call i32 @glfwWindowShouldClose(i32* %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br i1 %87, label %88, label %185

88:                                               ; preds = %83
  %89 = load i32*, i32** @main.win, align 8
  %90 = call i32 @pump_input(%struct.nk_context* %10, i32* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @nk_rgb(i32 250, i32 250, i32 250)
  %94 = call i32 @canvas_begin(%struct.nk_context* %10, %struct.nk_canvas* %15, i32 0, i32 0, i32 0, i32 %91, i32 %92, i32 %93)
  %95 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @nk_rect(i32 15, i32 15, i32 210, i32 210)
  %98 = call i32 @nk_rgb(i32 247, i32 230, i32 154)
  %99 = call i32 @nk_fill_rect(i32 %96, i32 %97, i32 5, i32 %98)
  %100 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @nk_rect(i32 20, i32 20, i32 200, i32 200)
  %103 = call i32 @nk_rgb(i32 188, i32 174, i32 118)
  %104 = call i32 @nk_fill_rect(i32 %101, i32 %102, i32 5, i32 %103)
  %105 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nk_rect(i32 30, i32 30, i32 150, i32 20)
  %108 = load %struct.nk_font*, %struct.nk_font** %14, align 8
  %109 = getelementptr inbounds %struct.nk_font, %struct.nk_font* %108, i32 0, i32 0
  %110 = call i32 @nk_rgb(i32 188, i32 174, i32 118)
  %111 = call i32 @nk_rgb(i32 0, i32 0, i32 0)
  %112 = call i32 @nk_draw_text(i32 %106, i32 %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12, i32* %109, i32 %110, i32 %111)
  %113 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nk_rect(i32 250, i32 20, i32 100, i32 100)
  %116 = call i32 @nk_rgb(i32 0, i32 0, i32 255)
  %117 = call i32 @nk_fill_rect(i32 %114, i32 %115, i32 0, i32 %116)
  %118 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @nk_rect(i32 20, i32 250, i32 100, i32 100)
  %121 = call i32 @nk_rgb(i32 255, i32 0, i32 0)
  %122 = call i32 @nk_fill_circle(i32 %119, i32 %120, i32 %121)
  %123 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @nk_rgb(i32 0, i32 255, i32 0)
  %126 = call i32 @nk_fill_triangle(i32 %124, i32 250, i32 250, i32 350, i32 250, i32 300, i32 350, i32 %125)
  %127 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @nk_rgb(i32 255, i32 255, i32 0)
  %130 = call i32 @nk_fill_arc(i32 %128, i32 300, i32 180, i32 50, i32 0, float 0x4002D97C80000000, i32 %129)
  %131 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 0
  store float 2.000000e+02, float* %131, align 16
  %132 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 1
  store float 2.500000e+02, float* %132, align 4
  %133 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 2
  store float 2.500000e+02, float* %133, align 8
  %134 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 3
  store float 3.500000e+02, float* %134, align 4
  %135 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 4
  store float 2.250000e+02, float* %135, align 16
  %136 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 5
  store float 3.500000e+02, float* %136, align 4
  %137 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 6
  store float 2.000000e+02, float* %137, align 8
  %138 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 7
  store float 3.000000e+02, float* %138, align 4
  %139 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 8
  store float 1.750000e+02, float* %139, align 16
  %140 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 9
  store float 3.500000e+02, float* %140, align 4
  %141 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 10
  store float 1.500000e+02, float* %141, align 8
  %142 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 11
  store float 3.500000e+02, float* %142, align 4
  %143 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [12 x float], [12 x float]* %16, i64 0, i64 0
  %146 = call i32 @nk_rgb(i32 0, i32 0, i32 0)
  %147 = call i32 @nk_fill_polygon(i32 %144, float* %145, i32 6, i32 %146)
  %148 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @nk_rgb(i32 189, i32 45, i32 75)
  %151 = call i32 @nk_stroke_line(i32 %149, i32 15, i32 10, i32 200, i32 10, float 2.000000e+00, i32 %150)
  %152 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @nk_rect(i32 370, i32 20, i32 100, i32 100)
  %155 = call i32 @nk_rgb(i32 0, i32 0, i32 255)
  %156 = call i32 @nk_stroke_rect(i32 %153, i32 %154, i32 10, i32 3, i32 %155)
  %157 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @nk_rgb(i32 0, i32 150, i32 220)
  %160 = call i32 @nk_stroke_curve(i32 %158, i32 380, i32 200, i32 405, i32 270, i32 455, i32 120, i32 480, i32 200, i32 2, i32 %159)
  %161 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @nk_rect(i32 20, i32 370, i32 100, i32 100)
  %164 = call i32 @nk_rgb(i32 0, i32 255, i32 120)
  %165 = call i32 @nk_stroke_circle(i32 %162, i32 %163, i32 5, i32 %164)
  %166 = getelementptr inbounds %struct.nk_canvas, %struct.nk_canvas* %15, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @nk_rgb(i32 255, i32 0, i32 143)
  %169 = call i32 @nk_stroke_triangle(i32 %167, i32 370, i32 250, i32 470, i32 250, i32 420, i32 350, i32 6, i32 %168)
  %170 = call i32 @canvas_end(%struct.nk_context* %10, %struct.nk_canvas* %15)
  %171 = load i32*, i32** @main.win, align 8
  %172 = call i32 @glfwGetWindowSize(i32* %171, i32* %6, i32* %7)
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @glViewport(i32 0, i32 0, i32 %173, i32 %174)
  %176 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %177 = call i32 @glClear(i32 %176)
  %178 = call i32 @glClearColor(float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 1.000000e+00)
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @NK_ANTI_ALIASING_ON, align 4
  %182 = call i32 @device_draw(%struct.device* %8, %struct.nk_context* %10, i32 %179, i32 %180, i32 %181)
  %183 = load i32*, i32** @main.win, align 8
  %184 = call i32 @glfwSwapBuffers(i32* %183)
  br label %83

185:                                              ; preds = %83
  %186 = call i32 @nk_font_atlas_clear(%struct.nk_font_atlas* %9)
  %187 = call i32 @nk_free(%struct.nk_context* %10)
  %188 = call i32 @device_shutdown(%struct.device* %8)
  %189 = call i32 (...) @glfwTerminate()
  ret i32 0
}

declare dso_local i32 @glfwSetErrorCallback(i32) #1

declare dso_local i32 @glfwInit(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @glfwWindowHint(i32, i32) #1

declare dso_local i32* @glfwCreateWindow(i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @glfwMakeContextCurrent(i32*) #1

declare dso_local i32 @glfwSetWindowUserPointer(i32*, %struct.nk_context*) #1

declare dso_local i32 @glfwSetCharCallback(i32*, i32) #1

declare dso_local i32 @glfwSetScrollCallback(i32*, i32) #1

declare dso_local i32 @glfwGetWindowSize(i32*, i32*, i32*) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i64 @glewInit(...) #1

declare dso_local i32 @device_init(%struct.device*) #1

declare dso_local i32 @nk_font_atlas_init_default(%struct.nk_font_atlas*) #1

declare dso_local i32 @nk_font_atlas_begin(%struct.nk_font_atlas*) #1

declare dso_local %struct.nk_font* @nk_font_atlas_add_default(%struct.nk_font_atlas*, i32, i32) #1

declare dso_local i8* @nk_font_atlas_bake(%struct.nk_font_atlas*, i32*, i32*, i32) #1

declare dso_local i32 @device_upload_atlas(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @nk_font_atlas_end(%struct.nk_font_atlas*, i32, i32*) #1

declare dso_local i32 @nk_handle_id(i32) #1

declare dso_local i32 @nk_init_default(%struct.nk_context*, i32*) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glfwWindowShouldClose(i32*) #1

declare dso_local i32 @pump_input(%struct.nk_context*, i32*) #1

declare dso_local i32 @canvas_begin(%struct.nk_context*, %struct.nk_canvas*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i32 @nk_fill_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_rect(i32, i32, i32, i32) #1

declare dso_local i32 @nk_draw_text(i32, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @nk_fill_circle(i32, i32, i32) #1

declare dso_local i32 @nk_fill_triangle(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nk_fill_arc(i32, i32, i32, i32, i32, float, i32) #1

declare dso_local i32 @nk_fill_polygon(i32, float*, i32, i32) #1

declare dso_local i32 @nk_stroke_line(i32, i32, i32, i32, i32, float, i32) #1

declare dso_local i32 @nk_stroke_rect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @nk_stroke_curve(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nk_stroke_circle(i32, i32, i32, i32) #1

declare dso_local i32 @nk_stroke_triangle(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @canvas_end(%struct.nk_context*, %struct.nk_canvas*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @glClearColor(float, float, float, float) #1

declare dso_local i32 @device_draw(%struct.device*, %struct.nk_context*, i32, i32, i32) #1

declare dso_local i32 @glfwSwapBuffers(i32*) #1

declare dso_local i32 @nk_font_atlas_clear(%struct.nk_font_atlas*) #1

declare dso_local i32 @nk_free(%struct.nk_context*) #1

declare dso_local i32 @device_shutdown(%struct.device*) #1

declare dso_local i32 @glfwTerminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
