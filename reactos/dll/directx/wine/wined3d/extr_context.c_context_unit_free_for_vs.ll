; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_unit_free_for_vs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_unit_free_for_vs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64*, i32 }
%struct.wined3d_shader_resource_info = type { i32 }

@WINED3D_UNMAPPED_STAGE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MAX_FRAGMENT_SAMPLERS = common dso_local global i64 0, align 8
@MAX_TEXTURES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_shader_resource_info*, i64)* @context_unit_free_for_vs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @context_unit_free_for_vs(%struct.wined3d_context* %0, %struct.wined3d_shader_resource_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_shader_resource_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_shader_resource_info* %1, %struct.wined3d_shader_resource_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @MAX_FRAGMENT_SAMPLERS, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %6, align 8
  %26 = icmp ne %struct.wined3d_shader_resource_info* %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @MAX_TEXTURES, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %31, %27
  %42 = phi i1 [ true, %27 ], [ %40, %31 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %24
  %45 = load %struct.wined3d_shader_resource_info*, %struct.wined3d_shader_resource_info** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %45, i64 %46
  %48 = getelementptr inbounds %struct.wined3d_shader_resource_info, %struct.wined3d_shader_resource_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %20
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %44, %41, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
