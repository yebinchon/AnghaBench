; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_restore_pixel_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_restore_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32*, i64, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64* }

@FALSE = common dso_local global i32 0, align 4
@WGL_WINE_PIXEL_FORMAT_PASSTHROUGH = common dso_local global i64 0, align 8
@DCX_USESTYLE = common dso_local global i32 0, align 4
@DCX_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"wglSetPixelFormatWINE failed to restore pixel format %d on window %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"can't restore pixel format %d on window %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*)* @context_restore_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_restore_pixel_format(%struct.wined3d_context* %0) #0 {
  %2 = alloca %struct.wined3d_context*, align 8
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %2, align 8
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %6, i32 0, i32 2
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_gl_info* %8, %struct.wined3d_gl_info** %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %1
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @IsWindow(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %14
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 2
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %22, align 8
  %24 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @WGL_WINE_PIXEL_FORMAT_PASSTHROUGH, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %20
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %32 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @DCX_USESTYLE, align 4
  %35 = load i32, i32* @DCX_CACHE, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @GetDCEx(i32* %33, i32 0, i32 %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %30
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %43 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @wglSetPixelFormatWINE(i64 %41, i64 %44)
  %46 = call i32 @GL_EXTCALL(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %50 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %53 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ERR(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %51, i32* %54)
  br label %56

56:                                               ; preds = %48, %40
  %57 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %58 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @ReleaseDC(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %56, %30
  br label %71

63:                                               ; preds = %20
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %65 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %68 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32* %69)
  br label %71

71:                                               ; preds = %63, %62
  br label %72

72:                                               ; preds = %71, %14, %1
  %73 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %74 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %76 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @IsWindow(i32*) #1

declare dso_local i64 @GetDCEx(i32*, i32, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @wglSetPixelFormatWINE(i64, i64) #1

declare dso_local i32 @ERR(i8*, i64, i32*) #1

declare dso_local i32 @ReleaseDC(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
