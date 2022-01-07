; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_vshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_vshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader = type { %struct.glsl_shader_private* }
%struct.glsl_shader_private = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.glsl_vs_compiled_shader* }
%struct.glsl_vs_compiled_shader = type { i32, %struct.vs_compile_args }
%struct.vs_compile_args = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate backend data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"No matching GL shader found for shader %p, compiling a new shader.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.vs_compile_args*)* @find_glsl_vshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_glsl_vshader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2, %struct.vs_compile_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.vs_compile_args*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.glsl_vs_compiled_shader*, align 8
  %14 = alloca %struct.glsl_vs_compiled_shader*, align 8
  %15 = alloca %struct.glsl_shader_private*, align 8
  %16 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %7, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %8, align 8
  store %struct.vs_compile_args* %3, %struct.vs_compile_args** %9, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %21, i32 0, i32 0
  %23 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %22, align 8
  %24 = icmp ne %struct.glsl_shader_private* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = call %struct.glsl_shader_private* @heap_alloc_zero(i32 24)
  %27 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %27, i32 0, i32 0
  store %struct.glsl_shader_private* %26, %struct.glsl_shader_private** %28, align 8
  %29 = icmp ne %struct.glsl_shader_private* %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %147

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %34, i32 0, i32 0
  %36 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %35, align 8
  store %struct.glsl_shader_private* %36, %struct.glsl_shader_private** %15, align 8
  %37 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %38 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %39, align 8
  store %struct.glsl_vs_compiled_shader* %40, %struct.glsl_vs_compiled_shader** %13, align 8
  store i64 0, i64* %10, align 8
  br label %41

41:                                               ; preds = %63, %33
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %44 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %13, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %48, i64 %49
  %51 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %50, i32 0, i32 1
  %52 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @vs_args_equal(%struct.vs_compile_args* %51, %struct.vs_compile_args* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %13, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %57, i64 %58
  %60 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %5, align 4
  br label %147

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %41

66:                                               ; preds = %41
  %67 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %68 = call i32 @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_shader* %67)
  %69 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %70 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %73 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %66
  %77 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %78 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %83 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %86 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = udiv i64 %87, 2
  %89 = trunc i64 %88 to i32
  %90 = call i32 @max(i32 1, i32 %89)
  %91 = sext i32 %90 to i64
  %92 = add i64 %84, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %95 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call %struct.glsl_vs_compiled_shader* @heap_realloc(%struct.glsl_vs_compiled_shader* %97, i32 %101)
  store %struct.glsl_vs_compiled_shader* %102, %struct.glsl_vs_compiled_shader** %14, align 8
  br label %105

103:                                              ; preds = %76
  %104 = call %struct.glsl_vs_compiled_shader* @heap_alloc(i32 8)
  store %struct.glsl_vs_compiled_shader* %104, %struct.glsl_vs_compiled_shader** %14, align 8
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %103, %81
  %106 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %14, align 8
  %107 = icmp ne %struct.glsl_vs_compiled_shader* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %147

110:                                              ; preds = %105
  %111 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %14, align 8
  %112 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %113 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store %struct.glsl_vs_compiled_shader* %111, %struct.glsl_vs_compiled_shader** %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %118 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %14, align 8
  store %struct.glsl_vs_compiled_shader* %119, %struct.glsl_vs_compiled_shader** %13, align 8
  br label %120

120:                                              ; preds = %110, %66
  %121 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %13, align 8
  %122 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %123 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %121, i64 %124
  %126 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %125, i32 0, i32 1
  %127 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %128 = bitcast %struct.vs_compile_args* %126 to i8*
  %129 = bitcast %struct.vs_compile_args* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 4, i1 false)
  %130 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %131 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %130, i32 0, i32 0
  %132 = call i32 @string_buffer_clear(i32* %131)
  %133 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %134 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %135 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %136 = load %struct.vs_compile_args*, %struct.vs_compile_args** %9, align 8
  %137 = call i32 @shader_glsl_generate_vshader(%struct.wined3d_context* %133, %struct.shader_glsl_priv* %134, %struct.wined3d_shader* %135, %struct.vs_compile_args* %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load %struct.glsl_vs_compiled_shader*, %struct.glsl_vs_compiled_shader** %13, align 8
  %140 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %15, align 8
  %141 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %139, i64 %142
  %145 = getelementptr inbounds %struct.glsl_vs_compiled_shader, %struct.glsl_vs_compiled_shader* %144, i32 0, i32 0
  store i32 %138, i32* %145, align 4
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %120, %108, %56, %30
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.glsl_shader_private* @heap_alloc_zero(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @vs_args_equal(%struct.vs_compile_args*, %struct.vs_compile_args*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_shader*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.glsl_vs_compiled_shader* @heap_realloc(%struct.glsl_vs_compiled_shader*, i32) #1

declare dso_local %struct.glsl_vs_compiled_shader* @heap_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @string_buffer_clear(i32*) #1

declare dso_local i32 @shader_glsl_generate_vshader(%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.vs_compile_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
