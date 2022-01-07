; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_patch_constant_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_generate_patch_constant_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_signature_element = type { i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"user_patch_constant[%u]%s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gl_TessLevelOuter[%u]\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"gl_TessLevelInner[%u]\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Unhandled sysval semantic %#x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"vec4(0.0)%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_signature_element*, i32*, i8*)* @shader_glsl_generate_patch_constant_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_generate_patch_constant_name(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_signature_element* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.wined3d_string_buffer*, align 8
  %6 = alloca %struct.wined3d_shader_signature_element*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %5, align 8
  store %struct.wined3d_shader_signature_element* %1, %struct.wined3d_shader_signature_element** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %10 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = zext i32 %16 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %24 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %38 [
    i32 131, label %26
    i32 129, label %26
    i32 132, label %26
    i32 133, label %26
    i32 130, label %32
    i32 128, label %32
  ]

26:                                               ; preds = %22, %22, %22, %22
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %28 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %29 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %46

32:                                               ; preds = %22, %22
  %33 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %34 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  br label %46

38:                                               ; preds = %22
  %39 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %6, align 8
  %40 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %5, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %13, %38, %32, %26
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
