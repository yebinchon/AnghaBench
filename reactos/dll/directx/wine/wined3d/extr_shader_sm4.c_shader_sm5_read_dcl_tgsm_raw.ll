; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm5_read_dcl_tgsm_raw.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_shader_sm5_read_dcl_tgsm_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wined3d_sm4_data = type { i32 }

@WINED3D_DATA_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Byte count %u is not multiple of 4.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, i32, i32, i32*, i32, %struct.wined3d_sm4_data*)* @shader_sm5_read_dcl_tgsm_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_sm5_read_dcl_tgsm_raw(%struct.wined3d_shader_instruction* %0, i32 %1, i32 %2, i32* %3, i32 %4, %struct.wined3d_sm4_data* %5) #0 {
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
  %18 = load i32, i32* @WINED3D_DATA_FLOAT, align 4
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @shader_sm4_read_dst_param(%struct.wined3d_sm4_data* %13, i32** %10, i32* %17, i32 %18, i32* %22)
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %6
  %38 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %7, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %37, %6
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
