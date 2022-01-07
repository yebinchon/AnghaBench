; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_type_hint_from_bind_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_type_hint_from_bind_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i64* }

@WINED3D_BIND_INDEX_BUFFER = common dso_local global i32 0, align 4
@GL_ELEMENT_ARRAY_BUFFER = common dso_local global i32 0, align 4
@WINED3D_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@WINED3D_BIND_UNORDERED_ACCESS = common dso_local global i32 0, align 4
@ARB_TEXTURE_BUFFER_OBJECT = common dso_local global i64 0, align 8
@GL_TEXTURE_BUFFER = common dso_local global i32 0, align 4
@WINED3D_BIND_CONSTANT_BUFFER = common dso_local global i32 0, align 4
@GL_UNIFORM_BUFFER = common dso_local global i32 0, align 4
@WINED3D_BIND_STREAM_OUTPUT = common dso_local global i32 0, align 4
@GL_TRANSFORM_FEEDBACK_BUFFER = common dso_local global i32 0, align 4
@WINED3D_BIND_VERTEX_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unhandled bind flags %#x.\0A\00", align 1
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_gl_info*, i32)* @buffer_type_hint_from_bind_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_type_hint_from_bind_flags(%struct.wined3d_gl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WINED3D_BIND_INDEX_BUFFER, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @GL_ELEMENT_ARRAY_BUFFER, align 4
  store i32 %10, i32* %3, align 4
  br label %55

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @WINED3D_BIND_SHADER_RESOURCE, align 4
  %14 = load i32, i32* @WINED3D_BIND_UNORDERED_ACCESS, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %20 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @ARB_TEXTURE_BUFFER_OBJECT, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @GL_TEXTURE_BUFFER, align 4
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %18, %11
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @WINED3D_BIND_CONSTANT_BUFFER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @GL_UNIFORM_BUFFER, align 4
  store i32 %34, i32* %3, align 4
  br label %55

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @WINED3D_BIND_STREAM_OUTPUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @GL_TRANSFORM_FEEDBACK_BUFFER, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @WINED3D_BIND_VERTEX_BUFFER, align 4
  %45 = load i32, i32* @WINED3D_BIND_INDEX_BUFFER, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %40, %33, %26, %9
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
