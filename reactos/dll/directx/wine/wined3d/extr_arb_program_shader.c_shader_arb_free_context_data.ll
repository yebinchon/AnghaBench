; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_free_context_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_free_context_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.shader_arb_priv* }
%struct.shader_arb_priv = type { %struct.wined3d_context* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*)* @shader_arb_free_context_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_free_context_data(%struct.wined3d_context* %0) #0 {
  %2 = alloca %struct.wined3d_context*, align 8
  %3 = alloca %struct.shader_arb_priv*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %2, align 8
  %4 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %7, align 8
  store %struct.shader_arb_priv* %8, %struct.shader_arb_priv** %3, align 8
  %9 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %3, align 8
  %10 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %9, i32 0, i32 0
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %10, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %13 = icmp eq %struct.wined3d_context* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.shader_arb_priv*, %struct.shader_arb_priv** %3, align 8
  %16 = getelementptr inbounds %struct.shader_arb_priv, %struct.shader_arb_priv* %15, i32 0, i32 0
  store %struct.wined3d_context* null, %struct.wined3d_context** %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
