; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_platform_init_swapchain.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-x11.c_gl_platform_init_swapchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_swap_chain = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@ctx_visual_attribs = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to find FBConfig!\00", align 1
@GLX_VISUAL_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bad call to GetFBConfigAttrib!\00", align 1
@XCB_CW_BORDER_PIXEL = common dso_local global i32 0, align 4
@XCB_CW_COLORMAP = common dso_local global i32 0, align 4
@XCB_COLORMAP_ALLOC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_platform_init_swapchain(%struct.gs_swap_chain* %0) #0 {
  %2 = alloca %struct.gs_swap_chain*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  store %struct.gs_swap_chain* %0, %struct.gs_swap_chain** %2, align 8
  %17 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %2, align 8
  %18 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @XGetXCBConnection(i32* %24)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @xcb_generate_id(i32* %26)
  store i8* %27, i8** %5, align 8
  %28 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %2, align 8
  %29 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.TYPE_14__* @get_window_geometry(i32* %33, i8* %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %8, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  br label %125

39:                                               ; preds = %1
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_screen_num_from_root(i32* %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %124

48:                                               ; preds = %39
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ctx_visual_attribs, align 4
  %52 = call i32* @glXChooseFBConfig(i32* %49, i32 %50, i32 %51, i32* %12)
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* @LOG_ERROR, align 4
  %60 = call i32 @blog(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %123

61:                                               ; preds = %55
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GLX_VISUAL_ID, align 4
  %67 = call i32 @glXGetFBConfigAttrib(i32* %62, i32 %65, i32 %66, i32* %10)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @LOG_ERROR, align 4
  %72 = call i32 @blog(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %120

73:                                               ; preds = %61
  %74 = load i32*, i32** %4, align 8
  %75 = call i8* @xcb_generate_id(i32* %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* @XCB_CW_BORDER_PIXEL, align 4
  %78 = load i32, i32* @XCB_CW_COLORMAP, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %15, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %81, align 4
  %83 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 0, i32* %83, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @XCB_COLORMAP_ALLOC_NONE, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @xcb_create_colormap(i32* %84, i32 %85, i32 %86, i8* %87, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %15, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %102 = call i32 @xcb_create_window(i32* %90, i32 24, i8* %91, i8* %92, i32 0, i32 0, i32 %95, i32 %98, i32 0, i32 0, i32 %99, i32 %100, i32* %101)
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %2, align 8
  %107 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %106, i32 0, i32 0
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load %struct.gs_swap_chain*, %struct.gs_swap_chain** %2, align 8
  %112 = getelementptr inbounds %struct.gs_swap_chain, %struct.gs_swap_chain* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  store i8* %110, i8** %114, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @xcb_map_window(i32* %115, i8* %116)
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @XFree(i32* %118)
  store i32 1, i32* %8, align 4
  br label %126

120:                                              ; preds = %70
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @XFree(i32* %121)
  br label %123

123:                                              ; preds = %120, %58
  br label %124

124:                                              ; preds = %123, %47
  br label %125

125:                                              ; preds = %124, %38
  br label %126

126:                                              ; preds = %125, %73
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %128 = call i32 @free(%struct.TYPE_14__* %127)
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i32* @XGetXCBConnection(i32*) #1

declare dso_local i8* @xcb_generate_id(i32*) #1

declare dso_local %struct.TYPE_14__* @get_window_geometry(i32*, i8*) #1

declare dso_local i32 @get_screen_num_from_root(i32*, i32) #1

declare dso_local i32* @glXChooseFBConfig(i32*, i32, i32, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @glXGetFBConfigAttrib(i32*, i32, i32, i32*) #1

declare dso_local i32 @xcb_create_colormap(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @xcb_create_window(i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xcb_map_window(i32*, i8*) #1

declare dso_local i32 @XFree(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
