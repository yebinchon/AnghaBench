; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_write_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_get_write_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32 }
%struct.wined3d_shader_dst_param = type { i32 }

@WINED3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*)* @shader_arb_get_write_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_get_write_mask(%struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_dst_param* %1, i8* %2) #0 {
  %4 = alloca %struct.wined3d_shader_instruction*, align 8
  %5 = alloca %struct.wined3d_shader_dst_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %4, align 8
  store %struct.wined3d_shader_dst_param* %1, %struct.wined3d_shader_dst_param** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  store i8* %8, i8** %7, align 8
  %9 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WINED3DSP_WRITEMASK_ALL, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %7, align 8
  store i8 46, i8* %15, align 1
  %17 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  store i8 120, i8* %24, align 1
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %7, align 8
  store i8 121, i8* %34, align 1
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 122, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 119, i8* %54, align 1
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %56, %3
  %58 = load i8*, i8** %7, align 8
  store i8 0, i8* %58, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
