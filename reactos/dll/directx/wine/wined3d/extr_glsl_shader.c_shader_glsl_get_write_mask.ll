; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_write_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_write_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_dst_param = type { i32, i32 }

@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader_dst_param*, i8*)* @shader_glsl_get_write_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_get_write_mask(%struct.wined3d_shader_dst_param* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_shader_dst_param*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_shader_dst_param* %0, %struct.wined3d_shader_dst_param** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %9, i32 0, i32 0
  %11 = call i64 @shader_is_scalar(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  store i8 0, i8* %15, align 1
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @shader_glsl_write_mask_to_str(i32 %17, i8* %18)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i64 @shader_is_scalar(i32*) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
