; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_bind_and_dirtify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_bind_and_dirtify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32 }
%struct.wined3d_context = type { i64, i64* }

@WINED3D_UNMAPPED_STAGE = common dso_local global i64 0, align 8
@STATE_COMPUTE_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4
@STATE_GRAPHICS_SHADER_RESOURCE_BINDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_texture_bind_and_dirtify(%struct.wined3d_texture* %0, %struct.wined3d_context* %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_texture*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = call i64 @ARRAY_SIZE(i64* %13)
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @STATE_SAMPLER(i64 %30)
  %32 = call i32 @context_invalidate_state(%struct.wined3d_context* %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %16
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %36 = load i32, i32* @STATE_COMPUTE_SHADER_RESOURCE_BINDING, align 4
  %37 = call i32 @context_invalidate_compute_state(%struct.wined3d_context* %35, i32 %36)
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %39 = load i32, i32* @STATE_GRAPHICS_SHADER_RESOURCE_BINDING, align 4
  %40 = call i32 @context_invalidate_state(%struct.wined3d_context* %38, i32 %39)
  %41 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @wined3d_texture_bind(%struct.wined3d_texture* %41, %struct.wined3d_context* %42, i32 %43)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_SAMPLER(i64) #1

declare dso_local i32 @context_invalidate_compute_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_texture_bind(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
