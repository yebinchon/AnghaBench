; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.c_plane_transform3x4.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.c_plane_transform3x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plane = type { %struct.vec3, i64 }
%struct.vec3 = type { i32 }
%struct.matrix3 = type { %struct.vec3 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plane_transform3x4(%struct.plane* %0, %struct.plane* %1, %struct.matrix3* %2) #0 {
  %4 = alloca %struct.plane*, align 8
  %5 = alloca %struct.plane*, align 8
  %6 = alloca %struct.matrix3*, align 8
  %7 = alloca %struct.vec3, align 4
  store %struct.plane* %0, %struct.plane** %4, align 8
  store %struct.plane* %1, %struct.plane** %5, align 8
  store %struct.matrix3* %2, %struct.matrix3** %6, align 8
  %8 = load %struct.plane*, %struct.plane** %4, align 8
  %9 = getelementptr inbounds %struct.plane, %struct.plane* %8, i32 0, i32 0
  %10 = load %struct.plane*, %struct.plane** %5, align 8
  %11 = getelementptr inbounds %struct.plane, %struct.plane* %10, i32 0, i32 0
  %12 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %13 = call i32 @vec3_transform3x4(%struct.vec3* %9, %struct.vec3* %11, %struct.matrix3* %12)
  %14 = load %struct.plane*, %struct.plane** %4, align 8
  %15 = getelementptr inbounds %struct.plane, %struct.plane* %14, i32 0, i32 0
  %16 = load %struct.plane*, %struct.plane** %4, align 8
  %17 = getelementptr inbounds %struct.plane, %struct.plane* %16, i32 0, i32 0
  %18 = call i32 @vec3_norm(%struct.vec3* %15, %struct.vec3* %17)
  %19 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %20 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %19, i32 0, i32 0
  %21 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %22 = call i32 @vec3_transform3x4(%struct.vec3* %7, %struct.vec3* %20, %struct.matrix3* %21)
  %23 = load %struct.plane*, %struct.plane** %5, align 8
  %24 = getelementptr inbounds %struct.plane, %struct.plane* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.plane*, %struct.plane** %4, align 8
  %27 = getelementptr inbounds %struct.plane, %struct.plane* %26, i32 0, i32 0
  %28 = call i64 @vec3_dot(%struct.vec3* %27, %struct.vec3* %7)
  %29 = sub nsw i64 %25, %28
  %30 = load %struct.plane*, %struct.plane** %4, align 8
  %31 = getelementptr inbounds %struct.plane, %struct.plane* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  ret void
}

declare dso_local i32 @vec3_transform3x4(%struct.vec3*, %struct.vec3*, %struct.matrix3*) #1

declare dso_local i32 @vec3_norm(%struct.vec3*, %struct.vec3*) #1

declare dso_local i64 @vec3_dot(%struct.vec3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
