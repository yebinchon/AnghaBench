; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_transform_val.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_transform_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { i32, i32 }
%struct.matrix4 = type { i32 }
%struct.vec3 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec2*, %struct.matrix4*)* @transform_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_val(%struct.vec2* %0, %struct.matrix4* %1) #0 {
  %3 = alloca %struct.vec2*, align 8
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca %struct.vec3, align 4
  store %struct.vec2* %0, %struct.vec2** %3, align 8
  store %struct.matrix4* %1, %struct.matrix4** %4, align 8
  %6 = load %struct.vec2*, %struct.vec2** %3, align 8
  %7 = getelementptr inbounds %struct.vec2, %struct.vec2* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vec2*, %struct.vec2** %3, align 8
  %10 = getelementptr inbounds %struct.vec2, %struct.vec2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vec3_set(%struct.vec3* %5, i32 %8, i32 %11, float 0.000000e+00)
  %13 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %14 = call i32 @vec3_transform(%struct.vec3* %5, %struct.vec3* %5, %struct.matrix4* %13)
  %15 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vec2*, %struct.vec2** %3, align 8
  %18 = getelementptr inbounds %struct.vec2, %struct.vec2* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vec2*, %struct.vec2** %3, align 8
  %22 = getelementptr inbounds %struct.vec2, %struct.vec2* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

declare dso_local i32 @vec3_set(%struct.vec3*, i32, i32, float) #1

declare dso_local i32 @vec3_transform(%struct.vec3*, %struct.vec3*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
