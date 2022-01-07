; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_draw_sprite.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_draw_sprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.gs_vb_data = type { i32 }

@thread_graphics = common dso_local global %struct.TYPE_3__* null, align 8
@GS_TEXTURE_2D = common dso_local global i64 0, align 8
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"A sprite must be a 2D texture\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"A sprite cannot be drawn without a width/height\00", align 1
@GS_TRISTRIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_draw_sprite(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.gs_vb_data*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thread_graphics, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @gs_get_texture_type(i32* %17)
  %19 = load i64, i64* @GS_TEXTURE_2D, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @LOG_ERROR, align 4
  %23 = call i32 @blog(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %93

24:                                               ; preds = %16
  br label %35

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @LOG_ERROR, align 4
  %33 = call i32 @blog(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %93

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = sitofp i64 %39 to float
  br label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @gs_texture_get_width(i32* %42)
  %44 = sitofp i64 %43 to float
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi float [ %40, %38 ], [ %44, %41 ]
  store float %46, float* %10, align 4
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = sitofp i64 %50 to float
  br label %56

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = call i64 @gs_texture_get_height(i32* %53)
  %55 = sitofp i64 %54 to float
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi float [ %51, %49 ], [ %55, %52 ]
  store float %57, float* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32 %60)
  store %struct.gs_vb_data* %61, %struct.gs_vb_data** %12, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = call i64 @gs_texture_is_rect(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load %struct.gs_vb_data*, %struct.gs_vb_data** %12, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load float, float* %10, align 4
  %72 = load float, float* %11, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @build_sprite_rect(%struct.gs_vb_data* %69, i32* %70, float %71, float %72, i64 %73)
  br label %81

75:                                               ; preds = %64, %56
  %76 = load %struct.gs_vb_data*, %struct.gs_vb_data** %12, align 8
  %77 = load float, float* %10, align 4
  %78 = load float, float* %11, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @build_sprite_norm(%struct.gs_vb_data* %76, float %77, float %78, i64 %79)
  br label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @gs_vertexbuffer_flush(i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gs_load_vertexbuffer(i32 %88)
  %90 = call i32 @gs_load_indexbuffer(i32* null)
  %91 = load i32, i32* @GS_TRISTRIP, align 4
  %92 = call i32 @gs_draw(i32 %91, i32 0, i32 0)
  br label %93

93:                                               ; preds = %81, %31, %21
  ret void
}

declare dso_local i64 @gs_get_texture_type(i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i64 @gs_texture_get_width(i32*) #1

declare dso_local i64 @gs_texture_get_height(i32*) #1

declare dso_local %struct.gs_vb_data* @gs_vertexbuffer_get_data(i32) #1

declare dso_local i64 @gs_texture_is_rect(i32*) #1

declare dso_local i32 @build_sprite_rect(%struct.gs_vb_data*, i32*, float, float, i64) #1

declare dso_local i32 @build_sprite_norm(%struct.gs_vb_data*, float, float, i64) #1

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
