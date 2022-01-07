; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_add_points.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_add_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point2d = type { i32 }
%struct.outline = type { i32, %struct.point2d* }
%struct.dynamic_array = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.point2d* (%struct.outline*, i32)* @add_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.point2d* @add_points(%struct.outline* %0, i32 %1) #0 {
  %3 = alloca %struct.point2d*, align 8
  %4 = alloca %struct.outline*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.point2d*, align 8
  store %struct.outline* %0, %struct.outline** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.outline*, %struct.outline** %4, align 8
  %8 = bitcast %struct.outline* %7 to %struct.dynamic_array*
  %9 = load %struct.outline*, %struct.outline** %4, align 8
  %10 = getelementptr inbounds %struct.outline, %struct.outline* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %11, %12
  %14 = call i32 @reserve(%struct.dynamic_array* %8, i32 %13, i32 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.point2d* null, %struct.point2d** %3, align 8
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.outline*, %struct.outline** %4, align 8
  %19 = getelementptr inbounds %struct.outline, %struct.outline* %18, i32 0, i32 1
  %20 = load %struct.point2d*, %struct.point2d** %19, align 8
  %21 = load %struct.outline*, %struct.outline** %4, align 8
  %22 = getelementptr inbounds %struct.outline, %struct.outline* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.point2d, %struct.point2d* %20, i64 %24
  store %struct.point2d* %25, %struct.point2d** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.outline*, %struct.outline** %4, align 8
  %28 = getelementptr inbounds %struct.outline, %struct.outline* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.point2d*, %struct.point2d** %6, align 8
  store %struct.point2d* %31, %struct.point2d** %3, align 8
  br label %32

32:                                               ; preds = %17, %16
  %33 = load %struct.point2d*, %struct.point2d** %3, align 8
  ret %struct.point2d* %33
}

declare dso_local i32 @reserve(%struct.dynamic_array*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
