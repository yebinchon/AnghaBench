; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_dst_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_dst_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_dst_param = type { i32, i32 }
%struct.wined3d_shader_version = type { i32 }

@WINED3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@shader_dump_dst_param.write_mask_chars = internal constant [5 x i8] c"xyzw\00", align 1
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@WINED3DSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@WINED3DSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@WINED3DSP_WRITEMASK_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_version*)* @shader_dump_dst_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_dst_param(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_dst_param* %1, %struct.wined3d_shader_version* %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_shader_dst_param*, align 8
  %6 = alloca %struct.wined3d_shader_version*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_shader_dst_param* %1, %struct.wined3d_shader_dst_param** %5, align 8
  store %struct.wined3d_shader_version* %2, %struct.wined3d_shader_version** %6, align 8
  %8 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %9 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %12 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %5, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %12, i32 0, i32 1
  %14 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %15 = call i32 @shader_dump_register(%struct.wined3d_string_buffer* %11, i32* %13, %struct.wined3d_shader_version* %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @WINED3DSP_WRITEMASK_ALL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %24 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @WINED3DSP_WRITEMASK_0, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %31 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @shader_dump_dst_param.write_mask_chars, i64 0, i64 0), align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @WINED3DSP_WRITEMASK_1, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %41 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @shader_dump_dst_param.write_mask_chars, i64 0, i64 1), align 1
  %42 = sext i8 %41 to i32
  %43 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @WINED3DSP_WRITEMASK_2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %51 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @shader_dump_dst_param.write_mask_chars, i64 0, i64 2), align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @WINED3DSP_WRITEMASK_3, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %61 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @shader_dump_dst_param.write_mask_chars, i64 0, i64 3), align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  br label %65

65:                                               ; preds = %64, %18, %3
  ret void
}

declare dso_local i32 @shader_dump_register(%struct.wined3d_string_buffer*, i32*, %struct.wined3d_shader_version*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
