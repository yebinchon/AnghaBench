; ModuleID = '/home/carl/AnghaBench/nuklear/demo/sdl_opengles2/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/sdl_opengles2/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.nk_font_atlas = type { i32 }

@SDL_HINT_VIDEO_HIGHDPI_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SDL_GL_CONTEXT_FLAGS = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_PROFILE_MASK = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_PROFILE_CORE = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_MAJOR_VERSION = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_MINOR_VERSION = common dso_local global i32 0, align 4
@SDL_GL_DOUBLEBUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Demo\00", align 1
@SDL_WINDOWPOS_CENTERED = common dso_local global i32 0, align 4
@WINDOW_WIDTH = common dso_local global i32 0, align 4
@WINDOW_HEIGHT = common dso_local global i32 0, align 4
@SDL_WINDOW_OPENGL = common dso_local global i32 0, align 4
@SDL_WINDOW_SHOWN = common dso_local global i32 0, align 4
@SDL_WINDOW_ALLOW_HIGHDPI = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@running = common dso_local global i64 0, align 8
@nk_true = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nk_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nk_font_atlas*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @SDL_HINT_VIDEO_HIGHDPI_DISABLED, align 4
  %10 = call i32 @SDL_SetHint(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @SDL_GL_CONTEXT_FLAGS, align 4
  %12 = load i32, i32* @SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG, align 4
  %13 = call i32 @SDL_GL_SetAttribute(i32 %11, i32 %12)
  %14 = load i32, i32* @SDL_GL_CONTEXT_PROFILE_MASK, align 4
  %15 = load i32, i32* @SDL_GL_CONTEXT_PROFILE_CORE, align 4
  %16 = call i32 @SDL_GL_SetAttribute(i32 %14, i32 %15)
  %17 = load i32, i32* @SDL_GL_CONTEXT_MAJOR_VERSION, align 4
  %18 = call i32 @SDL_GL_SetAttribute(i32 %17, i32 3)
  %19 = load i32, i32* @SDL_GL_CONTEXT_MINOR_VERSION, align 4
  %20 = call i32 @SDL_GL_SetAttribute(i32 %19, i32 3)
  %21 = load i32, i32* @SDL_GL_DOUBLEBUFFER, align 4
  %22 = call i32 @SDL_GL_SetAttribute(i32 %21, i32 1)
  %23 = load i32, i32* @SDL_WINDOWPOS_CENTERED, align 4
  %24 = load i32, i32* @SDL_WINDOWPOS_CENTERED, align 4
  %25 = load i32, i32* @WINDOW_WIDTH, align 4
  %26 = load i32, i32* @WINDOW_HEIGHT, align 4
  %27 = load i32, i32* @SDL_WINDOW_OPENGL, align 4
  %28 = load i32, i32* @SDL_WINDOW_SHOWN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SDL_WINDOW_ALLOW_HIGHDPI, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @SDL_CreateWindow(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, i32 %31)
  store i32 %32, i32* @win, align 4
  %33 = load i32, i32* @win, align 4
  %34 = call i32 @SDL_GL_CreateContext(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @WINDOW_WIDTH, align 4
  %36 = load i32, i32* @WINDOW_HEIGHT, align 4
  %37 = call i32 @glViewport(i32 0, i32 0, i32 %35, i32 %36)
  %38 = load i32, i32* @win, align 4
  %39 = call %struct.nk_context* @nk_sdl_init(i32 %38)
  store %struct.nk_context* %39, %struct.nk_context** %6, align 8
  %40 = call i32 @nk_sdl_font_stash_begin(%struct.nk_font_atlas** %8)
  %41 = call i32 (...) @nk_sdl_font_stash_end()
  br label %42

42:                                               ; preds = %45, %2
  %43 = load i64, i64* @running, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %47 = bitcast %struct.nk_context* %46 to i8*
  %48 = call i32 @MainLoop(i8* %47)
  br label %42

49:                                               ; preds = %42
  %50 = call i32 (...) @nk_sdl_shutdown()
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @SDL_GL_DeleteContext(i32 %51)
  %53 = load i32, i32* @win, align 4
  %54 = call i32 @SDL_DestroyWindow(i32 %53)
  %55 = call i32 (...) @SDL_Quit()
  ret i32 0
}

declare dso_local i32 @SDL_SetHint(i32, i8*) #1

declare dso_local i32 @SDL_GL_SetAttribute(i32, i32) #1

declare dso_local i32 @SDL_CreateWindow(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_GL_CreateContext(i32) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local %struct.nk_context* @nk_sdl_init(i32) #1

declare dso_local i32 @nk_sdl_font_stash_begin(%struct.nk_font_atlas**) #1

declare dso_local i32 @nk_sdl_font_stash_end(...) #1

declare dso_local i32 @MainLoop(i8*) #1

declare dso_local i32 @nk_sdl_shutdown(...) #1

declare dso_local i32 @SDL_GL_DeleteContext(i32) #1

declare dso_local i32 @SDL_DestroyWindow(i32) #1

declare dso_local i32 @SDL_Quit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
