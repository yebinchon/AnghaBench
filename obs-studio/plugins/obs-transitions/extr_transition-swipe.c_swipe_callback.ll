; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-swipe.c_swipe_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-swipe.c_swipe_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swipe_info = type { i32, i32, i64, i32, i32, %struct.vec2 }
%struct.vec2 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Swipe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, float, i32, i32)* @swipe_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swipe_callback(i8* %0, i32* %1, i32* %2, float %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.swipe_info*, align 8
  %14 = alloca %struct.vec2, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.swipe_info*
  store %struct.swipe_info* %16, %struct.swipe_info** %13, align 8
  %17 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %18 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %17, i32 0, i32 5
  %19 = bitcast %struct.vec2* %14 to i8*
  %20 = bitcast %struct.vec2* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 8 %20, i64 4, i1 false)
  %21 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %22 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = call i32 @vec2_neg(%struct.vec2* %14, %struct.vec2* %14)
  br label %27

27:                                               ; preds = %25, %6
  %28 = load float, float* %10, align 4
  %29 = call float @cubic_ease_in_out(float %28)
  store float %29, float* %10, align 4
  %30 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %31 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load float, float* %10, align 4
  %36 = fsub float 1.000000e+00, %35
  br label %39

37:                                               ; preds = %27
  %38 = load float, float* %10, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi float [ %36, %34 ], [ %38, %37 ]
  %41 = call i32 @vec2_mulf(%struct.vec2* %14, %struct.vec2* %14, float %40)
  %42 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %43 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %46 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32*, i32** %9, align 8
  br label %53

51:                                               ; preds = %39
  %52 = load i32*, i32** %8, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32* [ %50, %49 ], [ %52, %51 ]
  %55 = call i32 @gs_effect_set_texture(i32 %44, i32* %54)
  %56 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %57 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %60 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32*, i32** %8, align 8
  br label %67

65:                                               ; preds = %53
  %66 = load i32*, i32** %9, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32* [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 @gs_effect_set_texture(i32 %58, i32* %68)
  %70 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %71 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gs_effect_set_vec2(i32 %72, %struct.vec2* %14)
  br label %74

74:                                               ; preds = %80, %67
  %75 = load %struct.swipe_info*, %struct.swipe_info** %13, align 8
  %76 = getelementptr inbounds %struct.swipe_info, %struct.swipe_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @gs_effect_loop(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @gs_draw_sprite(i32* null, i32 0, i32 %81, i32 %82)
  br label %74

84:                                               ; preds = %74
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @vec2_neg(%struct.vec2*, %struct.vec2*) #2

declare dso_local float @cubic_ease_in_out(float) #2

declare dso_local i32 @vec2_mulf(%struct.vec2*, %struct.vec2*, float) #2

declare dso_local i32 @gs_effect_set_texture(i32, i32*) #2

declare dso_local i32 @gs_effect_set_vec2(i32, %struct.vec2*) #2

declare dso_local i64 @gs_effect_loop(i32, i8*) #2

declare dso_local i32 @gs_draw_sprite(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
