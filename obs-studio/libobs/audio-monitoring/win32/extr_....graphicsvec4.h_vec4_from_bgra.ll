; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....graphicsvec4.h_vec4_from_bgra.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_....graphicsvec4.h_vec4_from_bgra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { float, float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec4*, i32)* @vec4_from_bgra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec4_from_bgra(%struct.vec4* %0, i32 %1) #0 {
  %3 = alloca %struct.vec4*, align 8
  %4 = alloca i32, align 4
  store %struct.vec4* %0, %struct.vec4** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = sitofp i32 %6 to double
  %8 = fmul double %7, 0x3F70101010101010
  %9 = fptrunc double %8 to float
  %10 = load %struct.vec4*, %struct.vec4** %3, align 8
  %11 = getelementptr inbounds %struct.vec4, %struct.vec4* %10, i32 0, i32 0
  store float %9, float* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  %16 = sitofp i32 %15 to double
  %17 = fmul double %16, 0x3F70101010101010
  %18 = fptrunc double %17 to float
  %19 = load %struct.vec4*, %struct.vec4** %3, align 8
  %20 = getelementptr inbounds %struct.vec4, %struct.vec4* %19, i32 0, i32 1
  store float %18, float* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 255
  %25 = sitofp i32 %24 to double
  %26 = fmul double %25, 0x3F70101010101010
  %27 = fptrunc double %26 to float
  %28 = load %struct.vec4*, %struct.vec4** %3, align 8
  %29 = getelementptr inbounds %struct.vec4, %struct.vec4* %28, i32 0, i32 2
  store float %27, float* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 255
  %34 = sitofp i32 %33 to double
  %35 = fmul double %34, 0x3F70101010101010
  %36 = fptrunc double %35 to float
  %37 = load %struct.vec4*, %struct.vec4** %3, align 8
  %38 = getelementptr inbounds %struct.vec4, %struct.vec4* %37, i32 0, i32 3
  store float %36, float* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
