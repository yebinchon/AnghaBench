; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm5_read_dcl_uav_structured.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm5_read_dcl_uav_structured.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wined3d_sm4_data = type { i32 }

@WINED3D_DATA_UAV = common dso_local global i32 0, align 4
@WINED3D_SM5_UAV_FLAGS_MASK = common dso_local global i32 0, align 4
@WINED3D_SM5_UAV_FLAGS_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Byte stride %u is not multiple of 4.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i32, i32, i32*, i32, %struct.wined3d_sm4_data*)* @shader_sm5_read_dcl_uav_structured to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm5_read_dcl_uav_structured(%struct.wined3d_shader_instruction* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.wined3d_sm4_data* %5) #0 {
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
  %13 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %12, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = load i32, i32* %11, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* @WINED3D_DATA_UAV, align 4
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data* %13, i32** %10, i32* %17, i32 %18, i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @WINED3D_SM5_UAV_FLAGS_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @WINED3D_SM5_UAV_FLAGS_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = srem i32 %41, 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %6
  %45 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %44, %6
  ret void
}

declare dso_local i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data*, i32**, i32*, i32, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
