; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm5_read_dcl_interface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm5_read_dcl_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.wined3d_sm4_data = type { i32 }

@WINED3D_SM5_FP_ARRAY_SIZE_SHIFT = common dso_local global i32 0, align 4
@WINED3D_SM5_FP_TABLE_COUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Ignoring set of function tables (count %u).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i32, i32, i32*, i32, %struct.wined3d_sm4_data*)* @shader_sm5_read_dcl_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm5_read_dcl_interface(%struct.wined3d_shader_instruction* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.wined3d_sm4_data* %5) #0 {
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
  %13 = load i32*, i32** %10, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %10, align 8
  %15 = load i32, i32* %13, align 4
  %16 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i32 %15, i32* %19, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %10, align 8
  %22 = load i32, i32* %20, align 4
  %23 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WINED3D_SM5_FP_ARRAY_SIZE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %10, align 8
  %37 = load i32, i32* %35, align 4
  %38 = load i32, i32* @WINED3D_SM5_FP_TABLE_COUNT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %41 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %45 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @FIXME(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %48)
  ret void
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
