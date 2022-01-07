; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_maxf.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_maxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec2*, %struct.vec2*, float)* @vec2_maxf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec2_maxf(%struct.vec2* %0, %struct.vec2* %1, float %2) #0 {
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca %struct.vec2*, align 8
  %6 = alloca float, align 4
  store %struct.vec2* %0, %struct.vec2** %4, align 8
  store %struct.vec2* %1, %struct.vec2** %5, align 8
  store float %2, float* %6, align 4
  %7 = load %struct.vec2*, %struct.vec2** %5, align 8
  %8 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp ogt float %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load float, float* %6, align 4
  %14 = load %struct.vec2*, %struct.vec2** %4, align 8
  %15 = getelementptr inbounds %struct.vec2, %struct.vec2* %14, i32 0, i32 0
  store float %13, float* %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.vec2*, %struct.vec2** %5, align 8
  %18 = getelementptr inbounds %struct.vec2, %struct.vec2* %17, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = load float, float* %6, align 4
  %21 = fcmp ogt float %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load float, float* %6, align 4
  %24 = load %struct.vec2*, %struct.vec2** %4, align 8
  %25 = getelementptr inbounds %struct.vec2, %struct.vec2* %24, i32 0, i32 1
  store float %23, float* %25, align 4
  br label %26

26:                                               ; preds = %22, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
