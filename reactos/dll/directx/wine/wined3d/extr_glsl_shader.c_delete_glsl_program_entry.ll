; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_delete_glsl_program_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_delete_glsl_program_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { i32 }
%struct.wined3d_gl_info = type { i32 }
%struct.glsl_shader_prog_link = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_glsl_priv*, %struct.wined3d_gl_info*, %struct.glsl_shader_prog_link*)* @delete_glsl_program_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_glsl_program_entry(%struct.shader_glsl_priv* %0, %struct.wined3d_gl_info* %1, %struct.glsl_shader_prog_link* %2) #0 {
  %4 = alloca %struct.shader_glsl_priv*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.glsl_shader_prog_link*, align 8
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store %struct.glsl_shader_prog_link* %2, %struct.glsl_shader_prog_link** %6, align 8
  %7 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %4, align 8
  %8 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %7, i32 0, i32 0
  %9 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %10 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %9, i32 0, i32 7
  %11 = call i32 @wine_rb_remove(i32* %8, i32* %10)
  %12 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %13 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @glDeleteProgram(i32 %14)
  %16 = call i32 @GL_EXTCALL(i32 %15)
  %17 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %18 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %24 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @list_remove(i32* %25)
  br label %27

27:                                               ; preds = %22, %3
  %28 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %29 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %35 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @list_remove(i32* %36)
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %40 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %46 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = call i32 @list_remove(i32* %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %51 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %57 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = call i32 @list_remove(i32* %58)
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %62 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %68 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = call i32 @list_remove(i32* %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %73 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %79 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = call i32 @list_remove(i32* %80)
  br label %82

82:                                               ; preds = %77, %71
  %83 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %6, align 8
  %84 = call i32 @heap_free(%struct.glsl_shader_prog_link* %83)
  ret void
}

declare dso_local i32 @wine_rb_remove(i32*, i32*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glDeleteProgram(i32) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @heap_free(%struct.glsl_shader_prog_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
