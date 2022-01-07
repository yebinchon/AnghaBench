; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_osx.c_mapper_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_osx.c_mapper_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, i32, %struct.TYPE_5__*, %struct.priv* }
%struct.TYPE_5__ = type { i64* }
%struct.priv = type { i32*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, %struct.ra_format** }
%struct.ra_format = type { i32 }
%struct.TYPE_7__ = type { i32 (...)*, i32 (i32, i32)* }
%struct.ra_tex_params = type { i32, i32, i32, i32, i32, %struct.ra_format*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"CVPixelBuffer has no IOSurface\0A\00", align 1
@GL_TEXTURE_RECTANGLE = common dso_local global i32 0, align 4
@kCGLNoError = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"error creating IOSurface texture for plane %d: %s (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_map(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ra_format*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.ra_tex_params, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %17 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %18 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %17, i32 0, i32 3
  %19 = load %struct.priv*, %struct.priv** %18, align 8
  store %struct.priv* %19, %struct.priv** %4, align 8
  %20 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %21 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_7__* @ra_gl_get(i32 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.priv*, %struct.priv** %4, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @CVPixelBufferRelease(i64 %26)
  %28 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %29 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.priv*, %struct.priv** %4, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @CVPixelBufferRetain(i64 %39)
  %41 = load %struct.priv*, %struct.priv** %4, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @CVPixelBufferGetIOSurface(i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %1
  %48 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %49 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %192

50:                                               ; preds = %1
  %51 = load %struct.priv*, %struct.priv** %4, align 8
  %52 = getelementptr inbounds %struct.priv, %struct.priv* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @CVPixelBufferIsPlanar(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.priv*, %struct.priv** %4, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @CVPixelBufferGetPlaneCount(i64 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.priv*, %struct.priv** %4, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %61, %50
  %69 = load %struct.priv*, %struct.priv** %4, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br label %74

74:                                               ; preds = %68, %61
  %75 = phi i1 [ true, %61 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* @GL_TEXTURE_RECTANGLE, align 4
  store i32 %78, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %188, %74
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.priv*, %struct.priv** %4, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %191

86:                                               ; preds = %79
  %87 = load %struct.priv*, %struct.priv** %4, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.ra_format**, %struct.ra_format*** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ra_format*, %struct.ra_format** %90, i64 %92
  %94 = load %struct.ra_format*, %struct.ra_format** %93, align 8
  store %struct.ra_format* %94, %struct.ra_format** %11, align 8
  %95 = load %struct.ra_format*, %struct.ra_format** %11, align 8
  %96 = call i32 @ra_gl_get_format(%struct.ra_format* %95, i32* %12, i32* %13, i32* %14)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32 (i32, i32)*, i32 (i32, i32)** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.priv*, %struct.priv** %4, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 %99(i32 %100, i32 %107)
  %109 = call i32 (...) @CGLGetCurrentContext()
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @IOSurfaceGetWidthOfPlane(i32 %112, i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @IOSurfaceGetHeightOfPlane(i32 %115, i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i64 @CGLTexImageIOSurface2D(i32 %109, i32 %110, i32 %111, i32 %114, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  store i64 %122, i64* %15, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i32 (i32, i32)*, i32 (i32, i32)** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 %125(i32 %126, i32 0)
  %128 = load i64, i64* %15, align 8
  %129 = load i64, i64* @kCGLNoError, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %86
  %132 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i64, i64* %15, align 8
  %135 = call i32 @CGLErrorString(i64 %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32 (...)*, i32 (...)** %137, align 8
  %139 = call i32 (...) %138()
  %140 = call i32 (%struct.ra_hwdec_mapper*, i8*, ...) @MP_ERR(%struct.ra_hwdec_mapper* %132, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %135, i32 %139)
  store i32 -1, i32* %2, align 4
  br label %192

141:                                              ; preds = %86
  %142 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 0
  store i32 2, i32* %142, align 8
  %143 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 2
  store i32 1, i32* %144, align 8
  %145 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 3
  store i32 1, i32* %145, align 4
  %146 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @GL_TEXTURE_RECTANGLE, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %146, align 8
  %151 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 5
  %152 = load %struct.ra_format*, %struct.ra_format** %11, align 8
  store %struct.ra_format* %152, %struct.ra_format** %151, align 8
  %153 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 6
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @IOSurfaceGetHeightOfPlane(i32 %154, i32 %155)
  store i32 %156, i32* %153, align 8
  %157 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %16, i32 0, i32 7
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @IOSurfaceGetWidthOfPlane(i32 %158, i32 %159)
  store i32 %160, i32* %157, align 4
  %161 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %162 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.priv*, %struct.priv** %4, align 8
  %165 = getelementptr inbounds %struct.priv, %struct.priv* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ra_create_wrapped_tex(i32 %163, %struct.ra_tex_params* %16, i32 %170)
  %172 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %173 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %171, i32* %177, align 4
  %178 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %179 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %141
  store i32 -1, i32* %2, align 4
  br label %192

187:                                              ; preds = %141
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %79

191:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %191, %186, %131, %47
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.TYPE_7__* @ra_gl_get(i32) #1

declare dso_local i32 @CVPixelBufferRelease(i64) #1

declare dso_local i32 @CVPixelBufferRetain(i64) #1

declare dso_local i32 @CVPixelBufferGetIOSurface(i64) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec_mapper*, i8*, ...) #1

declare dso_local i32 @CVPixelBufferIsPlanar(i64) #1

declare dso_local i32 @CVPixelBufferGetPlaneCount(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ra_gl_get_format(%struct.ra_format*, i32*, i32*, i32*) #1

declare dso_local i64 @CGLTexImageIOSurface2D(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CGLGetCurrentContext(...) #1

declare dso_local i32 @IOSurfaceGetWidthOfPlane(i32, i32) #1

declare dso_local i32 @IOSurfaceGetHeightOfPlane(i32, i32) #1

declare dso_local i32 @CGLErrorString(i64) #1

declare dso_local i32 @ra_create_wrapped_tex(i32, %struct.ra_tex_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
