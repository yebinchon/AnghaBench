; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_restore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_surface = type { %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_restore(%struct.wined3d_context* %0, %struct.wined3d_surface* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_surface*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_surface* %1, %struct.wined3d_surface** %4, align 8
  %5 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %19 = call i64 @surface_get_sub_resource_idx(%struct.wined3d_surface* %18)
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %13, %2
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %23 = call i32 @context_release(%struct.wined3d_context* %22)
  %24 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %31 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.wined3d_surface*, %struct.wined3d_surface** %4, align 8
  %34 = call i64 @surface_get_sub_resource_idx(%struct.wined3d_surface* %33)
  %35 = call %struct.wined3d_context* @context_acquire(i32 %29, %struct.TYPE_6__* %32, i64 %34)
  store %struct.wined3d_context* %35, %struct.wined3d_context** %3, align 8
  br label %36

36:                                               ; preds = %21, %13
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %38 = call i32 @context_release(%struct.wined3d_context* %37)
  ret void
}

declare dso_local i64 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local %struct.wined3d_context* @context_acquire(i32, %struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
