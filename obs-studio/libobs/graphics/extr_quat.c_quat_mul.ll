; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_mul.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { i32 }
%struct.vec3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quat_mul(%struct.quat* %0, %struct.quat* %1, %struct.quat* %2) #0 {
  %4 = alloca %struct.quat*, align 8
  %5 = alloca %struct.quat*, align 8
  %6 = alloca %struct.quat*, align 8
  %7 = alloca %struct.vec3, align 4
  %8 = alloca %struct.vec3, align 4
  %9 = alloca %struct.vec3, align 4
  %10 = alloca %struct.vec3, align 4
  store %struct.quat* %0, %struct.quat** %4, align 8
  store %struct.quat* %1, %struct.quat** %5, align 8
  store %struct.quat* %2, %struct.quat** %6, align 8
  %11 = load %struct.quat*, %struct.quat** %5, align 8
  %12 = call i32 @quat_vec3(%struct.vec3* %7, %struct.quat* %11)
  %13 = load %struct.quat*, %struct.quat** %6, align 8
  %14 = call i32 @quat_vec3(%struct.vec3* %8, %struct.quat* %13)
  %15 = load %struct.quat*, %struct.quat** %5, align 8
  %16 = getelementptr inbounds %struct.quat, %struct.quat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vec3_mulf(%struct.vec3* %9, %struct.vec3* %8, i32 %17)
  %19 = load %struct.quat*, %struct.quat** %6, align 8
  %20 = getelementptr inbounds %struct.quat, %struct.quat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @vec3_mulf(%struct.vec3* %10, %struct.vec3* %7, i32 %21)
  %23 = call i32 @vec3_add(%struct.vec3* %9, %struct.vec3* %9, %struct.vec3* %10)
  %24 = call i32 @vec3_cross(%struct.vec3* %10, %struct.vec3* %7, %struct.vec3* %8)
  %25 = load %struct.quat*, %struct.quat** %4, align 8
  %26 = bitcast %struct.quat* %25 to %struct.vec3*
  %27 = call i32 @vec3_add(%struct.vec3* %26, %struct.vec3* %9, %struct.vec3* %10)
  %28 = load %struct.quat*, %struct.quat** %5, align 8
  %29 = getelementptr inbounds %struct.quat, %struct.quat* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.quat*, %struct.quat** %6, align 8
  %32 = getelementptr inbounds %struct.quat, %struct.quat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = call i32 @vec3_dot(%struct.vec3* %7, %struct.vec3* %8)
  %36 = sub nsw i32 %34, %35
  %37 = load %struct.quat*, %struct.quat** %4, align 8
  %38 = getelementptr inbounds %struct.quat, %struct.quat* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @quat_vec3(%struct.vec3*, %struct.quat*) #1

declare dso_local i32 @vec3_mulf(%struct.vec3*, %struct.vec3*, i32) #1

declare dso_local i32 @vec3_add(%struct.vec3*, %struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @vec3_cross(%struct.vec3*, %struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @vec3_dot(%struct.vec3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
