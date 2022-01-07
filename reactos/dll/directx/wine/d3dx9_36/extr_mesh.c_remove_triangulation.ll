; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_remove_triangulation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_remove_triangulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.triangulation_array = type { i64, i32* }
%struct.triangulation = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.triangulation_array*, %struct.triangulation*)* @remove_triangulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_triangulation(%struct.triangulation_array* %0, %struct.triangulation* %1) #0 {
  %3 = alloca %struct.triangulation_array*, align 8
  %4 = alloca %struct.triangulation*, align 8
  store %struct.triangulation_array* %0, %struct.triangulation_array** %3, align 8
  store %struct.triangulation* %1, %struct.triangulation** %4, align 8
  %5 = call i32 (...) @GetProcessHeap()
  %6 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %7 = getelementptr inbounds %struct.triangulation, %struct.triangulation* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @HeapFree(i32 %5, i32 0, i32 %9)
  %11 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %12 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %13 = getelementptr inbounds %struct.triangulation, %struct.triangulation* %12, i64 1
  %14 = load %struct.triangulation_array*, %struct.triangulation_array** %3, align 8
  %15 = getelementptr inbounds %struct.triangulation_array, %struct.triangulation_array* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.triangulation_array*, %struct.triangulation_array** %3, align 8
  %18 = getelementptr inbounds %struct.triangulation_array, %struct.triangulation_array* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = bitcast i32* %20 to i8*
  %22 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %23 = getelementptr inbounds %struct.triangulation, %struct.triangulation* %22, i64 1
  %24 = bitcast %struct.triangulation* %23 to i8*
  %25 = ptrtoint i8* %21 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @MoveMemory(%struct.triangulation* %11, %struct.triangulation* %13, i32 %28)
  %30 = load %struct.triangulation_array*, %struct.triangulation_array** %3, align 8
  %31 = getelementptr inbounds %struct.triangulation_array, %struct.triangulation_array* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %31, align 8
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @MoveMemory(%struct.triangulation*, %struct.triangulation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
