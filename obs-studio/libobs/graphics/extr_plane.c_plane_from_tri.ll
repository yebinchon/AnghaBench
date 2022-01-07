; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.c_plane_from_tri.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.c_plane_from_tri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plane = type { %struct.vec3, i32 }
%struct.vec3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plane_from_tri(%struct.plane* %0, %struct.vec3* %1, %struct.vec3* %2, %struct.vec3* %3) #0 {
  %5 = alloca %struct.plane*, align 8
  %6 = alloca %struct.vec3*, align 8
  %7 = alloca %struct.vec3*, align 8
  %8 = alloca %struct.vec3*, align 8
  %9 = alloca %struct.vec3, align 4
  store %struct.plane* %0, %struct.plane** %5, align 8
  store %struct.vec3* %1, %struct.vec3** %6, align 8
  store %struct.vec3* %2, %struct.vec3** %7, align 8
  store %struct.vec3* %3, %struct.vec3** %8, align 8
  %10 = load %struct.vec3*, %struct.vec3** %7, align 8
  %11 = load %struct.vec3*, %struct.vec3** %6, align 8
  %12 = call i32 @vec3_sub(%struct.vec3* %9, %struct.vec3* %10, %struct.vec3* %11)
  %13 = load %struct.plane*, %struct.plane** %5, align 8
  %14 = getelementptr inbounds %struct.plane, %struct.plane* %13, i32 0, i32 0
  %15 = load %struct.vec3*, %struct.vec3** %8, align 8
  %16 = load %struct.vec3*, %struct.vec3** %6, align 8
  %17 = call i32 @vec3_sub(%struct.vec3* %14, %struct.vec3* %15, %struct.vec3* %16)
  %18 = load %struct.plane*, %struct.plane** %5, align 8
  %19 = getelementptr inbounds %struct.plane, %struct.plane* %18, i32 0, i32 0
  %20 = load %struct.plane*, %struct.plane** %5, align 8
  %21 = getelementptr inbounds %struct.plane, %struct.plane* %20, i32 0, i32 0
  %22 = call i32 @vec3_cross(%struct.vec3* %19, %struct.vec3* %9, %struct.vec3* %21)
  %23 = load %struct.plane*, %struct.plane** %5, align 8
  %24 = getelementptr inbounds %struct.plane, %struct.plane* %23, i32 0, i32 0
  %25 = load %struct.plane*, %struct.plane** %5, align 8
  %26 = getelementptr inbounds %struct.plane, %struct.plane* %25, i32 0, i32 0
  %27 = call i32 @vec3_norm(%struct.vec3* %24, %struct.vec3* %26)
  %28 = load %struct.vec3*, %struct.vec3** %6, align 8
  %29 = load %struct.plane*, %struct.plane** %5, align 8
  %30 = getelementptr inbounds %struct.plane, %struct.plane* %29, i32 0, i32 0
  %31 = call i32 @vec3_dot(%struct.vec3* %28, %struct.vec3* %30)
  %32 = load %struct.plane*, %struct.plane** %5, align 8
  %33 = getelementptr inbounds %struct.plane, %struct.plane* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @vec3_sub(%struct.vec3*, %struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @vec3_cross(%struct.vec3*, %struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @vec3_norm(%struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @vec3_dot(%struct.vec3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
