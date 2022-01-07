; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_gltexture_delete.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_gltexture_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i64*)* }
%struct.gl_texture = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_device*, %struct.wined3d_gl_info*, %struct.gl_texture*)* @gltexture_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gltexture_delete(%struct.wined3d_device* %0, %struct.wined3d_gl_info* %1, %struct.gl_texture* %2) #0 {
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.gl_texture*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store %struct.gl_texture* %2, %struct.gl_texture** %6, align 8
  %7 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %8 = load %struct.gl_texture*, %struct.gl_texture** %6, align 8
  %9 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @context_gl_resource_released(%struct.wined3d_device* %7, i64 %10, i32 %11)
  %13 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i32, i64*)*, i32 (i32, i64*)** %16, align 8
  %18 = load %struct.gl_texture*, %struct.gl_texture** %6, align 8
  %19 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %18, i32 0, i32 0
  %20 = call i32 %17(i32 1, i64* %19)
  %21 = load %struct.gl_texture*, %struct.gl_texture** %6, align 8
  %22 = getelementptr inbounds %struct.gl_texture, %struct.gl_texture* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  ret void
}

declare dso_local i32 @context_gl_resource_released(%struct.wined3d_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
