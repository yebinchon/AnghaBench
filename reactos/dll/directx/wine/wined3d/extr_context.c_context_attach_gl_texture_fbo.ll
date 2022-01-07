; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_attach_gl_texture_fbo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_attach_gl_texture_fbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)* }
%struct.wined3d_fbo_resource = type { i32, i32, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@WINED3D_ALL_LAYERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"OpenGL implementation doesn't support glFramebufferTexture().\0A\00", align 1
@GL_TEXTURE_1D_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_2D_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"OpenGL implementation doesn't support glFramebufferTextureLayer().\0A\00", align 1
@GL_TEXTURE_1D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"glFramebufferTexture1D()\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"attach texture to fbo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i32, i32, %struct.wined3d_fbo_resource*)* @context_attach_gl_texture_fbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_attach_gl_texture_fbo(%struct.wined3d_context* %0, i32 %1, i32 %2, %struct.wined3d_fbo_resource* %3) #0 {
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_fbo_resource*, align 8
  %9 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.wined3d_fbo_resource* %3, %struct.wined3d_fbo_resource** %8, align 8
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %10, i32 0, i32 0
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  store %struct.wined3d_gl_info* %12, %struct.wined3d_gl_info** %9, align 8
  %13 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %14 = icmp ne %struct.wined3d_fbo_resource* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %17 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GL_TEXTURE_2D, align 4
  %23 = call i32 %19(i32 %20, i32 %21, i32 %22, i32 0, i32 0)
  br label %139

24:                                               ; preds = %4
  %25 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %26 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WINED3D_ALL_LAYERS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %32 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %33, align 8
  %35 = icmp ne i32 (i32, i32, i32, i32)* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = call i32 @FIXME(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %141

38:                                               ; preds = %30
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %40 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %46 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %49 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %42(i32 %43, i32 %44, i32 %47, i32 %50)
  br label %138

52:                                               ; preds = %24
  %53 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %54 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GL_TEXTURE_1D_ARRAY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %60 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GL_TEXTURE_2D_ARRAY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %66 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GL_TEXTURE_3D, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %64, %58, %52
  %71 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %72 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %73, align 8
  %75 = icmp ne i32 (i32, i32, i32, i32, i32)* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = call i32 @FIXME(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %141

78:                                               ; preds = %70
  %79 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %80 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %86 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %89 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %92 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %82(i32 %83, i32 %84, i32 %87, i32 %90, i32 %93)
  br label %137

95:                                               ; preds = %64
  %96 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %97 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @GL_TEXTURE_1D, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %103 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %109 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %112 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %115 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 %105(i32 %106, i32 %107, i32 %110, i32 %113, i32 %116)
  %118 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %136

119:                                              ; preds = %95
  %120 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %121 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %127 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %130 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.wined3d_fbo_resource*, %struct.wined3d_fbo_resource** %8, align 8
  %133 = getelementptr inbounds %struct.wined3d_fbo_resource, %struct.wined3d_fbo_resource* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 %123(i32 %124, i32 %125, i32 %128, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %119, %101
  br label %137

137:                                              ; preds = %136, %78
  br label %138

138:                                              ; preds = %137, %38
  br label %139

139:                                              ; preds = %138, %15
  %140 = call i32 @checkGLcall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %76, %36
  ret void
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
