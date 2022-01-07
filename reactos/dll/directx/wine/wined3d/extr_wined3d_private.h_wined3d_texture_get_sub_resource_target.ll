; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_texture_get_sub_resource_target.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_texture_get_sub_resource_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wined3d_texture_get_sub_resource_target.cube_targets = internal constant [6 x i32] [i32 130, i32 133, i32 129, i32 132, i32 128, i32 131], align 16
@WINED3DUSAGE_LEGACY_CUBEMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_texture*, i32)* @wined3d_texture_get_sub_resource_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_texture_get_sub_resource_target(%struct.wined3d_texture* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_texture*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @WINED3DUSAGE_LEGACY_CUBEMAP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = udiv i32 %13, %16
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* @wined3d_texture_get_sub_resource_target.cube_targets, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i32 [ %20, %12 ], [ %24, %21 ]
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
