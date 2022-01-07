; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_reserved_vs_const.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_reserved_vs_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_vshader_private = type { i32 }
%struct.wined3d_shader_reg_maps = type { i32 }
%struct.wined3d_gl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*)* @reserved_vs_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserved_vs_const(%struct.arb_vshader_private* %0, %struct.wined3d_shader_reg_maps* %1, %struct.wined3d_gl_info* %2) #0 {
  %4 = alloca %struct.arb_vshader_private*, align 8
  %5 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca i32, align 4
  store %struct.arb_vshader_private* %0, %struct.arb_vshader_private** %4, align 8
  store %struct.wined3d_shader_reg_maps* %1, %struct.wined3d_shader_reg_maps** %5, align 8
  store %struct.wined3d_gl_info* %2, %struct.wined3d_gl_info** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %4, align 8
  %9 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %5, align 8
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %11 = call i64 @need_helper_const(%struct.arb_vshader_private* %8, %struct.wined3d_shader_reg_maps* %9, %struct.wined3d_gl_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.arb_vshader_private*, %struct.arb_vshader_private** %4, align 8
  %18 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %5, align 8
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %20 = call i64 @need_rel_addr_const(%struct.arb_vshader_private* %17, %struct.wined3d_shader_reg_maps* %18, %struct.wined3d_gl_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i64 @need_helper_const(%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*) #1

declare dso_local i64 @need_rel_addr_const(%struct.arb_vshader_private*, %struct.wined3d_shader_reg_maps*, %struct.wined3d_gl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
