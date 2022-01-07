; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_d3d8_private.h_wined3daccess_from_d3dpool.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_d3d8_private.h_wined3daccess_from_d3dpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @wined3daccess_from_d3dpool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3daccess_from_d3dpool(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %34 [
    i32 131, label %7
    i32 130, label %20
    i32 128, label %28
    i32 129, label %28
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %14 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %7
  %19 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %22 = load i32, i32* @WINED3D_RESOURCE_ACCESS_CPU, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %2, %2
  %29 = load i32, i32* @WINED3D_RESOURCE_ACCESS_CPU, align 4
  %30 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %28, %20, %18, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
