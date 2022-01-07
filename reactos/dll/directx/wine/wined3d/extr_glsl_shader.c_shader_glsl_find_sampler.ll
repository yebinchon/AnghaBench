; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_find_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_find_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_sampler_map = type { i32, %struct.wined3d_shader_sampler_map_entry* }
%struct.wined3d_shader_sampler_map_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"No GLSL sampler found for resource %u / sampler %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader_sampler_map*, i32, i32)* @shader_glsl_find_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_glsl_find_sampler(%struct.wined3d_shader_sampler_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_shader_sampler_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_sampler_map_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.wined3d_shader_sampler_map* %0, %struct.wined3d_shader_sampler_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %10, i32 0, i32 1
  %12 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %11, align 8
  store %struct.wined3d_shader_sampler_map_entry* %12, %struct.wined3d_shader_sampler_map_entry** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.wined3d_shader_sampler_map*, %struct.wined3d_shader_sampler_map** %5, align 8
  %16 = getelementptr inbounds %struct.wined3d_shader_sampler_map, %struct.wined3d_shader_sampler_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %20, i64 %22
  %24 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %29, i64 %31
  %33 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.wined3d_shader_sampler_map_entry*, %struct.wined3d_shader_sampler_map_entry** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.wined3d_shader_sampler_map_entry, %struct.wined3d_shader_sampler_map_entry* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %28, %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %13

48:                                               ; preds = %13
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %37
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
