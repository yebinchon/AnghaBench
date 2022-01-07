; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_clear_unordered_access_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_clear_unordered_access_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { i32 }
%struct.wined3d_cs_clear_unordered_access_view = type { i32, %struct.wined3d_unordered_access_view* }
%struct.wined3d_unordered_access_view = type { i32 }
%struct.wined3d_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_clear_unordered_access_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_clear_unordered_access_view(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_clear_unordered_access_view*, align 8
  %6 = alloca %struct.wined3d_unordered_access_view*, align 8
  %7 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wined3d_cs_clear_unordered_access_view*
  store %struct.wined3d_cs_clear_unordered_access_view* %9, %struct.wined3d_cs_clear_unordered_access_view** %5, align 8
  %10 = load %struct.wined3d_cs_clear_unordered_access_view*, %struct.wined3d_cs_clear_unordered_access_view** %5, align 8
  %11 = getelementptr inbounds %struct.wined3d_cs_clear_unordered_access_view, %struct.wined3d_cs_clear_unordered_access_view* %10, i32 0, i32 1
  %12 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %11, align 8
  store %struct.wined3d_unordered_access_view* %12, %struct.wined3d_unordered_access_view** %6, align 8
  %13 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %14 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wined3d_context* @context_acquire(i32 %15, i32* null, i32 0)
  store %struct.wined3d_context* %16, %struct.wined3d_context** %7, align 8
  %17 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %6, align 8
  %18 = load %struct.wined3d_cs_clear_unordered_access_view*, %struct.wined3d_cs_clear_unordered_access_view** %5, align 8
  %19 = getelementptr inbounds %struct.wined3d_cs_clear_unordered_access_view, %struct.wined3d_cs_clear_unordered_access_view* %18, i32 0, i32 0
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %21 = call i32 @wined3d_unordered_access_view_clear_uint(%struct.wined3d_unordered_access_view* %17, i32* %19, %struct.wined3d_context* %20)
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %23 = call i32 @context_release(%struct.wined3d_context* %22)
  %24 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %6, align 8
  %25 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wined3d_resource_release(i32 %26)
  ret void
}

declare dso_local %struct.wined3d_context* @context_acquire(i32, i32*, i32) #1

declare dso_local i32 @wined3d_unordered_access_view_clear_uint(%struct.wined3d_unordered_access_view*, i32*, %struct.wined3d_context*) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

declare dso_local i32 @wined3d_resource_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
