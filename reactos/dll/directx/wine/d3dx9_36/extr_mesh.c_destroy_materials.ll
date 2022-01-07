; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_destroy_materials.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_destroy_materials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_data = type { i64, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mesh_data*)* @destroy_materials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_materials(%struct.mesh_data* %0) #0 {
  %2 = alloca %struct.mesh_data*, align 8
  %3 = alloca i64, align 8
  store %struct.mesh_data* %0, %struct.mesh_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.mesh_data*, %struct.mesh_data** %2, align 8
  %7 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = call i32 (...) @GetProcessHeap()
  %12 = load %struct.mesh_data*, %struct.mesh_data** %2, align 8
  %13 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @HeapFree(i32 %11, i32 0, %struct.TYPE_2__* %18)
  br label %20

20:                                               ; preds = %10
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %4

23:                                               ; preds = %4
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load %struct.mesh_data*, %struct.mesh_data** %2, align 8
  %26 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @HeapFree(i32 %24, i32 0, %struct.TYPE_2__* %27)
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.mesh_data*, %struct.mesh_data** %2, align 8
  %31 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @HeapFree(i32 %29, i32 0, %struct.TYPE_2__* %32)
  %34 = load %struct.mesh_data*, %struct.mesh_data** %2, align 8
  %35 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.mesh_data*, %struct.mesh_data** %2, align 8
  %37 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %36, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.mesh_data*, %struct.mesh_data** %2, align 8
  %39 = getelementptr inbounds %struct.mesh_data, %struct.mesh_data* %38, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %39, align 8
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
