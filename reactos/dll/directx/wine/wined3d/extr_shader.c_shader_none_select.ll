; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_select.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_none_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { i32 }
%struct.shader_none_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_gl_info*, i32)* }
%struct.TYPE_3__ = type { i32 (%struct.wined3d_gl_info*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wined3d_context*, %struct.wined3d_state*)* @shader_none_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_none_select(i8* %0, %struct.wined3d_context* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.shader_none_priv*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.shader_none_priv*
  store %struct.shader_none_priv* %13, %struct.shader_none_priv** %8, align 8
  %14 = load %struct.shader_none_priv*, %struct.shader_none_priv** %8, align 8
  %15 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %17, align 8
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %20 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %21 = call i32 @use_vs(%struct.wined3d_state* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 %18(%struct.wined3d_gl_info* %19, i32 %24)
  %26 = load %struct.shader_none_priv*, %struct.shader_none_priv** %8, align 8
  %27 = getelementptr inbounds %struct.shader_none_priv, %struct.shader_none_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.wined3d_gl_info*, i32)*, i32 (%struct.wined3d_gl_info*, i32)** %29, align 8
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %32 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %33 = call i32 @use_ps(%struct.wined3d_state* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 %30(%struct.wined3d_gl_info* %31, i32 %36)
  ret void
}

declare dso_local i32 @use_vs(%struct.wined3d_state*) #1

declare dso_local i32 @use_ps(%struct.wined3d_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
