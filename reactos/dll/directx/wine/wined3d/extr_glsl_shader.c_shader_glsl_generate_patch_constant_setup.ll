; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_patch_constant_setup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_patch_constant_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"patch %s vec4 user_patch_constant[%u];\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"vec4 vpc[%u];\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"void setup_patch_constant_%s()\0A{\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vpc[%u]%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"hs_out[%u]%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_signature*, i64)* @shader_glsl_generate_patch_constant_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_patch_constant_setup(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_signature* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_shader_signature*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wined3d_shader_signature_element*, align 8
  %12 = alloca %struct.wined3d_shader_signature_element*, align 8
  %13 = alloca [6 x i8], align 1
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_shader_signature* %1, %struct.wined3d_shader_signature** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %41, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %21, i32 0, i32 1
  %23 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %23, i64 %25
  store %struct.wined3d_shader_signature_element* %26, %struct.wined3d_shader_signature_element** %11, align 8
  %27 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %11, align 8
  %28 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @max(i64 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %11, align 8
  %34 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %68 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %121, %62
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %5, align 8
  %72 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %69
  %76 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %5, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %76, i32 0, i32 1
  %78 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %78, i64 %80
  store %struct.wined3d_shader_signature_element* %81, %struct.wined3d_shader_signature_element** %12, align 8
  %82 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %12, align 8
  %83 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %86 = call i32 @shader_glsl_write_mask_to_str(i32 %84, i8* %85)
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %75
  %90 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %91 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %12, align 8
  %92 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %95 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %93, i8* %94)
  br label %101

96:                                               ; preds = %75
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %98 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %12, align 8
  %99 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %100 = call i32 @shader_glsl_generate_patch_constant_name(%struct.wined3d_string_buffer* %97, %struct.wined3d_shader_signature_element* %98, i32* %9, i8* %99)
  br label %101

101:                                              ; preds = %96, %89
  %102 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %103 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %108 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %12, align 8
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %110 = call i32 @shader_glsl_generate_patch_constant_name(%struct.wined3d_string_buffer* %107, %struct.wined3d_shader_signature_element* %108, i32* %9, i8* %109)
  br label %118

111:                                              ; preds = %101
  %112 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %113 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %12, align 8
  %114 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %117 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 %115, i8* %116)
  br label %118

118:                                              ; preds = %111, %106
  %119 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %120 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %69

124:                                              ; preds = %69
  %125 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %126 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_glsl_write_mask_to_str(i32, i8*) #1

declare dso_local i32 @shader_glsl_generate_patch_constant_name(%struct.wined3d_string_buffer*, %struct.wined3d_shader_signature_element*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
