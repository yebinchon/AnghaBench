; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_swizzle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_get_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_src_param = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_src_param*, i32, i32, i8*)* @shader_glsl_get_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_get_swizzle(%struct.wined3d_shader_src_param* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.wined3d_shader_src_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.wined3d_shader_src_param* %0, %struct.wined3d_shader_src_param** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %9, i32 0, i32 1
  %11 = call i64 @shader_is_scalar(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i8*, i8** %8, align 8
  store i8 0, i8* %14, align 1
  br label %23

15:                                               ; preds = %4
  %16 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @shader_glsl_swizzle_to_str(i32 %18, i32 %19, i32 %20, i8* %21)
  br label %23

23:                                               ; preds = %15, %13
  ret void
}

declare dso_local i64 @shader_is_scalar(i32*) #1

declare dso_local i32 @shader_glsl_swizzle_to_str(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
