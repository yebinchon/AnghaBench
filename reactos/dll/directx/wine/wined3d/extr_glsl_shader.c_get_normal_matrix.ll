; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_get_normal_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_get_normal_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_matrix = type { float }

@WINED3D_LEGACY_FFP_LIGHTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_matrix*, float*)* @get_normal_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_normal_matrix(%struct.wined3d_context* %0, %struct.wined3d_matrix* %1, float* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_matrix*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_matrix* %1, %struct.wined3d_matrix** %5, align 8
  store float* %2, float** %6, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WINED3D_LEGACY_FFP_LIGHTING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %19 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %20 = call i32 @invert_matrix_3d(%struct.wined3d_matrix* %18, %struct.wined3d_matrix* %19)
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %23 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %24 = call i32 @invert_matrix(%struct.wined3d_matrix* %22, %struct.wined3d_matrix* %23)
  br label %25

25:                                               ; preds = %21, %17
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load %struct.wined3d_matrix*, %struct.wined3d_matrix** %5, align 8
  %35 = getelementptr inbounds %struct.wined3d_matrix, %struct.wined3d_matrix* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %35, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %44, 3
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %43, i64 %48
  store float %42, float* %49, align 4
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %30

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %26

57:                                               ; preds = %26
  ret void
}

declare dso_local i32 @invert_matrix_3d(%struct.wined3d_matrix*, %struct.wined3d_matrix*) #1

declare dso_local i32 @invert_matrix(%struct.wined3d_matrix*, %struct.wined3d_matrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
