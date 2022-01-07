; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_get_center.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_bounds_get_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { i32 }
%struct.bounds = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bounds_get_center(%struct.vec3* %0, %struct.bounds* %1) #0 {
  %3 = alloca %struct.vec3*, align 8
  %4 = alloca %struct.bounds*, align 8
  store %struct.vec3* %0, %struct.vec3** %3, align 8
  store %struct.bounds* %1, %struct.bounds** %4, align 8
  %5 = load %struct.vec3*, %struct.vec3** %3, align 8
  %6 = load %struct.bounds*, %struct.bounds** %4, align 8
  %7 = getelementptr inbounds %struct.bounds, %struct.bounds* %6, i32 0, i32 1
  %8 = load %struct.bounds*, %struct.bounds** %4, align 8
  %9 = getelementptr inbounds %struct.bounds, %struct.bounds* %8, i32 0, i32 0
  %10 = call i32 @vec3_sub(%struct.vec3* %5, i32* %7, i32* %9)
  %11 = load %struct.vec3*, %struct.vec3** %3, align 8
  %12 = load %struct.vec3*, %struct.vec3** %3, align 8
  %13 = call i32 @vec3_mulf(%struct.vec3* %11, %struct.vec3* %12, float 5.000000e-01)
  %14 = load %struct.vec3*, %struct.vec3** %3, align 8
  %15 = load %struct.vec3*, %struct.vec3** %3, align 8
  %16 = load %struct.bounds*, %struct.bounds** %4, align 8
  %17 = getelementptr inbounds %struct.bounds, %struct.bounds* %16, i32 0, i32 0
  %18 = call i32 @vec3_add(%struct.vec3* %14, %struct.vec3* %15, i32* %17)
  ret void
}

declare dso_local i32 @vec3_sub(%struct.vec3*, i32*, i32*) #1

declare dso_local i32 @vec3_mulf(%struct.vec3*, %struct.vec3*, float) #1

declare dso_local i32 @vec3_add(%struct.vec3*, %struct.vec3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
