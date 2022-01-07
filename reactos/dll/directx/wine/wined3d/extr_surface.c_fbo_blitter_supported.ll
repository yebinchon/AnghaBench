; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_fbo_blitter_supported.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_fbo_blitter_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.wined3d_gl_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_resource = type { i32, i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32*, i32, i32 }

@wined3d_settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_FBO_ATTACHABLE = common dso_local global i32 0, align 4
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.wined3d_gl_info*, %struct.wined3d_resource*, i32, %struct.wined3d_resource*, i32)* @fbo_blitter_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbo_blitter_supported(i32 %0, %struct.wined3d_gl_info* %1, %struct.wined3d_resource* %2, i32 %3, %struct.wined3d_resource* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca %struct.wined3d_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_format*, align 8
  %15 = alloca %struct.wined3d_format*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_resource* %2, %struct.wined3d_resource** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wined3d_resource* %4, %struct.wined3d_resource** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  %17 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %16, i32 0, i32 2
  %18 = load %struct.wined3d_format*, %struct.wined3d_format** %17, align 8
  store %struct.wined3d_format* %18, %struct.wined3d_format** %14, align 8
  %19 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %20 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %19, i32 0, i32 2
  %21 = load %struct.wined3d_format*, %struct.wined3d_format** %20, align 8
  store %struct.wined3d_format* %21, %struct.wined3d_format** %15, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wined3d_settings, i32 0, i32 0), align 8
  %23 = load i64, i64* @ORM_FBO, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  %27 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25, %6
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %7, align 4
  br label %172

33:                                               ; preds = %25
  %34 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  %35 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %38 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %7, align 4
  br label %172

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %168 [
    i32 129, label %48
    i32 128, label %113
  ]

48:                                               ; preds = %46
  %49 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %50 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %48
  %59 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  %60 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %7, align 4
  br label %172

67:                                               ; preds = %58, %48
  %68 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %69 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WINED3DFMT_FLAG_FBO_ATTACHABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %67
  %78 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %79 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @FALSE, align 4
  store i32 %85, i32* %7, align 4
  br label %172

86:                                               ; preds = %77, %67
  %87 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %88 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %91 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %94, %86
  %99 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %100 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @is_identity_fixup(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %106 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @is_identity_fixup(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104, %98
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %7, align 4
  br label %172

112:                                              ; preds = %104, %94
  br label %170

113:                                              ; preds = %46
  %114 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %115 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %121 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %113
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %7, align 4
  br label %172

127:                                              ; preds = %113
  %128 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %129 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %135 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %127
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %7, align 4
  br label %172

141:                                              ; preds = %127
  %142 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %143 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @is_complex_fixup(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %141
  %148 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %149 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @is_complex_fixup(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %147
  %154 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %155 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @is_scaling_fixup(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %153
  %160 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %161 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @is_scaling_fixup(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159, %153, %147, %141
  %166 = load i32, i32* @FALSE, align 4
  store i32 %166, i32* %7, align 4
  br label %172

167:                                              ; preds = %159
  br label %170

168:                                              ; preds = %46
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %7, align 4
  br label %172

170:                                              ; preds = %167, %112
  %171 = load i32, i32* @TRUE, align 4
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %170, %168, %165, %139, %125, %110, %84, %65, %44, %31
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @is_identity_fixup(i32) #1

declare dso_local i32 @is_complex_fixup(i32) #1

declare dso_local i32 @is_scaling_fixup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
