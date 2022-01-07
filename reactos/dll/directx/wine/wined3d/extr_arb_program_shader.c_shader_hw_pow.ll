; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_pow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_6__*, %struct.wined3d_shader_src_param*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.shader_arb_ctx_priv = type { i64 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_src_param = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@ARB_ONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ABS TA.x, %s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"MOV TA.x, %s;\0A\00", align 1
@NV2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"MOVC TA.y, %s;\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"POW%s %s, TA.x, TA.y;\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"MOV %s (EQ.y), %s;\0A\00", align 1
@ARB_ZERO = common dso_local global i32 0, align 4
@ARB_EPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"ABS TA.y, %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"SGE TA.y, -TA.y, %s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"MAD TA.z, TA.y, %s, %s;\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"POW%s TA.x, TA.x, TA.z;\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"MAD TA.x, -TA.x, TA.y, TA.x;\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"MAD %s, TA.y, %s, TA.x;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_pow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_pow(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca [50 x i8], align 16
  %5 = alloca [50 x i8], align 16
  %6 = alloca [50 x i8], align 16
  %7 = alloca %struct.wined3d_shader_src_param, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.shader_arb_ctx_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %13 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %16, align 8
  store %struct.wined3d_string_buffer* %17, %struct.wined3d_string_buffer** %3, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 1
  %20 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %19, align 8
  %21 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %20, i64 0
  %22 = bitcast %struct.wined3d_shader_src_param* %7 to i8*
  %23 = bitcast %struct.wined3d_shader_src_param* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %28, align 8
  store %struct.shader_arb_ctx_priv* %29, %struct.shader_arb_ctx_priv** %9, align 8
  %30 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ARB_ONE, align 4
  %39 = call i8* @arb_get_helper_value(i32 %37, i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @abs_modifier(i32 %41, i64* %8)
  %43 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %45 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %46 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %50 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %44, i32* %48, i8* %49)
  %51 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %53 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %51, %struct.wined3d_shader_src_param* %7, i32 0, i8* %52)
  %54 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %55 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %56 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %55, i32 0, i32 1
  %57 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %56, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %57, i64 1
  %59 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %60 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %54, %struct.wined3d_shader_src_param* %58, i32 1, i8* %59)
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %1
  %64 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %65 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %66 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %71

67:                                               ; preds = %1
  %68 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %9, align 8
  %73 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NV2, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %79 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %80 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %82 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %83 = call i8* @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %82)
  %84 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %85 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %83, i8* %84)
  %86 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %87 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %87, i8* %88)
  br label %131

90:                                               ; preds = %71
  %91 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %92 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ARB_ZERO, align 4
  %100 = call i8* @arb_get_helper_value(i32 %98, i32 %99)
  store i8* %100, i8** %11, align 8
  %101 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %102 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ARB_EPS, align 4
  %110 = call i8* @arb_get_helper_value(i32 %108, i32 %109)
  store i8* %110, i8** %12, align 8
  %111 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %112 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %113 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %112)
  %114 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  %117 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %120 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %118, i8* %119)
  %121 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %122 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %123 = call i8* @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %122)
  %124 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %123)
  %125 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %126 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %127 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %128 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %128, i8* %129)
  br label %131

131:                                              ; preds = %90, %77
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @arb_get_helper_value(i32, i32) #2

declare dso_local i32 @abs_modifier(i32, i64*) #2

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, i32*, i8*) #2

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, %struct.wined3d_shader_src_param*, i32, i8*) #2

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #2

declare dso_local i8* @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
