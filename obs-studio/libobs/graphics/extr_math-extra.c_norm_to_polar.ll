; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_norm_to_polar.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_math-extra.c_norm_to_polar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { i32, i32 }
%struct.vec3 = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @norm_to_polar(%struct.vec2* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.vec2*, align 8
  %4 = alloca %struct.vec3*, align 8
  store %struct.vec2* %0, %struct.vec2** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %5 = load %struct.vec3*, %struct.vec3** %4, align 8
  %6 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vec3*, %struct.vec3** %4, align 8
  %9 = getelementptr inbounds %struct.vec3, %struct.vec3* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @atan2f(i32 %7, i32 %10)
  %12 = load %struct.vec2*, %struct.vec2** %3, align 8
  %13 = getelementptr inbounds %struct.vec2, %struct.vec2* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.vec3*, %struct.vec3** %4, align 8
  %15 = getelementptr inbounds %struct.vec3, %struct.vec3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @asinf(i32 %16)
  %18 = load %struct.vec2*, %struct.vec2** %3, align 8
  %19 = getelementptr inbounds %struct.vec2, %struct.vec2* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i32 @atan2f(i32, i32) #1

declare dso_local i32 @asinf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
