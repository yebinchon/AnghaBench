; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_domain_shader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_domain_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_shader = type { %struct.glsl_shader_private* }
%struct.glsl_shader_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.glsl_ds_compiled_shader* }
%struct.glsl_ds_compiled_shader = type { i32, %struct.ds_compile_args }
%struct.ds_compile_args = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate backend data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"No matching GL shader found for shader %p, compiling a new shader.\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to allocate GL shaders array.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.ds_compile_args*)* @find_glsl_domain_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_glsl_domain_shader(%struct.wined3d_context* %0, %struct.shader_glsl_priv* %1, %struct.wined3d_shader* %2, %struct.ds_compile_args* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca %struct.wined3d_shader*, align 8
  %9 = alloca %struct.ds_compile_args*, align 8
  %10 = alloca %struct.glsl_ds_compiled_shader*, align 8
  %11 = alloca %struct.glsl_ds_compiled_shader*, align 8
  %12 = alloca %struct.glsl_shader_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %6, align 8
  store %struct.shader_glsl_priv* %1, %struct.shader_glsl_priv** %7, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %8, align 8
  store %struct.ds_compile_args* %3, %struct.ds_compile_args** %9, align 8
  %16 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %16, i32 0, i32 0
  %18 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %17, align 8
  %19 = icmp ne %struct.glsl_shader_private* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = call %struct.glsl_shader_private* @heap_alloc_zero(i32 16)
  %22 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %22, i32 0, i32 0
  store %struct.glsl_shader_private* %21, %struct.glsl_shader_private** %23, align 8
  %24 = icmp ne %struct.glsl_shader_private* %21, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %127

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %30 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %29, i32 0, i32 0
  %31 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %30, align 8
  store %struct.glsl_shader_private* %31, %struct.glsl_shader_private** %12, align 8
  %32 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %33 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %34, align 8
  store %struct.glsl_ds_compiled_shader* %35, %struct.glsl_ds_compiled_shader** %10, align 8
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %59, %28
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %39 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %43, i64 %45
  %47 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %46, i32 0, i32 1
  %48 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %49 = call i32 @memcmp(%struct.ds_compile_args* %47, %struct.ds_compile_args* %48, i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %52, i64 %54
  %56 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %127

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_shader* %63)
  %65 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %66 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %71 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %75 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call %struct.glsl_ds_compiled_shader* @heap_realloc(%struct.glsl_ds_compiled_shader* %77, i32 %81)
  store %struct.glsl_ds_compiled_shader* %82, %struct.glsl_ds_compiled_shader** %11, align 8
  br label %85

83:                                               ; preds = %62
  %84 = call %struct.glsl_ds_compiled_shader* @heap_alloc(i32 8)
  store %struct.glsl_ds_compiled_shader* %84, %struct.glsl_ds_compiled_shader** %11, align 8
  store i32 1, i32* %14, align 4
  br label %85

85:                                               ; preds = %83, %69
  %86 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %11, align 8
  %87 = icmp ne %struct.glsl_ds_compiled_shader* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %127

90:                                               ; preds = %85
  %91 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %11, align 8
  %92 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %93 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store %struct.glsl_ds_compiled_shader* %91, %struct.glsl_ds_compiled_shader** %94, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %97 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %11, align 8
  store %struct.glsl_ds_compiled_shader* %98, %struct.glsl_ds_compiled_shader** %10, align 8
  %99 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %100 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %99, i32 0, i32 0
  %101 = call i32 @string_buffer_clear(i32* %100)
  %102 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %103 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %104 = load %struct.wined3d_shader*, %struct.wined3d_shader** %8, align 8
  %105 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %106 = call i32 @shader_glsl_generate_domain_shader(%struct.wined3d_context* %102, %struct.shader_glsl_priv* %103, %struct.wined3d_shader* %104, %struct.ds_compile_args* %105)
  store i32 %106, i32* %15, align 4
  %107 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %10, align 8
  %108 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %109 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %107, i64 %111
  %113 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %112, i32 0, i32 1
  %114 = load %struct.ds_compile_args*, %struct.ds_compile_args** %9, align 8
  %115 = bitcast %struct.ds_compile_args* %113 to i8*
  %116 = bitcast %struct.ds_compile_args* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 4, i1 false)
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.glsl_ds_compiled_shader*, %struct.glsl_ds_compiled_shader** %10, align 8
  %119 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %12, align 8
  %120 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %118, i64 %123
  %125 = getelementptr inbounds %struct.glsl_ds_compiled_shader, %struct.glsl_ds_compiled_shader* %124, i32 0, i32 0
  store i32 %117, i32* %125, align 4
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %90, %88, %51, %25
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.glsl_shader_private* @heap_alloc_zero(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memcmp(%struct.ds_compile_args*, %struct.ds_compile_args*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_shader*) #1

declare dso_local %struct.glsl_ds_compiled_shader* @heap_realloc(%struct.glsl_ds_compiled_shader*, i32) #1

declare dso_local %struct.glsl_ds_compiled_shader* @heap_alloc(i32) #1

declare dso_local i32 @string_buffer_clear(i32*) #1

declare dso_local i32 @shader_glsl_generate_domain_shader(%struct.wined3d_context*, %struct.shader_glsl_priv*, %struct.wined3d_shader*, %struct.ds_compile_args*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
