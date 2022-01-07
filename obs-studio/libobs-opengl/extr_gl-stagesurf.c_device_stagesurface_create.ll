; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_device_stagesurface_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_device_stagesurface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_stage_surface = type { i32, i32, i32, i32, i32, i8*, i8*, i32* }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"device_stagesurface_create (GL) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_stage_surface* @device_stagesurface_create(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.gs_stage_surface*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gs_stage_surface*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call %struct.gs_stage_surface* @bzalloc(i32 48)
  store %struct.gs_stage_surface* %11, %struct.gs_stage_surface** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %14 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %13, i32 0, i32 7
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %17 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %20 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %23 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @convert_gs_format(i32 %24)
  %26 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %27 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @convert_gs_internal_format(i32 %28)
  %30 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %31 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @get_gl_format_type(i32 %32)
  %34 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %35 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @gs_get_format_bpp(i32 %36)
  %38 = sdiv i32 %37, 8
  %39 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %40 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %42 = call i32 @create_pixel_pack_buffer(%struct.gs_stage_surface* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* @LOG_ERROR, align 4
  %46 = call i32 @blog(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  %48 = call i32 @gs_stagesurface_destroy(%struct.gs_stage_surface* %47)
  store %struct.gs_stage_surface* null, %struct.gs_stage_surface** %5, align 8
  br label %51

49:                                               ; preds = %4
  %50 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %10, align 8
  store %struct.gs_stage_surface* %50, %struct.gs_stage_surface** %5, align 8
  br label %51

51:                                               ; preds = %49, %44
  %52 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %5, align 8
  ret %struct.gs_stage_surface* %52
}

declare dso_local %struct.gs_stage_surface* @bzalloc(i32) #1

declare dso_local i32 @convert_gs_format(i32) #1

declare dso_local i32 @convert_gs_internal_format(i32) #1

declare dso_local i32 @get_gl_format_type(i32) #1

declare dso_local i32 @gs_get_format_bpp(i32) #1

declare dso_local i32 @create_pixel_pack_buffer(%struct.gs_stage_surface*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @gs_stagesurface_destroy(%struct.gs_stage_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
