; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....graphicsmath-defs.h_close_float.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_....graphicsmath-defs.h_close_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float, float, float)* @close_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_float(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = fsub float %7, %8
  %10 = call float @llvm.fabs.f32(float %9)
  %11 = load float, float* %6, align 4
  %12 = fcmp ole float %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
