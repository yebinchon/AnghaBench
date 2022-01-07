; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_add_triangulation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_add_triangulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.triangulation = type { i32 }
%struct.triangulation_array = type { i64, %struct.triangulation* }
%struct.dynamic_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.triangulation* (%struct.triangulation_array*)* @add_triangulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.triangulation* @add_triangulation(%struct.triangulation_array* %0) #0 {
  %2 = alloca %struct.triangulation*, align 8
  %3 = alloca %struct.triangulation_array*, align 8
  %4 = alloca %struct.triangulation*, align 8
  store %struct.triangulation_array* %0, %struct.triangulation_array** %3, align 8
  %5 = load %struct.triangulation_array*, %struct.triangulation_array** %3, align 8
  %6 = bitcast %struct.triangulation_array* %5 to %struct.dynamic_array*
  %7 = load %struct.triangulation_array*, %struct.triangulation_array** %3, align 8
  %8 = getelementptr inbounds %struct.triangulation_array, %struct.triangulation_array* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @reserve(%struct.dynamic_array* %6, i64 %10, i32 4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.triangulation* null, %struct.triangulation** %2, align 8
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.triangulation_array*, %struct.triangulation_array** %3, align 8
  %16 = getelementptr inbounds %struct.triangulation_array, %struct.triangulation_array* %15, i32 0, i32 1
  %17 = load %struct.triangulation*, %struct.triangulation** %16, align 8
  %18 = load %struct.triangulation_array*, %struct.triangulation_array** %3, align 8
  %19 = getelementptr inbounds %struct.triangulation_array, %struct.triangulation_array* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.triangulation, %struct.triangulation* %17, i64 %20
  store %struct.triangulation* %22, %struct.triangulation** %4, align 8
  %23 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  %24 = call i32 @ZeroMemory(%struct.triangulation* %23, i32 4)
  %25 = load %struct.triangulation*, %struct.triangulation** %4, align 8
  store %struct.triangulation* %25, %struct.triangulation** %2, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load %struct.triangulation*, %struct.triangulation** %2, align 8
  ret %struct.triangulation* %27
}

declare dso_local i32 @reserve(%struct.dynamic_array*, i64, i32) #1

declare dso_local i32 @ZeroMemory(%struct.triangulation*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
