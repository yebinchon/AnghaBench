; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.h_plane_close.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_plane.h_plane_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plane = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.plane*, %struct.plane*, float)* @plane_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plane_close(%struct.plane* %0, %struct.plane* %1, float %2) #0 {
  %4 = alloca %struct.plane*, align 8
  %5 = alloca %struct.plane*, align 8
  %6 = alloca float, align 4
  store %struct.plane* %0, %struct.plane** %4, align 8
  store %struct.plane* %1, %struct.plane** %5, align 8
  store float %2, float* %6, align 4
  %7 = load %struct.plane*, %struct.plane** %4, align 8
  %8 = getelementptr inbounds %struct.plane, %struct.plane* %7, i32 0, i32 1
  %9 = load %struct.plane*, %struct.plane** %5, align 8
  %10 = getelementptr inbounds %struct.plane, %struct.plane* %9, i32 0, i32 1
  %11 = load float, float* %6, align 4
  %12 = call i64 @vec3_close(i32* %8, i32* %10, float %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.plane*, %struct.plane** %4, align 8
  %16 = getelementptr inbounds %struct.plane, %struct.plane* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.plane*, %struct.plane** %5, align 8
  %19 = getelementptr inbounds %struct.plane, %struct.plane* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load float, float* %6, align 4
  %22 = call i64 @close_float(i32 %17, i32 %20, float %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %14, %3
  %25 = phi i1 [ false, %3 ], [ %23, %14 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @vec3_close(i32*, i32*, float) #1

declare dso_local i64 @close_float(i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
