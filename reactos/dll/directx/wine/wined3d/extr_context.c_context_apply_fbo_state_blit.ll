; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_fbo_state_blit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_fbo_state_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.wined3d_surface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_apply_fbo_state_blit(%struct.wined3d_context* %0, i32 %1, %struct.wined3d_surface* %2, %struct.wined3d_surface* %3, i32 %4) #0 {
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_surface*, align 8
  %9 = alloca %struct.wined3d_surface*, align 8
  %10 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wined3d_surface* %2, %struct.wined3d_surface** %8, align 8
  store %struct.wined3d_surface* %3, %struct.wined3d_surface** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = call i32 @memset(%struct.TYPE_5__* %13, i32 0, i32 8)
  %15 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %16 = icmp ne %struct.wined3d_surface* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %5
  %18 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %19 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32* %21, i32** %26, align 8
  %27 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %28 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %27)
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %30 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %28, i32* %33, align 4
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %35 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %17, %5
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %43 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.wined3d_surface*, %struct.wined3d_surface** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @context_apply_fbo_state(%struct.wined3d_context* %40, i32 %41, %struct.TYPE_5__* %44, %struct.wined3d_surface* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @context_apply_fbo_state(%struct.wined3d_context*, i32, %struct.TYPE_5__*, %struct.wined3d_surface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
