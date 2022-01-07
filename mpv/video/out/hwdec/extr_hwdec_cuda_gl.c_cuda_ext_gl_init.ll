; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_gl.c_cuda_ext_gl_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_gl.c_cuda_ext_gl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_gl = type { i32 }
%struct.ra_hwdec_mapper = type { i32*, i32, %struct.cuda_mapper_priv*, %struct.TYPE_3__* }
%struct.cuda_mapper_priv = type { i32*, i32, %struct.ext_gl** }
%struct.TYPE_3__ = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*)*, i32 (i32, i32*, i32)*, i32 (i32*, i32, i32, i32)*, i32 (i32, i32*, i32)*, i32 (i32*, i32, i32, i32)* }
%struct.ra_format = type { i32 }
%struct.ra_tex_params = type { i32, i32, i32, i32, %struct.ra_format*, i32, i32 }

@CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD = common dso_local global i32 0, align 4
@egl = common dso_local global %struct.ext_gl* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*, %struct.ra_format*, i32)* @cuda_ext_gl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_ext_gl_init(%struct.ra_hwdec_mapper* %0, %struct.ra_format* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ra_hwdec_mapper*, align 8
  %6 = alloca %struct.ra_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cuda_hw_priv*, align 8
  %9 = alloca %struct.cuda_mapper_priv*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext_gl*, align 8
  %14 = alloca %struct.ra_tex_params, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %5, align 8
  store %struct.ra_format* %1, %struct.ra_format** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %18 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %20, align 8
  store %struct.cuda_hw_priv* %21, %struct.cuda_hw_priv** %8, align 8
  %22 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %23 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %22, i32 0, i32 2
  %24 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %23, align 8
  store %struct.cuda_mapper_priv* %24, %struct.cuda_mapper_priv** %9, align 8
  %25 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %8, align 8
  %26 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %11, align 4
  %28 = load %struct.ext_gl*, %struct.ext_gl** %13, align 8
  %29 = ptrtoint %struct.ext_gl* %28 to i32
  %30 = call %struct.ext_gl* @talloc_ptrtype(i32* null, i32 %29)
  store %struct.ext_gl* %30, %struct.ext_gl** %13, align 8
  %31 = load %struct.ext_gl*, %struct.ext_gl** %13, align 8
  %32 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %9, align 8
  %33 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %32, i32 0, i32 2
  %34 = load %struct.ext_gl**, %struct.ext_gl*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ext_gl*, %struct.ext_gl** %34, i64 %36
  store %struct.ext_gl* %31, %struct.ext_gl** %37, align 8
  %38 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 0
  store i32 2, i32* %38, align 8
  %39 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 3
  %42 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  %43 = getelementptr inbounds %struct.ra_format, %struct.ra_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 4
  %45 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 4
  %46 = load %struct.ra_format*, %struct.ra_format** %6, align 8
  store %struct.ra_format* %46, %struct.ra_format** %45, align 8
  %47 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 5
  %48 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %9, align 8
  %49 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @mp_image_plane_h(i32* %49, i32 %50)
  store i32 %51, i32* %47, align 8
  %52 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %14, i32 0, i32 6
  %53 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %9, align 8
  %54 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @mp_image_plane_w(i32* %54, i32 %55)
  store i32 %56, i32* %52, align 4
  %57 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %58 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ra_tex_create(i32 %59, %struct.ra_tex_params* %14)
  %61 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %62 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %68 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %3
  br label %142

76:                                               ; preds = %3
  %77 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %78 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %5, align 8
  %81 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ra_gl_get_raw_tex(i32 %79, i32 %86, i32* %15, i32* %16)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %89, align 8
  %91 = load %struct.ext_gl*, %struct.ext_gl** %13, align 8
  %92 = getelementptr inbounds %struct.ext_gl, %struct.ext_gl* %91, i32 0, i32 0
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @CU_GRAPHICS_REGISTER_FLAGS_WRITE_DISCARD, align 4
  %96 = call i32 %90(i32* %92, i32 %93, i32 %94, i32 %95)
  %97 = call i32 @CHECK_CU(i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %76
  br label %142

101:                                              ; preds = %76
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %103, align 8
  %105 = load %struct.ext_gl*, %struct.ext_gl** %13, align 8
  %106 = getelementptr inbounds %struct.ext_gl, %struct.ext_gl* %105, i32 0, i32 0
  %107 = call i32 %104(i32 1, i32* %106, i32 0)
  %108 = call i32 @CHECK_CU(i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %142

112:                                              ; preds = %101
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %114, align 8
  %116 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %9, align 8
  %117 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load %struct.ext_gl*, %struct.ext_gl** %13, align 8
  %123 = getelementptr inbounds %struct.ext_gl, %struct.ext_gl* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 %115(i32* %121, i32 %124, i32 0, i32 0)
  %126 = call i32 @CHECK_CU(i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %112
  br label %142

130:                                              ; preds = %112
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %132, align 8
  %134 = load %struct.ext_gl*, %struct.ext_gl** %13, align 8
  %135 = getelementptr inbounds %struct.ext_gl, %struct.ext_gl* %134, i32 0, i32 0
  %136 = call i32 %133(i32 1, i32* %135, i32 0)
  %137 = call i32 @CHECK_CU(i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %142

141:                                              ; preds = %130
  store i32 1, i32* %4, align 4
  br label %148

142:                                              ; preds = %140, %129, %111, %100, %75
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32 (i32*)*, i32 (i32*)** %144, align 8
  %146 = call i32 %145(i32* %12)
  %147 = call i32 @CHECK_CU(i32 %146)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %142, %141
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.ext_gl* @talloc_ptrtype(i32*, i32) #1

declare dso_local i32 @mp_image_plane_h(i32*, i32) #1

declare dso_local i32 @mp_image_plane_w(i32*, i32) #1

declare dso_local i32 @ra_tex_create(i32, %struct.ra_tex_params*) #1

declare dso_local i32 @ra_gl_get_raw_tex(i32, i32, i32*, i32*) #1

declare dso_local i32 @CHECK_CU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
