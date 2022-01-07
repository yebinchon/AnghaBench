; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.c_plane_transform.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.c_plane_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plane = type { %struct.vec3, i64 }
%struct.vec3 = type { i32 }
%struct.matrix4 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plane_transform(%struct.plane* %0, %struct.plane* %1, %struct.matrix4* %2) #0 {
  %4 = alloca %struct.plane*, align 8
  %5 = alloca %struct.plane*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca %struct.vec3, align 4
  store %struct.plane* %0, %struct.plane** %4, align 8
  store %struct.plane* %1, %struct.plane** %5, align 8
  store %struct.matrix4* %2, %struct.matrix4** %6, align 8
  %8 = call i32 @vec3_zero(%struct.vec3* %7)
  %9 = load %struct.plane*, %struct.plane** %4, align 8
  %10 = getelementptr inbounds %struct.plane, %struct.plane* %9, i32 0, i32 0
  %11 = load %struct.plane*, %struct.plane** %5, align 8
  %12 = getelementptr inbounds %struct.plane, %struct.plane* %11, i32 0, i32 0
  %13 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %14 = call i32 @vec3_transform(%struct.vec3* %10, %struct.vec3* %12, %struct.matrix4* %13)
  %15 = load %struct.plane*, %struct.plane** %4, align 8
  %16 = getelementptr inbounds %struct.plane, %struct.plane* %15, i32 0, i32 0
  %17 = load %struct.plane*, %struct.plane** %4, align 8
  %18 = getelementptr inbounds %struct.plane, %struct.plane* %17, i32 0, i32 0
  %19 = call i32 @vec3_norm(%struct.vec3* %16, %struct.vec3* %18)
  %20 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %21 = call i32 @vec3_transform(%struct.vec3* %7, %struct.vec3* %7, %struct.matrix4* %20)
  %22 = load %struct.plane*, %struct.plane** %5, align 8
  %23 = getelementptr inbounds %struct.plane, %struct.plane* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.plane*, %struct.plane** %4, align 8
  %26 = getelementptr inbounds %struct.plane, %struct.plane* %25, i32 0, i32 0
  %27 = call i64 @vec3_dot(%struct.vec3* %26, %struct.vec3* %7)
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.plane*, %struct.plane** %4, align 8
  %30 = getelementptr inbounds %struct.plane, %struct.plane* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  ret void
}

declare dso_local i32 @vec3_zero(%struct.vec3*) #1

declare dso_local i32 @vec3_transform(%struct.vec3*, %struct.vec3*, %struct.matrix4*) #1

declare dso_local i32 @vec3_norm(%struct.vec3*, %struct.vec3*) #1

declare dso_local i64 @vec3_dot(%struct.vec3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
