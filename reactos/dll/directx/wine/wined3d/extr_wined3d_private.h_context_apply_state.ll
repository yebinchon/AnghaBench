; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_context_apply_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_context_apply_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.StateEntry* }
%struct.StateEntry = type { i64, i32 (%struct.wined3d_context*, %struct.wined3d_state*, i64)* }
%struct.wined3d_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_state*, i64)* @context_apply_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_apply_state(%struct.wined3d_context* %0, %struct.wined3d_state* %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.StateEntry*, align 8
  %8 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load %struct.StateEntry*, %struct.StateEntry** %10, align 8
  store %struct.StateEntry* %11, %struct.StateEntry** %7, align 8
  %12 = load %struct.StateEntry*, %struct.StateEntry** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %12, i64 %13
  %15 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.StateEntry*, %struct.StateEntry** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %17, i64 %18
  %20 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %19, i32 0, i32 1
  %21 = load i32 (%struct.wined3d_context*, %struct.wined3d_state*, i64)*, i32 (%struct.wined3d_context*, %struct.wined3d_state*, i64)** %20, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %23 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 %21(%struct.wined3d_context* %22, %struct.wined3d_state* %23, i64 %24)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
