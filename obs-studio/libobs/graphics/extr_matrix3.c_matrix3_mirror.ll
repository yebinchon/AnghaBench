; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_mirror.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { i32, i32, i32, i32 }
%struct.plane = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix3_mirror(%struct.matrix3* %0, %struct.matrix3* %1, %struct.plane* %2) #0 {
  %4 = alloca %struct.matrix3*, align 8
  %5 = alloca %struct.matrix3*, align 8
  %6 = alloca %struct.plane*, align 8
  store %struct.matrix3* %0, %struct.matrix3** %4, align 8
  store %struct.matrix3* %1, %struct.matrix3** %5, align 8
  store %struct.plane* %2, %struct.plane** %6, align 8
  %7 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %8 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 3
  %9 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %10 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %9, i32 0, i32 3
  %11 = load %struct.plane*, %struct.plane** %6, align 8
  %12 = getelementptr inbounds %struct.plane, %struct.plane* %11, i32 0, i32 0
  %13 = call i32 @vec3_mirrorv(i32* %8, i32* %10, i32* %12)
  %14 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %15 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %14, i32 0, i32 2
  %16 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %17 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %16, i32 0, i32 2
  %18 = load %struct.plane*, %struct.plane** %6, align 8
  %19 = getelementptr inbounds %struct.plane, %struct.plane* %18, i32 0, i32 0
  %20 = call i32 @vec3_mirrorv(i32* %15, i32* %17, i32* %19)
  %21 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %22 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %21, i32 0, i32 1
  %23 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %24 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %23, i32 0, i32 1
  %25 = load %struct.plane*, %struct.plane** %6, align 8
  %26 = getelementptr inbounds %struct.plane, %struct.plane* %25, i32 0, i32 0
  %27 = call i32 @vec3_mirrorv(i32* %22, i32* %24, i32* %26)
  %28 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %29 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %28, i32 0, i32 0
  %30 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %31 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %30, i32 0, i32 0
  %32 = load %struct.plane*, %struct.plane** %6, align 8
  %33 = call i32 @vec3_mirror(i32* %29, i32* %31, %struct.plane* %32)
  ret void
}

declare dso_local i32 @vec3_mirrorv(i32*, i32*, i32*) #1

declare dso_local i32 @vec3_mirror(i32*, i32*, %struct.plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
