; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_dcl_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm4_read_dcl_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wined3d_sm4_data = type { i32 }

@WINED3D_SM4_SAMPLER_MODE_MASK = common dso_local global i32 0, align 4
@WINED3D_SM4_SAMPLER_MODE_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM4_SAMPLER_COMPARISON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unhandled sampler mode %#x.\0A\00", align 1
@WINED3D_DATA_SAMPLER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i32, i32, i32*, i32, %struct.wined3d_sm4_data*)* @shader_sm4_read_dcl_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm4_read_dcl_sampler(%struct.wined3d_shader_instruction* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.wined3d_sm4_data* %5) #0 {
  %7 = alloca %struct.wined3d_shader_instruction*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_sm4_data*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.wined3d_sm4_data* %5, %struct.wined3d_sm4_data** %12, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @WINED3D_SM4_SAMPLER_MODE_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @WINED3D_SM4_SAMPLER_MODE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WINED3D_SM4_SAMPLER_COMPARISON, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %6
  %33 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %12, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* @WINED3D_DATA_SAMPLER, align 4
  %39 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data* %33, i32** %10, i32* %37, i32 %38, i32* %41)
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data*, i32**, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
