; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_draw_sprite_subregion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_draw_sprite_subregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.gs_vb_data = type { i32 }

@thread_graphics = common dso_local global %struct.TYPE_3__* null, align 8
@GS_TEXTURE_2D = common dso_local global i64 0, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"A sprite must be a 2D texture\00", align 1
@GS_TRISTRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_draw_sprite_subregion(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.gs_vb_data*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_graphics, align 8
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %13, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %6
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @gs_get_texture_type(i32* %21)
  %23 = load i64, i64* @GS_TEXTURE_2D, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @LOG_ERROR, align 4
  %27 = call i32 @blog(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %64

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %6
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @gs_texture_get_width(i32* %30)
  %32 = sitofp i64 %31 to float
  store float %32, float* %14, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @gs_texture_get_height(i32* %33)
  %35 = sitofp i64 %34 to float
  store float %35, float* %15, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32 %38)
  store %struct.gs_vb_data* %39, %struct.gs_vb_data** %16, align 8
  %40 = load %struct.gs_vb_data*, %struct.gs_vb_data** %16, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sitofp i64 %41 to float
  %43 = load i64, i64* %10, align 8
  %44 = sitofp i64 %43 to float
  %45 = load i64, i64* %11, align 8
  %46 = sitofp i64 %45 to float
  %47 = load i64, i64* %12, align 8
  %48 = sitofp i64 %47 to float
  %49 = load float, float* %14, align 4
  %50 = load float, float* %15, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @build_subsprite_norm(%struct.gs_vb_data* %40, float %42, float %44, float %46, float %48, float %49, float %50, i64 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gs_vertexbuffer_flush(i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @gs_load_vertexbuffer(i32 %59)
  %61 = call i32 @gs_load_indexbuffer(i32* null)
  %62 = load i32, i32* @GS_TRISTRIP, align 4
  %63 = call i32 @gs_draw(i32 %62, i32 0, i32 0)
  br label %64

64:                                               ; preds = %29, %25
  ret void
}

declare dso_local i64 @gs_get_texture_type(i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @gs_texture_get_width(i32*) #1

declare dso_local i64 @gs_texture_get_height(i32*) #1

declare dso_local %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32) #1

declare dso_local i32 @build_subsprite_norm(%struct.gs_vb_data*, float, float, float, float, float, float, i64) #1

declare dso_local i32 @gs_vertexbuffer_flush(i32) #1

declare dso_local i32 @gs_load_vertexbuffer(i32) #1

declare dso_local i32 @gs_load_indexbuffer(i32*) #1

declare dso_local i32 @gs_draw(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
