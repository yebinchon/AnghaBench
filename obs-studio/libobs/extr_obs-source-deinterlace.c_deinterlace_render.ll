; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-deinterlace.c_deinterlace_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-deinterlace.c_deinterlace_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i32, i32**, i64, i32**, i64, i32* }
%struct.vec2 = type { float, float }

@.str = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"previous_image\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"field_order\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"frame2\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@TWOX_TOLERANCE = common dso_local global i64 0, align 8
@obs = common dso_local global %struct.TYPE_7__* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@GS_FLIP_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deinterlace_render(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vec2, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 11
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @gs_effect_get_param_by_name(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @gs_effect_get_param_by_name(i32* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @gs_effect_get_param_by_name(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @gs_effect_get_param_by_name(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @gs_effect_get_param_by_name(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32* %25, i32** %9, align 8
  %26 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to float
  store float %30, float* %26, align 4
  %31 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to float
  store float %35, float* %31, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = call i32* @gs_texrender_get_texture(i64 %43)
  br label %51

45:                                               ; preds = %1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 9
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i32* [ %44, %40 ], [ %50, %45 ]
  store i32* %52, i32** %11, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32* @gs_texrender_get_texture(i64 %60)
  br label %68

62:                                               ; preds = %51
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 7
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i32* [ %61, %57 ], [ %67, %62 ]
  store i32* %69, i32** %12, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32*, i32** %12, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80, %75, %72, %68
  br label %143

86:                                               ; preds = %80
  %87 = load i32*, i32** %5, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @gs_effect_set_texture(i32* %87, i32* %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @gs_effect_set_texture(i32* %90, i32* %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @gs_effect_set_int(i32* %93, i32 %96)
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @gs_effect_set_vec2(i32* %98, %struct.vec2* %10)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load i64, i64* @TWOX_TOLERANCE, align 8
  %112 = sub nsw i64 %110, %111
  store i64 %112, i64* %4, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @obs, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %4, align 8
  %119 = icmp sge i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @gs_effect_set_bool(i32* %113, i32 %120)
  br label %122

122:                                              ; preds = %134, %86
  %123 = load i32*, i32** %3, align 8
  %124 = call i64 @gs_effect_loop(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @GS_FLIP_V, align 4
  br label %134

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i32 [ %132, %131 ], [ 0, %133 ]
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @gs_draw_sprite(i32* null, i32 %135, i64 %138, i64 %141)
  br label %122

143:                                              ; preds = %85, %122
  ret void
}

declare dso_local i32* @gs_effect_get_param_by_name(i32*, i8*) #1

declare dso_local i32* @gs_texrender_get_texture(i64) #1

declare dso_local i32 @gs_effect_set_texture(i32*, i32*) #1

declare dso_local i32 @gs_effect_set_int(i32*, i32) #1

declare dso_local i32 @gs_effect_set_vec2(i32*, %struct.vec2*) #1

declare dso_local i32 @gs_effect_set_bool(i32*, i32) #1

declare dso_local i64 @gs_effect_loop(i32*, i8*) #1

declare dso_local i32 @gs_draw_sprite(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
