; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_render_offscreen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_render_offscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@STATE_VIEWPORT = common dso_local global i32 0, align 4
@STATE_SCISSORRECT = common dso_local global i32 0, align 4
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@STATE_FRONTFACE = common dso_local global i32 0, align 4
@STATE_POINTSPRITECOORDORIGIN = common dso_local global i32 0, align 4
@WINED3D_TS_PROJECTION = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_DOMAIN = common dso_local global i32 0, align 4
@ARB_FRAGMENT_COORD_CONVENTIONS = common dso_local global i64 0, align 8
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i64)* @context_set_render_offscreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_set_render_offscreen(%struct.wined3d_context* %0, i64 %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %13 = load i32, i32* @STATE_VIEWPORT, align 4
  %14 = call i32 @context_invalidate_state(%struct.wined3d_context* %12, i32 %13)
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %16 = load i32, i32* @STATE_SCISSORRECT, align 4
  %17 = call i32 @context_invalidate_state(%struct.wined3d_context* %15, i32 %16)
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %19 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %11
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %29 = load i32, i32* @STATE_FRONTFACE, align 4
  %30 = call i32 @context_invalidate_state(%struct.wined3d_context* %28, i32 %29)
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %32 = load i32, i32* @STATE_POINTSPRITECOORDORIGIN, align 4
  %33 = call i32 @context_invalidate_state(%struct.wined3d_context* %31, i32 %32)
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %35 = load i32, i32* @WINED3D_TS_PROJECTION, align 4
  %36 = call i32 @STATE_TRANSFORM(i32 %35)
  %37 = call i32 @context_invalidate_state(%struct.wined3d_context* %34, i32 %36)
  br label %38

38:                                               ; preds = %27, %11
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %40 = load i32, i32* @WINED3D_SHADER_TYPE_DOMAIN, align 4
  %41 = call i32 @STATE_SHADER(i32 %40)
  %42 = call i32 @context_invalidate_state(%struct.wined3d_context* %39, i32 %41)
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %44 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @ARB_FRAGMENT_COORD_CONVENTIONS, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %54 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %55 = call i32 @STATE_SHADER(i32 %54)
  %56 = call i32 @context_invalidate_state(%struct.wined3d_context* %53, i32 %55)
  br label %57

57:                                               ; preds = %52, %38
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %60 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %10
  ret void
}

declare dso_local i32 @context_invalidate_state(%struct.wined3d_context*, i32) #1

declare dso_local i32 @STATE_TRANSFORM(i32) #1

declare dso_local i32 @STATE_SHADER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
