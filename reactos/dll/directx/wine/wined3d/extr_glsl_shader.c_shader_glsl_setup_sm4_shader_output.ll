; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_setup_sm4_shader_output.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_setup_sm4_shader_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { %struct.wined3d_string_buffer }
%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i32, i32, i64 }
%struct.wined3d_shader_reg_maps = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s.reg%u%s = outputs[%u]%s;\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"%s.reg[%u]%s = outputs[%u]%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_glsl_priv*, i32, %struct.wined3d_shader_signature*, %struct.wined3d_shader_reg_maps*, i8*, i64)* @shader_glsl_setup_sm4_shader_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_setup_sm4_shader_output(%struct.shader_glsl_priv* %0, i32 %1, %struct.wined3d_shader_signature* %2, %struct.wined3d_shader_reg_maps* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.shader_glsl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_shader_signature*, align 8
  %10 = alloca %struct.wined3d_shader_reg_maps*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wined3d_string_buffer*, align 8
  %14 = alloca [6 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.wined3d_shader_signature_element*, align 8
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.wined3d_shader_signature* %2, %struct.wined3d_shader_signature** %9, align 8
  store %struct.wined3d_shader_reg_maps* %3, %struct.wined3d_shader_reg_maps** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %7, align 8
  %18 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %17, i32 0, i32 0
  store %struct.wined3d_string_buffer* %18, %struct.wined3d_string_buffer** %13, align 8
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %76, %6
  %20 = load i32, i32* %15, align 4
  %21 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %9, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %19
  %26 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %9, align 8
  %27 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %26, i32 0, i32 1
  %28 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %27, align 8
  %29 = load i32, i32* %15, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %28, i64 %30
  store %struct.wined3d_shader_signature_element* %31, %struct.wined3d_shader_signature_element** %16, align 8
  %32 = load %struct.wined3d_shader_reg_maps*, %struct.wined3d_shader_reg_maps** %10, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader_reg_maps, %struct.wined3d_shader_reg_maps* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %25
  br label %76

42:                                               ; preds = %25
  %43 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %76

48:                                               ; preds = %42
  %49 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %76

55:                                               ; preds = %48
  %56 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %57 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %60 = call i32 @shader_glsl_write_mask_to_str(i32 %58, i8* %59)
  %61 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)
  %66 = load i8*, i8** %11, align 8
  %67 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %68 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %71 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %16, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %75 = call i32 @shader_addline(%struct.wined3d_string_buffer* %61, i8* %65, i8* %66, i32 %69, i8* %70, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %55, %54, %47, %41
  %77 = load i32, i32* %15, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %19

79:                                               ; preds = %19
  ret void
}

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
