; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_color_from_d3dcolor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_color_from_d3dcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_color = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_color*, i32)* @wined3d_color_from_d3dcolor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_color_from_d3dcolor(%struct.wined3d_color* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_color*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_color* %0, %struct.wined3d_color** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call float @D3DCOLOR_B_R(i32 %5)
  %7 = fdiv float %6, 2.550000e+02
  %8 = load %struct.wined3d_color*, %struct.wined3d_color** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %8, i32 0, i32 0
  store float %7, float* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call float @D3DCOLOR_B_G(i32 %10)
  %12 = fdiv float %11, 2.550000e+02
  %13 = load %struct.wined3d_color*, %struct.wined3d_color** %3, align 8
  %14 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %13, i32 0, i32 1
  store float %12, float* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call float @D3DCOLOR_B_B(i32 %15)
  %17 = fdiv float %16, 2.550000e+02
  %18 = load %struct.wined3d_color*, %struct.wined3d_color** %3, align 8
  %19 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %18, i32 0, i32 2
  store float %17, float* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call float @D3DCOLOR_B_A(i32 %20)
  %22 = fdiv float %21, 2.550000e+02
  %23 = load %struct.wined3d_color*, %struct.wined3d_color** %3, align 8
  %24 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %23, i32 0, i32 3
  store float %22, float* %24, align 4
  ret void
}

declare dso_local float @D3DCOLOR_B_R(i32) #1

declare dso_local float @D3DCOLOR_B_G(i32) #1

declare dso_local float @D3DCOLOR_B_B(i32) #1

declare dso_local float @D3DCOLOR_B_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
