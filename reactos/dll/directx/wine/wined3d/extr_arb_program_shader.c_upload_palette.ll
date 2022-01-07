; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_upload_palette.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_upload_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_arbfp_blitter = type { i32 }
%struct.wined3d_texture = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.wined3d_palette* }
%struct.wined3d_palette = type { i32* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32*)* }

@GL_TEXTURE1 = common dso_local global i32 0, align 4
@GL_TEXTURE_1D = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV = common dso_local global i32 0, align 4
@GL_TEXTURE_ENV_MODE = common dso_local global i32 0, align 4
@GL_REPLACE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_BGRA = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT_8_8_8_8_REV = common dso_local global i32 0, align 4
@upload_palette.black = internal constant i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"P8 surface loaded without a palette.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_arbfp_blitter*, %struct.wined3d_texture*, %struct.wined3d_context*)* @upload_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upload_palette(%struct.wined3d_arbfp_blitter* %0, %struct.wined3d_texture* %1, %struct.wined3d_context* %2) #0 {
  %4 = alloca %struct.wined3d_arbfp_blitter*, align 8
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_palette*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_arbfp_blitter* %0, %struct.wined3d_arbfp_blitter** %4, align 8
  store %struct.wined3d_texture* %1, %struct.wined3d_texture** %5, align 8
  store %struct.wined3d_context* %2, %struct.wined3d_context** %6, align 8
  %9 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.wined3d_palette*, %struct.wined3d_palette** %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi %struct.wined3d_palette* [ %18, %13 ], [ null, %19 ]
  store %struct.wined3d_palette* %21, %struct.wined3d_palette** %7, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 0
  %24 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %23, align 8
  store %struct.wined3d_gl_info* %24, %struct.wined3d_gl_info** %8, align 8
  %25 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %4, align 8
  %26 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %31 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i32 (i32, i32*)*, i32 (i32, i32*)** %33, align 8
  %35 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %35, i32 0, i32 0
  %37 = call i32 %34(i32 1, i32* %36)
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* @GL_TEXTURE1, align 4
  %40 = call i32 @glActiveTexture(i32 %39)
  %41 = call i32 @GL_EXTCALL(i32 %40)
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %43 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load i32, i32* @GL_TEXTURE_1D, align 4
  %48 = load %struct.wined3d_arbfp_blitter*, %struct.wined3d_arbfp_blitter** %4, align 8
  %49 = getelementptr inbounds %struct.wined3d_arbfp_blitter, %struct.wined3d_arbfp_blitter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 %46(i32 %47, i32 %50)
  %52 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %53 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %55, align 8
  %57 = load i32, i32* @GL_TEXTURE_ENV, align 4
  %58 = load i32, i32* @GL_TEXTURE_ENV_MODE, align 4
  %59 = load i32, i32* @GL_REPLACE, align 4
  %60 = call i32 %56(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %62 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load i32, i32* @GL_TEXTURE_1D, align 4
  %67 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %68 = load i32, i32* @GL_NEAREST, align 4
  %69 = call i32 %65(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %71 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %73, align 8
  %75 = load i32, i32* @GL_TEXTURE_1D, align 4
  %76 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %77 = load i32, i32* @GL_NEAREST, align 4
  %78 = call i32 %74(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %80 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %82, align 8
  %84 = load i32, i32* @GL_TEXTURE_1D, align 4
  %85 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %86 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %87 = call i32 %83(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.wined3d_palette*, %struct.wined3d_palette** %7, align 8
  %89 = icmp ne %struct.wined3d_palette* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %38
  %91 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %92 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32*)** %94, align 8
  %96 = load i32, i32* @GL_TEXTURE_1D, align 4
  %97 = load i32, i32* @GL_RGB, align 4
  %98 = load i32, i32* @GL_BGRA, align 4
  %99 = load i32, i32* @GL_UNSIGNED_INT_8_8_8_8_REV, align 4
  %100 = load %struct.wined3d_palette*, %struct.wined3d_palette** %7, align 8
  %101 = getelementptr inbounds %struct.wined3d_palette, %struct.wined3d_palette* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 %95(i32 %96, i32 0, i32 %97, i32 256, i32 0, i32 %98, i32 %99, i32* %102)
  br label %116

104:                                              ; preds = %38
  %105 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %107 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32*)** %109, align 8
  %111 = load i32, i32* @GL_TEXTURE_1D, align 4
  %112 = load i32, i32* @GL_RGB, align 4
  %113 = load i32, i32* @GL_BGRA, align 4
  %114 = load i32, i32* @GL_UNSIGNED_INT_8_8_8_8_REV, align 4
  %115 = call i32 %110(i32 %111, i32 0, i32 %112, i32 1, i32 0, i32 %113, i32 %114, i32* @upload_palette.black)
  br label %116

116:                                              ; preds = %104, %90
  %117 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %118 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %119 = call i32 @context_active_texture(%struct.wined3d_context* %117, %struct.wined3d_gl_info* %118, i32 0)
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glActiveTexture(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @context_active_texture(%struct.wined3d_context*, %struct.wined3d_gl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
