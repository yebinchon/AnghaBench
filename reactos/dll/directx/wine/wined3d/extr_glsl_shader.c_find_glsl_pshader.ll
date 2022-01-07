; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_pshader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_find_glsl_pshader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32 }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_string_buffer_list = type { i32 }
%struct.wined3d_shader = type { %struct.glsl_shader_private* }
%struct.glsl_shader_private = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.glsl_ps_compiled_shader* }
%struct.glsl_ps_compiled_shader = type { i32, %struct.ps_np2fixup_info, %struct.ps_compile_args }
%struct.ps_np2fixup_info = type { i32 }
%struct.ps_compile_args = type { i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate backend data.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"No matching GL shader found for shader %p, compiling a new shader.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer_list*, %struct.wined3d_shader*, %struct.ps_compile_args*, %struct.ps_np2fixup_info**)* @find_glsl_pshader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_glsl_pshader(%struct.wined3d_context* %0, %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer_list* %2, %struct.wined3d_shader* %3, %struct.ps_compile_args* %4, %struct.ps_np2fixup_info** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca %struct.wined3d_string_buffer*, align 8
  %10 = alloca %struct.wined3d_string_buffer_list*, align 8
  %11 = alloca %struct.wined3d_shader*, align 8
  %12 = alloca %struct.ps_compile_args*, align 8
  %13 = alloca %struct.ps_np2fixup_info**, align 8
  %14 = alloca %struct.glsl_ps_compiled_shader*, align 8
  %15 = alloca %struct.glsl_ps_compiled_shader*, align 8
  %16 = alloca %struct.glsl_shader_private*, align 8
  %17 = alloca %struct.ps_np2fixup_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %8, align 8
  store %struct.wined3d_string_buffer* %1, %struct.wined3d_string_buffer** %9, align 8
  store %struct.wined3d_string_buffer_list* %2, %struct.wined3d_string_buffer_list** %10, align 8
  store %struct.wined3d_shader* %3, %struct.wined3d_shader** %11, align 8
  store %struct.ps_compile_args* %4, %struct.ps_compile_args** %12, align 8
  store %struct.ps_np2fixup_info** %5, %struct.ps_np2fixup_info*** %13, align 8
  %21 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %21, i32 0, i32 0
  %23 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %22, align 8
  %24 = icmp ne %struct.glsl_shader_private* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %6
  %26 = call %struct.glsl_shader_private* @heap_alloc_zero(i32 24)
  %27 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %27, i32 0, i32 0
  store %struct.glsl_shader_private* %26, %struct.glsl_shader_private** %28, align 8
  %29 = icmp ne %struct.glsl_shader_private* %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %181

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %6
  %34 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %34, i32 0, i32 0
  %36 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %35, align 8
  store %struct.glsl_shader_private* %36, %struct.glsl_shader_private** %16, align 8
  %37 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %38 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %39, align 8
  store %struct.glsl_ps_compiled_shader* %40, %struct.glsl_ps_compiled_shader** %14, align 8
  store i64 0, i64* %18, align 8
  br label %41

41:                                               ; preds = %73, %33
  %42 = load i64, i64* %18, align 8
  %43 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %44 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %14, align 8
  %49 = load i64, i64* %18, align 8
  %50 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %48, i64 %49
  %51 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %50, i32 0, i32 2
  %52 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %53 = call i32 @memcmp(%struct.ps_compile_args* %51, %struct.ps_compile_args* %52, i32 16)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %47
  %56 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %57 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %14, align 8
  %62 = load i64, i64* %18, align 8
  %63 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %61, i64 %62
  %64 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %63, i32 0, i32 1
  %65 = load %struct.ps_np2fixup_info**, %struct.ps_np2fixup_info*** %13, align 8
  store %struct.ps_np2fixup_info* %64, %struct.ps_np2fixup_info** %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %14, align 8
  %68 = load i64, i64* %18, align 8
  %69 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %67, i64 %68
  %70 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %7, align 4
  br label %181

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %18, align 8
  br label %41

76:                                               ; preds = %41
  %77 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_shader* %77)
  %79 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %80 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %83 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %130

86:                                               ; preds = %76
  %87 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %88 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %93 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %96 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = udiv i64 %97, 2
  %99 = trunc i64 %98 to i32
  %100 = call i32 @max(i32 1, i32 %99)
  %101 = sext i32 %100 to i64
  %102 = add i64 %94, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %19, align 4
  %104 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %105 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 24
  %111 = trunc i64 %110 to i32
  %112 = call %struct.glsl_ps_compiled_shader* @heap_realloc(%struct.glsl_ps_compiled_shader* %107, i32 %111)
  store %struct.glsl_ps_compiled_shader* %112, %struct.glsl_ps_compiled_shader** %15, align 8
  br label %115

113:                                              ; preds = %86
  %114 = call %struct.glsl_ps_compiled_shader* @heap_alloc(i32 24)
  store %struct.glsl_ps_compiled_shader* %114, %struct.glsl_ps_compiled_shader** %15, align 8
  store i32 1, i32* %19, align 4
  br label %115

115:                                              ; preds = %113, %91
  %116 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %15, align 8
  %117 = icmp ne %struct.glsl_ps_compiled_shader* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %181

120:                                              ; preds = %115
  %121 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %15, align 8
  %122 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %123 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store %struct.glsl_ps_compiled_shader* %121, %struct.glsl_ps_compiled_shader** %124, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %128 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %15, align 8
  store %struct.glsl_ps_compiled_shader* %129, %struct.glsl_ps_compiled_shader** %14, align 8
  br label %130

130:                                              ; preds = %120, %76
  %131 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %14, align 8
  %132 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %133 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %131, i64 %134
  %136 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %135, i32 0, i32 2
  %137 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %138 = bitcast %struct.ps_compile_args* %136 to i8*
  %139 = bitcast %struct.ps_compile_args* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 16, i1 false)
  %140 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %14, align 8
  %141 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %142 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %140, i64 %143
  %145 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %144, i32 0, i32 1
  store %struct.ps_np2fixup_info* %145, %struct.ps_np2fixup_info** %17, align 8
  %146 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %17, align 8
  %147 = call i32 @memset(%struct.ps_np2fixup_info* %146, i32 0, i32 4)
  %148 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %149 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %130
  %153 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %17, align 8
  br label %155

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi %struct.ps_np2fixup_info* [ %153, %152 ], [ null, %154 ]
  %157 = load %struct.ps_np2fixup_info**, %struct.ps_np2fixup_info*** %13, align 8
  store %struct.ps_np2fixup_info* %156, %struct.ps_np2fixup_info** %157, align 8
  %158 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %159 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %160 = getelementptr inbounds %struct.ps_compile_args, %struct.ps_compile_args* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @pixelshader_update_resource_types(%struct.wined3d_shader* %158, i32 %161)
  %163 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %164 = call i32 @string_buffer_clear(%struct.wined3d_string_buffer* %163)
  %165 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %166 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %9, align 8
  %167 = load %struct.wined3d_string_buffer_list*, %struct.wined3d_string_buffer_list** %10, align 8
  %168 = load %struct.wined3d_shader*, %struct.wined3d_shader** %11, align 8
  %169 = load %struct.ps_compile_args*, %struct.ps_compile_args** %12, align 8
  %170 = load %struct.ps_np2fixup_info*, %struct.ps_np2fixup_info** %17, align 8
  %171 = call i32 @shader_glsl_generate_pshader(%struct.wined3d_context* %165, %struct.wined3d_string_buffer* %166, %struct.wined3d_string_buffer_list* %167, %struct.wined3d_shader* %168, %struct.ps_compile_args* %169, %struct.ps_np2fixup_info* %170)
  store i32 %171, i32* %20, align 4
  %172 = load i32, i32* %20, align 4
  %173 = load %struct.glsl_ps_compiled_shader*, %struct.glsl_ps_compiled_shader** %14, align 8
  %174 = load %struct.glsl_shader_private*, %struct.glsl_shader_private** %16, align 8
  %175 = getelementptr inbounds %struct.glsl_shader_private, %struct.glsl_shader_private* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %175, align 8
  %178 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %173, i64 %176
  %179 = getelementptr inbounds %struct.glsl_ps_compiled_shader, %struct.glsl_ps_compiled_shader* %178, i32 0, i32 0
  store i32 %172, i32* %179, align 8
  %180 = load i32, i32* %20, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %155, %118, %66, %30
  %182 = load i32, i32* %7, align 4
  ret i32 %182
}

declare dso_local %struct.glsl_shader_private* @heap_alloc_zero(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memcmp(%struct.ps_compile_args*, %struct.ps_compile_args*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_shader*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.glsl_ps_compiled_shader* @heap_realloc(%struct.glsl_ps_compiled_shader*, i32) #1

declare dso_local %struct.glsl_ps_compiled_shader* @heap_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.ps_np2fixup_info*, i32, i32) #1

declare dso_local i32 @pixelshader_update_resource_types(%struct.wined3d_shader*, i32) #1

declare dso_local i32 @string_buffer_clear(%struct.wined3d_string_buffer*) #1

declare dso_local i32 @shader_glsl_generate_pshader(%struct.wined3d_context*, %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer_list*, %struct.wined3d_shader*, %struct.ps_compile_args*, %struct.ps_np2fixup_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
