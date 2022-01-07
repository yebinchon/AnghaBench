; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_sgn.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_hw_sgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_instruction = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.shader_arb_ctx_priv*, %struct.wined3d_string_buffer* }
%struct.shader_arb_ctx_priv = type { i64 }
%struct.wined3d_string_buffer = type { i32 }

@NV2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"SSG%s %s, %s;\0A\00", align 1
@WINED3DSPDM_SATURATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SLT %s, -%s, %s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SLT %s,  %s, -%s;\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SLT TA, -%s, %s;\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ADD %s, %s, -TA;\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ADD %s, TA, -%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader_instruction*)* @shader_hw_sgn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_hw_sgn(%struct.wined3d_shader_instruction* %0) #0 {
  %2 = alloca %struct.wined3d_shader_instruction*, align 8
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca [50 x i8], align 16
  %5 = alloca [50 x i8], align 16
  %6 = alloca %struct.shader_arb_ctx_priv*, align 8
  store %struct.wined3d_shader_instruction* %0, %struct.wined3d_shader_instruction** %2, align 8
  %7 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  store %struct.wined3d_string_buffer* %11, %struct.wined3d_string_buffer** %3, align 8
  %12 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %15, align 8
  store %struct.shader_arb_ctx_priv* %16, %struct.shader_arb_ctx_priv** %6, align 8
  %17 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %18 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %23 = call i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction* %17, %struct.TYPE_4__* %21, i8* %22)
  %24 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %25 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %26 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %30 = call i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction* %24, i32* %28, i32 0, i8* %29)
  %31 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %32 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NV2, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %1
  %37 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %38 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %39 = call i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction* %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %43 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %44 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42, i8* %43)
  br label %94

45:                                               ; preds = %1
  %46 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %2, align 8
  %47 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WINED3DSPDM_SATURATE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %57 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %58 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %59 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %60 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58, i8* %59)
  br label %94

61:                                               ; preds = %45
  %62 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %63 = call i64 @strstr(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %67 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %68 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %69 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %70 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %68, i8* %69)
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %72 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %73 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %74 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %72, i8* %73)
  %75 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %76 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %77 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %78 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %76, i8* %77)
  br label %93

79:                                               ; preds = %61
  %80 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %81 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %82 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %83 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %81, i8* %82)
  %84 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %85 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %86 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %87 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %88 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %85, i8* %86, i8* %87)
  %89 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %90 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %91 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %92 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %79, %65
  br label %94

94:                                               ; preds = %36, %93, %55
  ret void
}

declare dso_local i32 @shader_arb_get_dst_param(%struct.wined3d_shader_instruction*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @shader_arb_get_src_param(%struct.wined3d_shader_instruction*, i32*, i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @shader_arb_get_modifier(%struct.wined3d_shader_instruction*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
