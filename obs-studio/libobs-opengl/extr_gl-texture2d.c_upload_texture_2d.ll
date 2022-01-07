; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_upload_texture_2d.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texture2d.c_upload_texture_2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_texture_2d = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MAX_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_texture_2d*, i32**)* @upload_texture_2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_texture_2d(%struct.gs_texture_2d* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_texture_2d*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gs_texture_2d* %0, %struct.gs_texture_2d** %4, align 8
  store i32** %1, i32*** %5, align 8
  %11 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %12 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %15 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gs_get_format_bpp(i32 %17)
  %19 = mul nsw i32 %13, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %21 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %27 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %31 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gs_is_compressed_format(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %2
  %38 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %39 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %42 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gs_get_total_levels(i32 %40, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %37, %2
  %46 = load i32, i32* @GL_TEXTURE_2D, align 4
  %47 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %48 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gl_bind_texture(i32 %46, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %92

54:                                               ; preds = %45
  %55 = load i32, i32* @GL_TEXTURE_2D, align 4
  %56 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %57 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %62 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %66 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %71 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %4, align 8
  %74 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @gl_init_face(i32 %55, i32 %59, i32 %60, i32 %64, i32 %68, i32 %69, i32 %72, i32 %75, i32 %76, i32*** %5)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @GL_TEXTURE_2D, align 4
  %79 = load i32, i32* @GL_TEXTURE_MAX_LEVEL, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, 1
  %82 = call i32 @gl_tex_param_i(i32 %78, i32 %79, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %54
  %86 = load i32, i32* @GL_TEXTURE_2D, align 4
  %87 = call i32 @gl_bind_texture(i32 %86, i32 0)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %85
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %53
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @gs_get_format_bpp(i32) #1

declare dso_local i32 @gs_is_compressed_format(i32) #1

declare dso_local i32 @gs_get_total_levels(i32, i32) #1

declare dso_local i32 @gl_bind_texture(i32, i32) #1

declare dso_local i32 @gl_init_face(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32***) #1

declare dso_local i32 @gl_tex_param_i(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
