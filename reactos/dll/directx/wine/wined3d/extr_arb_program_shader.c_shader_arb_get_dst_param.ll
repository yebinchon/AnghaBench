; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_dst_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_dst_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32 }
%struct.wined3d_shader_dst_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*)* @shader_arb_get_dst_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_dst_param* %1, i8* %2) #0 {
  %4 = alloca %struct.wined3d_shader_instruction*, align 8
  %5 = alloca %struct.wined3d_shader_dst_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca [6 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %4, align 8
  store %struct.wined3d_shader_dst_param* %1, %struct.wined3d_shader_dst_param** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %11 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %11, i32 0, i32 0
  %13 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %14 = call i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction* %10, i32* %12, i8* %13, i32* %9)
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %17 = call i32 @strcpy(i8* %15, i8* %16)
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %4, align 8
  %19 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %21 = call i32 @shader_arb_get_write_mask(%struct.wined3d_shader_instruction* %18, %struct.wined3d_shader_dst_param* %19, i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %24 = call i32 @strcat(i8* %22, i8* %23)
  ret void
}

declare dso_local i32 @shader_arb_get_register_name(%struct.wined3d_shader_instruction*, i32*, i8*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @shader_arb_get_write_mask(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
