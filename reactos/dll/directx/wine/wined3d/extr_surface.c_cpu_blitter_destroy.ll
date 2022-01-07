; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cpu_blitter_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cpu_blitter_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { %struct.TYPE_2__*, %struct.wined3d_blitter* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_blitter*, %struct.wined3d_context*)* }
%struct.wined3d_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_blitter*, %struct.wined3d_context*)* @cpu_blitter_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_blitter_destroy(%struct.wined3d_blitter* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca %struct.wined3d_blitter*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_blitter*, align 8
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %6 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %6, i32 0, i32 1
  %8 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %7, align 8
  store %struct.wined3d_blitter* %8, %struct.wined3d_blitter** %5, align 8
  %9 = icmp ne %struct.wined3d_blitter* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %12 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.wined3d_blitter*, %struct.wined3d_context*)*, i32 (%struct.wined3d_blitter*, %struct.wined3d_context*)** %14, align 8
  %16 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %5, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %18 = call i32 %15(%struct.wined3d_blitter* %16, %struct.wined3d_context* %17)
  br label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %3, align 8
  %21 = call i32 @heap_free(%struct.wined3d_blitter* %20)
  ret void
}

declare dso_local i32 @heap_free(%struct.wined3d_blitter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
