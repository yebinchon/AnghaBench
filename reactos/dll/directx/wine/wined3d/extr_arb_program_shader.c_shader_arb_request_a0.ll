; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_request_a0.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_request_a0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer*, %struct.shader_arb_ctx_priv* }
%struct.wined3d_string_buffer = type { i32 }
%struct.shader_arb_ctx_priv = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ARL A0.x, %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i8*)* @shader_arb_request_a0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_request_a0(%struct.wined3d_shader_instruction* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_shader_instruction*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.shader_arb_ctx_priv*, align 8
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %3, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %10, align 8
  store %struct.shader_arb_ctx_priv* %11, %struct.shader_arb_ctx_priv** %5, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %3, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %15, align 8
  store %struct.wined3d_string_buffer* %16, %struct.wined3d_string_buffer** %6, align 8
  %17 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %5, align 8
  %18 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmp(i32 %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %5, align 8
  %26 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strcpy(i32 %27, i8* %28)
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @shader_addline(%struct.wined3d_string_buffer* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
