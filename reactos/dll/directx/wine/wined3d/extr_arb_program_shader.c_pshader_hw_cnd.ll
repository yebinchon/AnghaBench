; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_cnd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_pshader_hw_cnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.wined3d_shader_src_param*, %struct.wined3d_shader_dst_param*, i64, %struct.TYPE_6__* }
%struct.wined3d_shader_src_param = type { i32 }
%struct.wined3d_shader_dst_param = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.wined3d_string_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wined3d_string_buffer = type { i32 }

@WINED3DSP_WRITEMASK_3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"MOV%s %s, %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ADD TA, %c%s, coefdiv.x;\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"CMP%s %s, TA, %s, %s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @pshader_hw_cnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pshader_hw_cnd(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_shader_dst_param*, align 8
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca [3 x [50 x i8]], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_src_param, align 4
  %9 = alloca i8, align 1
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %10 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %10, i32 0, i32 1
  %12 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %11, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %12, i64 0
  store %struct.wined3d_shader_dst_param* %13, %struct.wined3d_shader_dst_param** %3, align 8
  %14 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %17, align 8
  store %struct.wined3d_string_buffer* %18, %struct.wined3d_string_buffer** %4, align 8
  %19 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WINED3D_SHADER_VERSION(i32 %26, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %37 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %3, align 8
  %38 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %39 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %36, %struct.wined3d_shader_dst_param* %37, i8* %38)
  %40 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %41 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %41, i32 0, i32 0
  %43 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %42, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %43, i64 1
  %45 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 1
  %46 = getelementptr inbounds [50 x i8], [50 x i8]* %45, i64 0, i64 0
  %47 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %40, %struct.wined3d_shader_src_param* %44, i32 1, i8* %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @WINED3D_SHADER_VERSION(i32 1, i32 3)
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %1
  %52 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %57, i32 0, i32 1
  %59 = load %struct.wined3d_shader_dst_param*, %struct.wined3d_shader_dst_param** %58, align 8
  %60 = getelementptr inbounds %struct.wined3d_shader_dst_param, %struct.wined3d_shader_dst_param* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WINED3DSP_WRITEMASK_3, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %66 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %67 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %66)
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %70 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 1
  %71 = getelementptr inbounds [50 x i8], [50 x i8]* %70, i64 0, i64 0
  %72 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 signext %68, i8* %69, i8* %71)
  br label %111

73:                                               ; preds = %56, %51, %1
  %74 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %75 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %74, i32 0, i32 0
  %76 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %75, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %76, i64 0
  %78 = bitcast %struct.wined3d_shader_src_param* %8 to i8*
  %79 = bitcast %struct.wined3d_shader_src_param* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @negate_modifiers(i32 %81, i8* %9)
  %83 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %8, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %85 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 0
  %86 = getelementptr inbounds [50 x i8], [50 x i8]* %85, i64 0, i64 0
  %87 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %84, %struct.wined3d_shader_src_param* %8, i32 0, i8* %86)
  %88 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %89 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %90 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %89, i32 0, i32 0
  %91 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %90, align 8
  %92 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %91, i64 2
  %93 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 2
  %94 = getelementptr inbounds [50 x i8], [50 x i8]* %93, i64 0, i64 0
  %95 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %88, %struct.wined3d_shader_src_param* %92, i32 2, i8* %94)
  %96 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %97 = load i8, i8* %9, align 1
  %98 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 0
  %99 = getelementptr inbounds [50 x i8], [50 x i8]* %98, i64 0, i64 0
  %100 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8 signext %97, i8* %99)
  %101 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %102 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %103 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %102)
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %106 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 1
  %107 = getelementptr inbounds [50 x i8], [50 x i8]* %106, i64 0, i64 0
  %108 = getelementptr inbounds [3 x [50 x i8]], [3 x [50 x i8]]* %6, i64 0, i64 2
  %109 = getelementptr inbounds [50 x i8], [50 x i8]* %108, i64 0, i64 0
  %110 = call i32 (%struct.wined3d_string_buffer*, i8*, i8, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8 signext %104, i8* %105, i8* %107, i8* %109)
  br label %111

111:                                              ; preds = %73, %64
  ret void
}

declare dso_local i32 @WINED3D_SHADER_VERSION(i32, i32) #1

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_dst_param*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8 signext, i8*, ...) #1

declare dso_local i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @negate_modifiers(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
