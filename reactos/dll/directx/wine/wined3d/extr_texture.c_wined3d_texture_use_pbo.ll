; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_use_pbo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_use_pbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_gl_info = type { i64* }

@WINED3D_RESOURCE_ACCESS_CPU = common dso_local global i32 0, align 4
@WINED3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@ARB_PIXEL_BUFFER_OBJECT = common dso_local global i64 0, align 8
@WINED3D_TEXTURE_PIN_SYSMEM = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_COND_NP2_EMULATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_texture*, %struct.wined3d_gl_info*)* @wined3d_texture_use_pbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_texture_use_pbo(%struct.wined3d_texture* %0, %struct.wined3d_gl_info* %1) #0 {
  %3 = alloca %struct.wined3d_texture*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %3, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %4, align 8
  %5 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WINED3D_RESOURCE_ACCESS_CPU, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %2
  %13 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %14 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %12
  %21 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @ARB_PIXEL_BUFFER_OBJECT, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %28
  %37 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %38 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WINED3D_TEXTURE_PIN_SYSMEM, align 4
  %41 = load i32, i32* @WINED3D_TEXTURE_COND_NP2_EMULATED, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %36, %28, %20, %12, %2
  %47 = phi i1 [ false, %28 ], [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %45, %36 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
