; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_addf.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_addf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec2*, %struct.vec2*, float)* @vec2_addf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec2_addf(%struct.vec2* %0, %struct.vec2* %1, float %2) #0 {
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca %struct.vec2*, align 8
  %6 = alloca float, align 4
  store %struct.vec2* %0, %struct.vec2** %4, align 8
  store %struct.vec2* %1, %struct.vec2** %5, align 8
  store float %2, float* %6, align 4
  %7 = load %struct.vec2*, %struct.vec2** %4, align 8
  %8 = load %struct.vec2*, %struct.vec2** %5, align 8
  %9 = getelementptr inbounds %struct.vec2, %struct.vec2* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sitofp i64 %10 to float
  %12 = load float, float* %6, align 4
  %13 = fadd float %11, %12
  %14 = fptosi float %13 to i64
  %15 = load %struct.vec2*, %struct.vec2** %5, align 8
  %16 = getelementptr inbounds %struct.vec2, %struct.vec2* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to float
  %19 = load float, float* %6, align 4
  %20 = fadd float %18, %19
  %21 = fptosi float %20 to i64
  %22 = call i32 @vec2_set(%struct.vec2* %7, i64 %14, i64 %21)
  ret void
}

declare dso_local i32 @vec2_set(%struct.vec2*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
