; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texturecube.c_upload_texture_cube.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-texturecube.c_upload_texture_cube.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_texture_cube = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@GL_TEXTURE_CUBE_MAP_POSITIVE_X = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP = common dso_local global i32 0, align 4
@GL_TEXTURE_MAX_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glTexParameteri\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_texture_cube*, i32**)* @upload_texture_cube to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_texture_cube(%struct.gs_texture_cube* %0, i32** %1) #0 {
  %3 = alloca %struct.gs_texture_cube*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.gs_texture_cube* %0, %struct.gs_texture_cube** %3, align 8
  store i32** %1, i32*** %4, align 8
  %13 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %14 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %17 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gs_get_format_bpp(i32 %19)
  %21 = mul nsw i32 %15, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %23 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %29 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %33 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gs_is_compressed_format(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %38 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @get_gl_format_type(i32 %40)
  store i64 %41, i64* %9, align 8
  store i32 1, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %2
  %45 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %46 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %49 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @gs_get_total_levels(i32 %47, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %44, %2
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %104, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 6
  br i1 %55, label %56, label %107

56:                                               ; preds = %53
  %57 = load i64, i64* @GL_TEXTURE_CUBE_MAP_POSITIVE_X, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %63 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gl_bind_texture(i64 %61, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %74 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %78 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %83 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gs_texture_cube*, %struct.gs_texture_cube** %3, align 8
  %86 = getelementptr inbounds %struct.gs_texture_cube, %struct.gs_texture_cube* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @gl_init_face(i64 %70, i64 %71, i32 %72, i32 %76, i32 %80, i32 %81, i32 %84, i32 %87, i32 %88, i32*** %4)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %69
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @gl_bind_texture(i64 %93, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32**, i32*** %4, align 8
  %99 = icmp ne i32** %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32**, i32*** %4, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i32 1
  store i32** %102, i32*** %4, align 8
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %53

107:                                              ; preds = %53
  %108 = load i32, i32* @GL_TEXTURE_CUBE_MAP, align 4
  %109 = load i32, i32* @GL_TEXTURE_MAX_LEVEL, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @glTexParameteri(i32 %108, i32 %109, i32 %110)
  %112 = call i32 @gl_success(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %114, %107
  %116 = load i32, i32* %10, align 4
  ret i32 %116
}

declare dso_local i32 @gs_get_format_bpp(i32) #1

declare dso_local i32 @gs_is_compressed_format(i32) #1

declare dso_local i64 @get_gl_format_type(i32) #1

declare dso_local i32 @gs_get_total_levels(i32, i32) #1

declare dso_local i32 @gl_bind_texture(i64, i32) #1

declare dso_local i32 @gl_init_face(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32***) #1

declare dso_local i32 @glTexParameteri(i32, i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
