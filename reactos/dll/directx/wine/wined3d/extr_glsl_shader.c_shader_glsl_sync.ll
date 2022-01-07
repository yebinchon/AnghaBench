; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_sync.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_string_buffer* }
%struct.wined3d_string_buffer = type { i32 }

@WINED3DSSF_THREAD_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"barrier();\0A\00", align 1
@WINED3DSSF_GROUP_SHARED_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"memoryBarrierShared();\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unhandled sync flags %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_glsl_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_sync(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %5 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %6 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %8, align 8
  store %struct.wined3d_string_buffer* %9, %struct.wined3d_string_buffer** %3, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @WINED3DSSF_THREAD_GROUP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %19 = call i32 @shader_addline(%struct.wined3d_string_buffer* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @WINED3DSSF_THREAD_GROUP, align 4
  %21 = load i32, i32* @WINED3DSSF_GROUP_SHARED_MEMORY, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @WINED3DSSF_GROUP_SHARED_MEMORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %33 = call i32 @shader_addline(%struct.wined3d_string_buffer* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @WINED3DSSF_GROUP_SHARED_MEMORY, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
