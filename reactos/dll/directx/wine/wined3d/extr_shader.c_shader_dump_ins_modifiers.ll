; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_ins_modifiers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_ins_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_dst_param = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"_d8\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_d4\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_d2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"_x2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"_x4\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"_x8\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"_unhandled_shift(%d)\00", align 1
@WINED3DSPDM_SATURATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"_sat\00", align 1
@WINED3DSPDM_PARTIALPRECISION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"_pp\00", align 1
@WINED3DSPDM_MSAMPCENTROID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"_centroid\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Unrecognised modifier %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_dst_param*)* @shader_dump_ins_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_ins_modifiers(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_dst_param* %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.wined3d_shader_dst_param*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store %struct.wined3d_shader_dst_param* %1, %struct.wined3d_shader_dst_param** %4, align 8
  %6 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %4, align 8
  %7 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %31 [
    i32 0, label %12
    i32 13, label %13
    i32 14, label %16
    i32 15, label %19
    i32 1, label %22
    i32 2, label %25
    i32 3, label %28
  ]

12:                                               ; preds = %2
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %15 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %18 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %21 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %24 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %27 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %37

28:                                               ; preds = %2
  %29 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %30 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %33 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %4, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %28, %25, %22, %19, %16, %13, %12
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @WINED3DSPDM_SATURATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %44 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @WINED3DSPDM_PARTIALPRECISION, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %52 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @WINED3DSPDM_MSAMPCENTROID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* @WINED3DSPDM_SATURATE, align 4
  %63 = load i32, i32* @WINED3DSPDM_PARTIALPRECISION, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WINED3DSPDM_MSAMPCENTROID, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %61
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
