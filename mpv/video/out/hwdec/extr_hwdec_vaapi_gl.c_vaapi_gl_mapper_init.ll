; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vaapi_gl_mapper_priv = type { i32*, i8*, i8*, i8* }
%struct.ra_hwdec_mapper = type { i32, %struct.priv* }
%struct.priv = type { i32*, i32, %struct.vaapi_gl_mapper_priv* }
%struct.ra_imgfmt_desc = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32, i32)*, i32 (i32, i32, i32)*, i32 (i32, i32*)* }
%struct.ra_tex_params = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"eglCreateImageKHR\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"eglDestroyImageKHR\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"glEGLImageTargetTexture2DOES\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@RA_CTYPE_UNORM = common dso_local global i64 0, align 8
@p = common dso_local global %struct.vaapi_gl_mapper_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*, %struct.ra_imgfmt_desc*)* @vaapi_gl_mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_gl_mapper_init(%struct.ra_hwdec_mapper* %0, %struct.ra_imgfmt_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra_hwdec_mapper*, align 8
  %5 = alloca %struct.ra_imgfmt_desc*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.vaapi_gl_mapper_priv*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ra_tex_params, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %4, align 8
  store %struct.ra_imgfmt_desc* %1, %struct.ra_imgfmt_desc** %5, align 8
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 1
  %13 = load %struct.priv*, %struct.priv** %12, align 8
  store %struct.priv* %13, %struct.priv** %6, align 8
  %14 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %15 = ptrtoint %struct.vaapi_gl_mapper_priv* %14 to i32
  %16 = call %struct.vaapi_gl_mapper_priv* @talloc_ptrtype(i32* null, i32 %15)
  store %struct.vaapi_gl_mapper_priv* %16, %struct.vaapi_gl_mapper_priv** %7, align 8
  %17 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %18 = load %struct.priv*, %struct.priv** %6, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 2
  store %struct.vaapi_gl_mapper_priv* %17, %struct.vaapi_gl_mapper_priv** %19, align 8
  %20 = call i64 @eglGetProcAddress(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %23 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = call i64 @eglGetProcAddress(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %27 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = call i64 @eglGetProcAddress(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %31 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %33 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %2
  %37 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %38 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %43 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %36, %2
  store i32 0, i32* %3, align 4
  br label %172

47:                                               ; preds = %41
  %48 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %49 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_5__* @ra_gl_get(i32 %50)
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %8, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32 (i32, i32*)*, i32 (i32, i32*)** %53, align 8
  %55 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %56 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 %54(i32 4, i32* %57)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %168, %47
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %62 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %171

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load i32, i32* @GL_TEXTURE_2D, align 4
  %70 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %71 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %68(i32 %69, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %79, align 8
  %81 = load i32, i32* @GL_TEXTURE_2D, align 4
  %82 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %83 = load i32, i32* @GL_LINEAR, align 4
  %84 = call i32 %80(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %86, align 8
  %88 = load i32, i32* @GL_TEXTURE_2D, align 4
  %89 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %90 = load i32, i32* @GL_LINEAR, align 4
  %91 = call i32 %87(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %93, align 8
  %95 = load i32, i32* @GL_TEXTURE_2D, align 4
  %96 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %97 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %98 = call i32 %94(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %100, align 8
  %102 = load i32, i32* @GL_TEXTURE_2D, align 4
  %103 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %104 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %105 = call i32 %101(i32 %102, i32 %103, i32 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32 (i32, i32)*, i32 (i32, i32)** %107, align 8
  %109 = load i32, i32* @GL_TEXTURE_2D, align 4
  %110 = call i32 %108(i32 %109, i32 0)
  %111 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 0
  store i32 2, i32* %111, align 8
  %112 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 2
  store i32 1, i32* %113, align 8
  %114 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 3
  store i32 1, i32* %114, align 4
  %115 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 4
  %116 = load %struct.ra_imgfmt_desc*, %struct.ra_imgfmt_desc** %5, align 8
  %117 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %118, i64 %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %115, align 8
  %123 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 5
  %124 = load %struct.priv*, %struct.priv** %6, align 8
  %125 = getelementptr inbounds %struct.priv, %struct.priv* %124, i32 0, i32 1
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @mp_image_plane_h(i32* %125, i32 %126)
  store i32 %127, i32* %123, align 8
  %128 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 6
  %129 = load %struct.priv*, %struct.priv** %6, align 8
  %130 = getelementptr inbounds %struct.priv, %struct.priv* %129, i32 0, i32 1
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @mp_image_plane_w(i32* %130, i32 %131)
  store i32 %132, i32* %128, align 4
  %133 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %10, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @RA_CTYPE_UNORM, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %65
  store i32 0, i32* %3, align 4
  br label %172

140:                                              ; preds = %65
  %141 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %142 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %7, align 8
  %145 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @ra_create_wrapped_tex(i32 %143, %struct.ra_tex_params* %10, i32 %150)
  %152 = load %struct.priv*, %struct.priv** %6, align 8
  %153 = getelementptr inbounds %struct.priv, %struct.priv* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %151, i32* %157, align 4
  %158 = load %struct.priv*, %struct.priv** %6, align 8
  %159 = getelementptr inbounds %struct.priv, %struct.priv* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %172

167:                                              ; preds = %140
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %59

171:                                              ; preds = %59
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %166, %139, %46
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.vaapi_gl_mapper_priv* @talloc_ptrtype(i32*, i32) #1

declare dso_local i64 @eglGetProcAddress(i8*) #1

declare dso_local %struct.TYPE_5__* @ra_gl_get(i32) #1

declare dso_local i32 @mp_image_plane_h(i32*, i32) #1

declare dso_local i32 @mp_image_plane_w(i32*, i32) #1

declare dso_local i32 @ra_create_wrapped_tex(i32, %struct.ra_tex_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
