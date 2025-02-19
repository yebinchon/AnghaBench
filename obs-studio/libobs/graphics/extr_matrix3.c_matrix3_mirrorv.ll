; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_mirrorv.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_mirrorv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { i32, i32, i32, i32 }
%struct.vec3 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix3_mirrorv(%struct.matrix3* %0, %struct.matrix3* %1, %struct.vec3* %2) #0 {
  %4 = alloca %struct.matrix3*, align 8
  %5 = alloca %struct.matrix3*, align 8
  %6 = alloca %struct.vec3*, align 8
  store %struct.matrix3* %0, %struct.matrix3** %4, align 8
  store %struct.matrix3* %1, %struct.matrix3** %5, align 8
  store %struct.vec3* %2, %struct.vec3** %6, align 8
  %7 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %8 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 3
  %9 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %10 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %9, i32 0, i32 3
  %11 = load %struct.vec3*, %struct.vec3** %6, align 8
  %12 = call i32 @vec3_mirrorv(i32* %8, i32* %10, %struct.vec3* %11)
  %13 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %14 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %13, i32 0, i32 2
  %15 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %16 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %15, i32 0, i32 2
  %17 = load %struct.vec3*, %struct.vec3** %6, align 8
  %18 = call i32 @vec3_mirrorv(i32* %14, i32* %16, %struct.vec3* %17)
  %19 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %20 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %19, i32 0, i32 1
  %21 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %22 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %21, i32 0, i32 1
  %23 = load %struct.vec3*, %struct.vec3** %6, align 8
  %24 = call i32 @vec3_mirrorv(i32* %20, i32* %22, %struct.vec3* %23)
  %25 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %26 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %25, i32 0, i32 0
  %27 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %28 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %27, i32 0, i32 0
  %29 = load %struct.vec3*, %struct.vec3** %6, align 8
  %30 = call i32 @vec3_mirrorv(i32* %26, i32* %28, %struct.vec3* %29)
  ret void
}

declare dso_local i32 @vec3_mirrorv(i32*, i32*, %struct.vec3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
