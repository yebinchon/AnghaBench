; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_fixup_transformed_pos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_fixup_transformed_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_vec4 = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_vec4*)* @fixup_transformed_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_transformed_pos(%struct.wined3d_vec4* %0) #0 {
  %2 = alloca %struct.wined3d_vec4*, align 8
  %3 = alloca float, align 4
  store %struct.wined3d_vec4* %0, %struct.wined3d_vec4** %2, align 8
  %4 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %4, i32 0, i32 0
  %6 = load float, float* %5, align 4
  %7 = fcmp une float %6, 1.000000e+00
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %9, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = fcmp une float %11, 0.000000e+00
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fdiv float 1.000000e+00, %16
  store float %17, float* %3, align 4
  %18 = load float, float* %3, align 4
  %19 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %19, i32 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = fmul float %21, %18
  store float %22, float* %20, align 4
  %23 = load float, float* %3, align 4
  %24 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %24, i32 0, i32 2
  %26 = load float, float* %25, align 4
  %27 = fmul float %26, %23
  store float %27, float* %25, align 4
  %28 = load float, float* %3, align 4
  %29 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %29, i32 0, i32 3
  %31 = load float, float* %30, align 4
  %32 = fmul float %31, %28
  store float %32, float* %30, align 4
  %33 = load float, float* %3, align 4
  %34 = load %struct.wined3d_vec4*, %struct.wined3d_vec4** %2, align 8
  %35 = getelementptr inbounds %struct.wined3d_vec4, %struct.wined3d_vec4* %34, i32 0, i32 0
  store float %33, float* %35, align 4
  br label %36

36:                                               ; preds = %13, %8, %1
  ret i32 16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
