; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_ds_epilogue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_ds_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader = type { i32 }
%struct.ds_compile_args = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"setup_ds_output(ds_out);\0A\00", align 1
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@ARB_CLIP_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, %struct.wined3d_string_buffer*, %struct.wined3d_shader*, %struct.ds_compile_args*)* @shader_glsl_generate_ds_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_ds_epilogue(%struct.wined3d_gl_info* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_shader* %2, %struct.ds_compile_args* %3) #0 {
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_string_buffer*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.ds_compile_args*, align 8
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  store %struct.ds_compile_args* %3, %struct.ds_compile_args** %8, align 8
  %9 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %10 = call i32 @shader_addline(%struct.wined3d_string_buffer* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ds_compile_args*, %struct.ds_compile_args** %8, align 8
  %12 = getelementptr inbounds %struct.ds_compile_args, %struct.ds_compile_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @ARB_CLIP_CONTROL, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %6, align 8
  %26 = call i32 @shader_glsl_fixup_position(%struct.wined3d_string_buffer* %25)
  br label %27

27:                                               ; preds = %24, %16, %4
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*) #1

declare dso_local i32 @shader_glsl_fixup_position(%struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
