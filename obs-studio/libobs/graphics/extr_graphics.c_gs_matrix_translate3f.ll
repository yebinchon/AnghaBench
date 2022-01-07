; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_translate3f.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_matrix_translate3f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix4 = type { i32 }
%struct.vec3 = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"gs_matrix_translate3f\00", align 1
@thread_graphics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_matrix_translate3f(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.matrix4*, align 8
  %8 = alloca %struct.vec3, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = call i32 @gs_valid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %25

12:                                               ; preds = %3
  %13 = load i32, i32* @thread_graphics, align 4
  %14 = call %struct.matrix4* @top_matrix(i32 %13)
  store %struct.matrix4* %14, %struct.matrix4** %7, align 8
  %15 = load %struct.matrix4*, %struct.matrix4** %7, align 8
  %16 = icmp ne %struct.matrix4* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load float, float* %4, align 4
  %19 = load float, float* %5, align 4
  %20 = load float, float* %6, align 4
  %21 = call i32 @vec3_set(%struct.vec3* %8, float %18, float %19, float %20)
  %22 = load %struct.matrix4*, %struct.matrix4** %7, align 8
  %23 = load %struct.matrix4*, %struct.matrix4** %7, align 8
  %24 = call i32 @matrix4_translate3v_i(%struct.matrix4* %22, %struct.vec3* %8, %struct.matrix4* %23)
  br label %25

25:                                               ; preds = %11, %17, %12
  ret void
}

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local %struct.matrix4* @top_matrix(i32) #1

declare dso_local i32 @vec3_set(%struct.vec3*, float, float, float) #1

declare dso_local i32 @matrix4_translate3v_i(%struct.matrix4*, %struct.vec3*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
