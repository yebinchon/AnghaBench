; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_is_multisample_location.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_is_multisample_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i64 }

@WINED3D_LOCATION_RB_MULTISAMPLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i64 0, align 8
@WINED3D_LOCATION_TEXTURE_SRGB = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D_MULTISAMPLE = common dso_local global i64 0, align 8
@GL_TEXTURE_2D_MULTISAMPLE_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_texture*, i64)* @is_multisample_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_multisample_location(%struct.wined3d_texture* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca i64, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WINED3D_LOCATION_RB_MULTISAMPLE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @WINED3D_LOCATION_TEXTURE_RGB, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @WINED3D_LOCATION_TEXTURE_SRGB, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %15, %11
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GL_TEXTURE_2D_MULTISAMPLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GL_TEXTURE_2D_MULTISAMPLE_ARRAY, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ true, %21 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %19, %9
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
