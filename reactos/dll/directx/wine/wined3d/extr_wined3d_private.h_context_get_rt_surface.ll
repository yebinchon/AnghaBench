; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_context_get_rt_surface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_context_get_rt_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { i32 }
%struct.wined3d_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.wined3d_texture* }
%struct.wined3d_texture = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wined3d_surface* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_surface* (%struct.wined3d_context*)* @context_get_rt_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_surface* @context_get_rt_surface(%struct.wined3d_context* %0) #0 {
  %2 = alloca %struct.wined3d_surface*, align 8
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  %5 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.wined3d_texture*, %struct.wined3d_texture** %7, align 8
  store %struct.wined3d_texture* %8, %struct.wined3d_texture** %4, align 8
  %9 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %10 = icmp ne %struct.wined3d_texture* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %2, align 8
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.wined3d_surface*, %struct.wined3d_surface** %22, align 8
  store %struct.wined3d_surface* %23, %struct.wined3d_surface** %2, align 8
  br label %24

24:                                               ; preds = %12, %11
  %25 = load %struct.wined3d_surface*, %struct.wined3d_surface** %2, align 8
  ret %struct.wined3d_surface* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
