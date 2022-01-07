; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_get_color_masks.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_get_color_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_format*, i32*)* @get_color_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_color_masks(%struct.wined3d_format* %0, i32* %1) #0 {
  %3 = alloca %struct.wined3d_format*, align 8
  %4 = alloca i32*, align 8
  store %struct.wined3d_format* %0, %struct.wined3d_format** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.wined3d_format*, %struct.wined3d_format** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 1, %7
  %9 = sub i32 %8, 1
  %10 = load %struct.wined3d_format*, %struct.wined3d_format** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %9, %12
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.wined3d_format*, %struct.wined3d_format** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  %20 = sub i32 %19, 1
  %21 = load %struct.wined3d_format*, %struct.wined3d_format** %3, align 8
  %22 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %20, %23
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.wined3d_format*, %struct.wined3d_format** %3, align 8
  %28 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = sub i32 %30, 1
  %32 = load %struct.wined3d_format*, %struct.wined3d_format** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %35, i32* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
