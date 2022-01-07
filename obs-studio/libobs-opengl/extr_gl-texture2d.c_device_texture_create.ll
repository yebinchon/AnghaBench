; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_device_texture_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_device_texture_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_texture_2d = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@GS_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GS_DYNAMIC = common dso_local global i32 0, align 4
@GS_RENDER_TARGET = common dso_local global i32 0, align 4
@GS_GL_DUMMYTEX = common dso_local global i32 0, align 4
@GS_BUILD_MIPMAPS = common dso_local global i32 0, align 4
@GL_TEXTURE_MAX_LEVEL = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"device_texture_create (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @device_texture_create(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32** %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.gs_texture_2d*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = call %struct.gs_texture_2d* @bzalloc(i32 64)
  store %struct.gs_texture_2d* %22, %struct.gs_texture_2d** %16, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %25 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 12
  store i32* %23, i32** %26, align 8
  %27 = load i32, i32* @GS_TEXTURE_2D, align 4
  %28 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %29 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 11
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %33 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %37 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @convert_gs_format(i32 %39)
  %41 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %42 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 7
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @convert_gs_internal_format(i32 %44)
  %46 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %47 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @get_gl_format_type(i32 %49)
  %51 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %52 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 8
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @GL_TEXTURE_2D, align 4
  %55 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %56 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 10
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @GS_DYNAMIC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %64 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @GS_RENDER_TARGET, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %72 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @GS_GL_DUMMYTEX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %80 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @GS_BUILD_MIPMAPS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %88 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %92 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %95 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %97 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 9
  %99 = call i32 @gl_gen_textures(i32 1, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %7
  br label %193

102:                                              ; preds = %7
  %103 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %104 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %102
  %109 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %110 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %116 = call i32 @create_pixel_unpack_buffer(%struct.gs_texture_2d* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  br label %193

119:                                              ; preds = %114, %108
  %120 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %121 = load i32**, i32*** %14, align 8
  %122 = call i32 @upload_texture_2d(%struct.gs_texture_2d* %120, i32** %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %193

125:                                              ; preds = %119
  br label %190

126:                                              ; preds = %102
  %127 = load i32, i32* @GL_TEXTURE_2D, align 4
  %128 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %129 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @gl_bind_texture(i32 %127, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %193

135:                                              ; preds = %126
  %136 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %137 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %140 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @gs_get_format_bpp(i32 %142)
  %144 = mul nsw i32 %138, %143
  store i32 %144, i32* %17, align 4
  %145 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %146 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %17, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sdiv i32 %149, 8
  store i32 %150, i32* %18, align 4
  %151 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %152 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @gs_is_compressed_format(i32 %154)
  store i32 %155, i32* %19, align 4
  %156 = load i32, i32* @GL_TEXTURE_2D, align 4
  %157 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %158 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %162 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %166 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %171 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %174 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @gl_init_face(i32 %156, i32 %160, i32 1, i32 %164, i32 %168, i32 %169, i32 %172, i32 %175, i32 %176, i32* null)
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* @GL_TEXTURE_2D, align 4
  %179 = load i32, i32* @GL_TEXTURE_MAX_LEVEL, align 4
  %180 = call i32 @gl_tex_param_i(i32 %178, i32 %179, i32 0)
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* @GL_TEXTURE_2D, align 4
  %182 = call i32 @gl_bind_texture(i32 %181, i32 0)
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %20, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %135
  %186 = load i32, i32* %21, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185, %135
  br label %193

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189, %125
  %191 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %192 = bitcast %struct.gs_texture_2d* %191 to i32*
  store i32* %192, i32** %8, align 8
  br label %199

193:                                              ; preds = %188, %134, %124, %118, %101
  %194 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %16, align 8
  %195 = bitcast %struct.gs_texture_2d* %194 to i32*
  %196 = call i32 @gs_texture_destroy(i32* %195)
  %197 = load i32, i32* @LOG_ERROR, align 4
  %198 = call i32 @blog(i32 %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %8, align 8
  br label %199

199:                                              ; preds = %193, %190
  %200 = load i32*, i32** %8, align 8
  ret i32* %200
}

declare dso_local %struct.gs_texture_2d* @bzalloc(i32) #1

declare dso_local i32 @convert_gs_format(i32) #1

declare dso_local i32 @convert_gs_internal_format(i32) #1

declare dso_local i32 @get_gl_format_type(i32) #1

declare dso_local i32 @gl_gen_textures(i32, i32*) #1

declare dso_local i32 @create_pixel_unpack_buffer(%struct.gs_texture_2d*) #1

declare dso_local i32 @upload_texture_2d(%struct.gs_texture_2d*, i32**) #1

declare dso_local i32 @gl_bind_texture(i32, i32) #1

declare dso_local i32 @gs_get_format_bpp(i32) #1

declare dso_local i32 @gs_is_compressed_format(i32) #1

declare dso_local i32 @gl_init_face(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @gl_tex_param_i(i32, i32, i32) #1

declare dso_local i32 @gs_texture_destroy(i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
