; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_map_legacy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi_gl.c_vaapi_gl_map_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.TYPE_9__**, i32, %struct.priv* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.ra_format* }
%struct.ra_format = type { i32, i32* }
%struct.priv = type { i32, %struct.TYPE_9__**, %struct.TYPE_10__, %struct.vaapi_gl_mapper_priv* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.vaapi_gl_mapper_priv = type { i32*, i32 (i32, i32)*, i32*, i32 (i32, i32, i32, i32*, i32*)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 (i32, i32)* }

@EGL_NONE = common dso_local global i32 0, align 4
@EGL_LINUX_DRM_FOURCC_EXT = common dso_local global i32 0, align 4
@EGL_WIDTH = common dso_local global i32 0, align 4
@EGL_HEIGHT = common dso_local global i32 0, align 4
@EGL_DMA_BUF_PLANE0_FD_EXT = common dso_local global i32 0, align 4
@EGL_DMA_BUF_PLANE0_OFFSET_EXT = common dso_local global i32 0, align 4
@EGL_DMA_BUF_PLANE0_PITCH_EXT = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@EGL_LINUX_DMA_BUF_EXT = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*, %struct.TYPE_11__*, i32*)* @vaapi_gl_map_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_gl_map_legacy(%struct.ra_hwdec_mapper* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ra_hwdec_mapper*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.vaapi_gl_mapper_priv*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [20 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.ra_format*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %20 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %19, i32 0, i32 2
  %21 = load %struct.priv*, %struct.priv** %20, align 8
  store %struct.priv* %21, %struct.priv** %8, align 8
  %22 = load %struct.priv*, %struct.priv** %8, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 3
  %24 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %23, align 8
  store %struct.vaapi_gl_mapper_priv* %24, %struct.vaapi_gl_mapper_priv** %9, align 8
  %25 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %26 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_12__* @ra_gl_get(i32 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %10, align 8
  %29 = load %struct.priv*, %struct.priv** %8, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %200, %3
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.priv*, %struct.priv** %8, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %203

37:                                               ; preds = %31
  %38 = bitcast [20 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %38, i8 0, i64 80, i1 false)
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %40 = load i32, i32* @EGL_NONE, align 4
  store i32 %40, i32* %39, align 4
  store i32 0, i32* %14, align 4
  %41 = load %struct.priv*, %struct.priv** %8, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.ra_format*, %struct.ra_format** %49, align 8
  store %struct.ra_format* %50, %struct.ra_format** %15, align 8
  %51 = load %struct.ra_format*, %struct.ra_format** %15, align 8
  %52 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %16, align 4
  %54 = load %struct.ra_format*, %struct.ra_format** %15, align 8
  %55 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 8
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %73, label %64

64:                                               ; preds = %37
  %65 = load i32, i32* %16, align 4
  %66 = icmp sgt i32 %65, 3
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %17, align 4
  %72 = icmp sgt i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67, %64, %37
  store i32 0, i32* %4, align 4
  br label %209

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %17, align 4
  %79 = sub nsw i32 %78, 1
  %80 = mul nsw i32 %79, 4
  %81 = add nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %75, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %209

88:                                               ; preds = %74
  %89 = load i32, i32* @EGL_LINUX_DRM_FOURCC_EXT, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @ADD_ATTRIB(i32 %89, i32 %90)
  %92 = load i32, i32* @EGL_WIDTH, align 4
  %93 = load %struct.priv*, %struct.priv** %8, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 %97
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ADD_ATTRIB(i32 %92, i32 %102)
  %104 = load i32, i32* @EGL_HEIGHT, align 4
  %105 = load %struct.priv*, %struct.priv** %8, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %107, i64 %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ADD_ATTRIB(i32 %104, i32 %114)
  %116 = load i32, i32* @EGL_DMA_BUF_PLANE0_FD_EXT, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ADD_ATTRIB(i32 %116, i32 %119)
  %121 = load i32, i32* @EGL_DMA_BUF_PLANE0_OFFSET_EXT, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ADD_ATTRIB(i32 %121, i32 %128)
  %130 = load i32, i32* @EGL_DMA_BUF_PLANE0_PITCH_EXT, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ADD_ATTRIB(i32 %130, i32 %137)
  %139 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %9, align 8
  %140 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %139, i32 0, i32 3
  %141 = load i32 (i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32*, i32*)** %140, align 8
  %142 = call i32 (...) @eglGetCurrentDisplay()
  %143 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %144 = load i32, i32* @EGL_LINUX_DMA_BUF_EXT, align 4
  %145 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %146 = call i32 %141(i32 %142, i32 %143, i32 %144, i32* null, i32* %145)
  %147 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %9, align 8
  %148 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %9, align 8
  %154 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %209

162:                                              ; preds = %88
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load i32, i32* @GL_TEXTURE_2D, align 4
  %167 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %9, align 8
  %168 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 %165(i32 %166, i32 %173)
  %175 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %9, align 8
  %176 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %175, i32 0, i32 1
  %177 = load i32 (i32, i32)*, i32 (i32, i32)** %176, align 8
  %178 = load i32, i32* @GL_TEXTURE_2D, align 4
  %179 = load %struct.vaapi_gl_mapper_priv*, %struct.vaapi_gl_mapper_priv** %9, align 8
  %180 = getelementptr inbounds %struct.vaapi_gl_mapper_priv, %struct.vaapi_gl_mapper_priv* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 %177(i32 %178, i32 %185)
  %187 = load %struct.priv*, %struct.priv** %8, align 8
  %188 = getelementptr inbounds %struct.priv, %struct.priv* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %189, i64 %191
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %195 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %194, i32 0, i32 0
  %196 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %196, i64 %198
  store %struct.TYPE_9__* %193, %struct.TYPE_9__** %199, align 8
  br label %200

200:                                              ; preds = %162
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %31

203:                                              ; preds = %31
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i32 (i32, i32)*, i32 (i32, i32)** %205, align 8
  %207 = load i32, i32* @GL_TEXTURE_2D, align 4
  %208 = call i32 %206(i32 %207, i32 0)
  store i32 1, i32* %4, align 4
  br label %209

209:                                              ; preds = %203, %161, %87, %73
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.TYPE_12__* @ra_gl_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ADD_ATTRIB(i32, i32) #1

declare dso_local i32 @eglGetCurrentDisplay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
