; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_primitive_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_primitive_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_primitive_type = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"pointlist\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"linelist\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"linestrip\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"trianglelist\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"trianglestrip\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"trianglefan\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"linelist_adj\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"linestrip_adj\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"trianglelist_adj\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"trianglestrip_adj\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"patch%u\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"<unrecognized_primitive_type %#x>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_primitive_type*)* @shader_dump_primitive_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_primitive_type(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_primitive_type* %1) #0 {
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  %4 = alloca %struct.wined3d_shader_primitive_type*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  store %struct.wined3d_shader_primitive_type* %1, %struct.wined3d_shader_primitive_type** %4, align 8
  %5 = load %struct.wined3d_shader_primitive_type*, %struct.wined3d_shader_primitive_type** %4, align 8
  %6 = getelementptr inbounds %struct.wined3d_shader_primitive_type, %struct.wined3d_shader_primitive_type* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %47 [
    i32 128, label %8
    i32 134, label %11
    i32 139, label %14
    i32 137, label %17
    i32 132, label %20
    i32 130, label %23
    i32 133, label %26
    i32 138, label %29
    i32 136, label %32
    i32 131, label %35
    i32 129, label %38
    i32 135, label %41
  ]

8:                                                ; preds = %2
  %9 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %10 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %53

11:                                               ; preds = %2
  %12 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %13 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %16 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %19 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %22 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %25 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %53

26:                                               ; preds = %2
  %27 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %28 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %31 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %53

32:                                               ; preds = %2
  %33 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %34 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %53

35:                                               ; preds = %2
  %36 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %37 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %53

38:                                               ; preds = %2
  %39 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %40 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %53

41:                                               ; preds = %2
  %42 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %43 = load %struct.wined3d_shader_primitive_type*, %struct.wined3d_shader_primitive_type** %4, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_primitive_type, %struct.wined3d_shader_primitive_type* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %45)
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %49 = load %struct.wined3d_shader_primitive_type*, %struct.wined3d_shader_primitive_type** %4, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader_primitive_type, %struct.wined3d_shader_primitive_type* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
