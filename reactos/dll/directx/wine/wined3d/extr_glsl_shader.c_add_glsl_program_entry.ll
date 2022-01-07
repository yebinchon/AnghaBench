; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_add_glsl_program_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_add_glsl_program_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_glsl_priv = type { i32 }
%struct.glsl_shader_prog_link = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.glsl_program_key = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to insert program entry.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shader_glsl_priv*, %struct.glsl_shader_prog_link*)* @add_glsl_program_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_glsl_program_entry(%struct.shader_glsl_priv* %0, %struct.glsl_shader_prog_link* %1) #0 {
  %3 = alloca %struct.shader_glsl_priv*, align 8
  %4 = alloca %struct.glsl_shader_prog_link*, align 8
  %5 = alloca %struct.glsl_program_key, align 4
  store %struct.shader_glsl_priv* %0, %struct.shader_glsl_priv** %3, align 8
  store %struct.glsl_shader_prog_link* %1, %struct.glsl_shader_prog_link** %4, align 8
  %6 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %7 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.glsl_program_key, %struct.glsl_program_key* %5, i32 0, i32 5
  store i32 %9, i32* %10, align 4
  %11 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %12 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.glsl_program_key, %struct.glsl_program_key* %5, i32 0, i32 4
  store i32 %14, i32* %15, align 4
  %16 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %17 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.glsl_program_key, %struct.glsl_program_key* %5, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %22 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.glsl_program_key, %struct.glsl_program_key* %5, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %27 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.glsl_program_key, %struct.glsl_program_key* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %32 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.glsl_program_key, %struct.glsl_program_key* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.shader_glsl_priv*, %struct.shader_glsl_priv** %3, align 8
  %37 = getelementptr inbounds %struct.shader_glsl_priv, %struct.shader_glsl_priv* %36, i32 0, i32 0
  %38 = load %struct.glsl_shader_prog_link*, %struct.glsl_shader_prog_link** %4, align 8
  %39 = getelementptr inbounds %struct.glsl_shader_prog_link, %struct.glsl_shader_prog_link* %38, i32 0, i32 0
  %40 = call i32 @wine_rb_put(i32* %37, %struct.glsl_program_key* %5, i32* %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @wine_rb_put(i32*, %struct.glsl_program_key*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
