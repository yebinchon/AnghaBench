; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_recalculate_transition_matrix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_recalculate_transition_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_9__** }
%struct.matrix4 = type { i32 }
%struct.vec2 = type { float, float }

@OBS_TRANSITION_SCALE_MAX_ONLY = common dso_local global i32 0, align 4
@OBS_TRANSITION_SCALE_ASPECT = common dso_local global i32 0, align 4
@OBS_TRANSITION_SCALE_STRETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64)* @recalculate_transition_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recalculate_transition_matrix(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.matrix4, align 4
  %7 = alloca %struct.vec2, align 4
  %8 = alloca %struct.vec2, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = call i64 @get_cx(%struct.TYPE_9__* %17)
  %19 = sitofp i64 %18 to float
  store float %19, float* %9, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i64 @get_cy(%struct.TYPE_9__* %20)
  %22 = sitofp i64 %21 to float
  store float %22, float* %10, align 4
  %23 = load float, float* %9, align 4
  %24 = load float, float* %10, align 4
  %25 = fdiv float %23, %24
  store float %25, float* %13, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @lock_transition(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %5, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = call i32 @unlock_transition(%struct.TYPE_9__* %40)
  br label %154

42:                                               ; preds = %2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = call i64 @obs_source_get_width(%struct.TYPE_9__* %43)
  %45 = sitofp i64 %44 to float
  store float %45, float* %11, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = call i64 @obs_source_get_height(%struct.TYPE_9__* %46)
  %48 = sitofp i64 %47 to float
  store float %48, float* %12, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = call i32 @unlock_transition(%struct.TYPE_9__* %49)
  %51 = load float, float* %11, align 4
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load float, float* %12, align 4
  %55 = fcmp oeq float %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %42
  br label %154

57:                                               ; preds = %53
  %58 = load float, float* %11, align 4
  %59 = load float, float* %12, align 4
  %60 = fdiv float %58, %59
  store float %60, float* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @OBS_TRANSITION_SCALE_MAX_ONLY, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load float, float* %11, align 4
  %66 = load float, float* %9, align 4
  %67 = fcmp ogt float %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load float, float* %12, align 4
  %70 = load float, float* %10, align 4
  %71 = fcmp ogt float %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @OBS_TRANSITION_SCALE_ASPECT, align 4
  store i32 %73, i32* %15, align 4
  br label %77

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 0
  store float 1.000000e+00, float* %75, align 4
  %76 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 1
  store float 1.000000e+00, float* %76, align 4
  br label %77

77:                                               ; preds = %74, %72
  br label %78

78:                                               ; preds = %77, %57
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @OBS_TRANSITION_SCALE_ASPECT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load float, float* %13, align 4
  %84 = load float, float* %14, align 4
  %85 = fcmp olt float %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load float, float* %9, align 4
  %91 = load float, float* %11, align 4
  %92 = fdiv float %90, %91
  br label %97

93:                                               ; preds = %82
  %94 = load float, float* %10, align 4
  %95 = load float, float* %12, align 4
  %96 = fdiv float %94, %95
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi float [ %92, %89 ], [ %96, %93 ]
  %99 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 1
  store float %98, float* %99, align 4
  %100 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 0
  store float %98, float* %100, align 4
  br label %115

101:                                              ; preds = %78
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @OBS_TRANSITION_SCALE_STRETCH, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load float, float* %9, align 4
  %107 = load float, float* %11, align 4
  %108 = fdiv float %106, %107
  %109 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 0
  store float %108, float* %109, align 4
  %110 = load float, float* %10, align 4
  %111 = load float, float* %12, align 4
  %112 = fdiv float %110, %111
  %113 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 1
  store float %112, float* %113, align 4
  br label %114

114:                                              ; preds = %105, %101
  br label %115

115:                                              ; preds = %114, %97
  %116 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 0
  %117 = load float, float* %116, align 4
  %118 = load float, float* %11, align 4
  %119 = fmul float %118, %117
  store float %119, float* %11, align 4
  %120 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 1
  %121 = load float, float* %120, align 4
  %122 = load float, float* %12, align 4
  %123 = fmul float %122, %121
  store float %123, float* %12, align 4
  %124 = call i32 @vec2_zero(%struct.vec2* %7)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load float, float* %9, align 4
  %129 = load float, float* %11, align 4
  %130 = fsub float %128, %129
  %131 = fptosi float %130 to i32
  %132 = load float, float* %10, align 4
  %133 = load float, float* %12, align 4
  %134 = fsub float %132, %133
  %135 = fptosi float %134 to i32
  %136 = call i32 @add_alignment(%struct.vec2* %7, i32 %127, i32 %131, i32 %135)
  %137 = call i32 @matrix4_identity(%struct.matrix4* %6)
  %138 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 0
  %139 = load float, float* %138, align 4
  %140 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 1
  %141 = load float, float* %140, align 4
  %142 = call i32 @matrix4_scale3f(%struct.matrix4* %6, %struct.matrix4* %6, float %139, float %141, float 1.000000e+00)
  %143 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 0
  %144 = load float, float* %143, align 4
  %145 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 1
  %146 = load float, float* %145, align 4
  %147 = call i32 @matrix4_translate3f(%struct.matrix4* %6, %struct.matrix4* %6, float %144, float %146, float 0.000000e+00)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = call i32 @matrix4_copy(i32* %152, %struct.matrix4* %6)
  br label %154

154:                                              ; preds = %115, %56, %39
  ret void
}

declare dso_local i64 @get_cx(%struct.TYPE_9__*) #1

declare dso_local i64 @get_cy(%struct.TYPE_9__*) #1

declare dso_local i32 @lock_transition(%struct.TYPE_9__*) #1

declare dso_local i32 @unlock_transition(%struct.TYPE_9__*) #1

declare dso_local i64 @obs_source_get_width(%struct.TYPE_9__*) #1

declare dso_local i64 @obs_source_get_height(%struct.TYPE_9__*) #1

declare dso_local i32 @vec2_zero(%struct.vec2*) #1

declare dso_local i32 @add_alignment(%struct.vec2*, i32, i32, i32) #1

declare dso_local i32 @matrix4_identity(%struct.matrix4*) #1

declare dso_local i32 @matrix4_scale3f(%struct.matrix4*, %struct.matrix4*, float, float, float) #1

declare dso_local i32 @matrix4_translate3f(%struct.matrix4*, %struct.matrix4*, float, float, float) #1

declare dso_local i32 @matrix4_copy(i32*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
