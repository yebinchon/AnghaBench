; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_hull_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_hull_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader = type { %struct.glsl_shader_private* }
%struct.glsl_shader_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.glsl_hs_compiled_shader* }
%struct.glsl_hs_compiled_shader = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate backend data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"No matching GL shader found for shader %p, compiling a new shader.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to allocate GL shaders array.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*)* @find_glsl_hull_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_glsl_hull_shader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.shader_glsl_priv*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.glsl_hs_compiled_shader*, align 8
  %9 = alloca %struct.glsl_hs_compiled_shader*, align 8
  %10 = alloca %struct.glsl_shader_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %5, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  %13 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %13, i32 0, i32 0
  %15 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %14, align 8
  %16 = icmp ne %struct.glsl_shader_private* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = call %struct.glsl_shader_private* @heap_alloc_zero(i32 16)
  %19 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %19, i32 0, i32 0
  store %struct.glsl_shader_private* %18, %struct.glsl_shader_private** %20, align 8
  %21 = icmp ne %struct.glsl_shader_private* %18, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %89

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %26, i32 0, i32 0
  %28 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %27, align 8
  store %struct.glsl_shader_private* %28, %struct.glsl_shader_private** %10, align 8
  %29 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %30 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.glsl_hs_compiled_shader*, %struct.glsl_hs_compiled_shader** %31, align 8
  store %struct.glsl_hs_compiled_shader* %32, %struct.glsl_hs_compiled_shader** %8, align 8
  %33 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %34 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %25
  %38 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %39 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.glsl_hs_compiled_shader*, %struct.glsl_hs_compiled_shader** %8, align 8
  %45 = getelementptr inbounds %struct.glsl_hs_compiled_shader, %struct.glsl_hs_compiled_shader* %44, i64 0
  %46 = getelementptr inbounds %struct.glsl_hs_compiled_shader, %struct.glsl_hs_compiled_shader* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  br label %89

48:                                               ; preds = %25
  %49 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %50 = call i32 @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_shader* %49)
  %51 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %52 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.glsl_hs_compiled_shader*, %struct.glsl_hs_compiled_shader** %53, align 8
  %55 = icmp ne %struct.glsl_hs_compiled_shader* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store i32 1, i32* %11, align 4
  %59 = call %struct.glsl_hs_compiled_shader* @heap_alloc(i32 4)
  store %struct.glsl_hs_compiled_shader* %59, %struct.glsl_hs_compiled_shader** %9, align 8
  %60 = icmp ne %struct.glsl_hs_compiled_shader* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %48
  %62 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %89

63:                                               ; preds = %48
  %64 = load %struct.glsl_hs_compiled_shader*, %struct.glsl_hs_compiled_shader** %9, align 8
  %65 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %66 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.glsl_hs_compiled_shader* %64, %struct.glsl_hs_compiled_shader** %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %70 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.glsl_hs_compiled_shader*, %struct.glsl_hs_compiled_shader** %9, align 8
  store %struct.glsl_hs_compiled_shader* %71, %struct.glsl_hs_compiled_shader** %8, align 8
  %72 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %73 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %72, i32 0, i32 0
  %74 = call i32 @string_buffer_clear(i32* %73)
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %76 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %6, align 8
  %77 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %78 = call i32 @shader_glsl_generate_hull_shader(%struct.wined3d_context* %75, %struct.shader_glsl_priv* %76, %struct.wined3d_shader* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.glsl_hs_compiled_shader*, %struct.glsl_hs_compiled_shader** %8, align 8
  %81 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %10, align 8
  %82 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds %struct.glsl_hs_compiled_shader, %struct.glsl_hs_compiled_shader* %80, i64 %85
  %87 = getelementptr inbounds %struct.glsl_hs_compiled_shader, %struct.glsl_hs_compiled_shader* %86, i32 0, i32 0
  store i32 %79, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %63, %61, %37, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.glsl_shader_private* @heap_alloc_zero(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_shader*) #1

declare dso_local %struct.glsl_hs_compiled_shader* @heap_alloc(i32) #1

declare dso_local i32 @string_buffer_clear(i32*) #1

declare dso_local i32 @shader_glsl_generate_hull_shader(%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
