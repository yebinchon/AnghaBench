; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_ret.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, %struct.wined3d_shader*, %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_shader = type { i32 }
%struct.shader_arb_ctx_priv = type { i64, i32, i64 }
%struct.wined3d_string_buffer = type { i32 }

@ARB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"RET;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_ret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_ret(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.shader_arb_ctx_priv*, align 8
  %5 = alloca %struct.wined3d_shader*, align 8
  %6 = alloca i64, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %7 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  store %struct.wined3d_string_buffer* %11, %struct.wined3d_string_buffer** %3, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %15, align 8
  store %struct.shader_arb_ctx_priv* %16, %struct.shader_arb_ctx_priv** %4, align 8
  %17 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.wined3d_shader*, %struct.wined3d_shader** %20, align 8
  store %struct.wined3d_shader* %21, %struct.wined3d_shader** %5, align 8
  %22 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @shader_is_vshader_version(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %4, align 8
  %32 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ARB, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %69

37:                                               ; preds = %1
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %4, align 8
  %42 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %4, align 8
  %47 = load %struct.wined3d_shader*, %struct.wined3d_shader** %5, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %4, align 8
  %51 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %54 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %59 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %64 = call i32 @vshader_add_footer(%struct.shader_arb_ctx_priv* %46, i32 %49, i32 %52, %struct.TYPE_6__* %57, i32 %62, %struct.wined3d_string_buffer* %63)
  br label %65

65:                                               ; preds = %45, %40
  br label %66

66:                                               ; preds = %65, %37
  %67 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %68 = call i32 @shader_addline(%struct.wined3d_string_buffer* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %36
  ret void
}

declare dso_local i64 @shader_is_vshader_version(i32) #1

declare dso_local i32 @vshader_add_footer(%struct.shader_arb_ctx_priv*, i32, i32, %struct.TYPE_6__*, i32, %struct.wined3d_string_buffer*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
