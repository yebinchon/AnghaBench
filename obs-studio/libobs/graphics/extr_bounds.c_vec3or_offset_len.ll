; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_vec3or_offset_len.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_bounds.c_vec3or_offset_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bounds = type { i32, i32 }
%struct.vec3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.bounds*, %struct.vec3*)* @vec3or_offset_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @vec3or_offset_len(%struct.bounds* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.bounds*, align 8
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3, align 4
  %6 = alloca %struct.vec3, align 4
  store %struct.bounds* %0, %struct.bounds** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %7 = load %struct.bounds*, %struct.bounds** %3, align 8
  %8 = getelementptr inbounds %struct.bounds, %struct.bounds* %7, i32 0, i32 1
  %9 = load %struct.bounds*, %struct.bounds** %3, align 8
  %10 = getelementptr inbounds %struct.bounds, %struct.bounds* %9, i32 0, i32 0
  %11 = call i32 @vec3_sub(%struct.vec3* %5, i32* %8, i32* %10)
  %12 = load %struct.vec3*, %struct.vec3** %4, align 8
  %13 = call i32 @vec3_abs(%struct.vec3* %6, %struct.vec3* %12)
  %14 = call float @vec3_dot(%struct.vec3* %5, %struct.vec3* %6)
  ret float %14
}

declare dso_local i32 @vec3_sub(%struct.vec3*, i32*, i32*) #1

declare dso_local i32 @vec3_abs(%struct.vec3*, %struct.vec3*) #1

declare dso_local float @vec3_dot(%struct.vec3*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
