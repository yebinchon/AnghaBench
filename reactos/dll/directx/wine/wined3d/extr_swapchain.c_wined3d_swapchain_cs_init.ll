; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_wined3d_swapchain_cs_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_wined3d_swapchain_cs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.wined3d_swapchain = type { i32, i32*, %struct.TYPE_11__*, %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }

@wined3d_swapchain_cs_init.formats = internal constant [5 x i32] [i32 131, i32 130, i32 129, i32 132, i32 128], align 16
@WINED3DUSAGE_DEPTHSTENCIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Depth stencil format %s is not supported, trying next format.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to create context.\0A\00", align 1
@wined3d_settings = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Add OpenGL context recreation support.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wined3d_swapchain_cs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_swapchain_cs_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wined3d_swapchain*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.wined3d_swapchain*
  store %struct.wined3d_swapchain* %7, %struct.wined3d_swapchain** %3, align 8
  %8 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %8, i32 0, i32 5
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.wined3d_gl_info* %13, %struct.wined3d_gl_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %49, %1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @wined3d_swapchain_cs_init.formats, i64 0, i64 0))
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* @wined3d_swapchain_cs_init.formats, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WINED3DUSAGE_DEPTHSTENCIL, align 4
  %25 = call %struct.TYPE_11__* @wined3d_get_format(%struct.wined3d_gl_info* %19, i32 %23, i32 %24)
  %26 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %27 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %26, i32 0, i32 2
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %27, align 8
  %28 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %29 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %32, i32 0, i32 2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = call i32 @context_create(%struct.wined3d_swapchain* %28, i32 %31, %struct.TYPE_11__* %34)
  %36 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %37 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = icmp ne i32 %35, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %18
  br label %52

42:                                               ; preds = %18
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* @wined3d_swapchain_cs_init.formats, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @debug_d3dformat(i32 %46)
  %48 = call i32 @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %14

52:                                               ; preds = %41, %14
  %53 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %54 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %52
  %60 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %95

61:                                               ; preds = %52
  %62 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %63 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wined3d_settings, i32 0, i32 0), align 8
  %65 = load i64, i64* @ORM_FBO, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %69 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %75 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %79 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %78, i32 0, i32 2
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %73, %67
  %85 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %73, %61
  %87 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %88 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @context_release(i32 %91)
  %93 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %3, align 8
  %94 = call i32 @wined3d_swapchain_update_swap_interval_cs(%struct.wined3d_swapchain* %93)
  br label %95

95:                                               ; preds = %86, %59
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_11__* @wined3d_get_format(%struct.wined3d_gl_info*, i32, i32) #1

declare dso_local i32 @context_create(%struct.wined3d_swapchain*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @context_release(i32) #1

declare dso_local i32 @wined3d_swapchain_update_swap_interval_cs(%struct.wined3d_swapchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
