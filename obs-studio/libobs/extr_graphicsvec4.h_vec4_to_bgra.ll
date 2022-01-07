; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec4.h_vec4_to_bgra.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_graphicsvec4.h_vec4_to_bgra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec4 = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vec4*)* @vec4_to_bgra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vec4_to_bgra(%struct.vec4* %0) #0 {
  %2 = alloca %struct.vec4*, align 8
  %3 = alloca i32, align 4
  store %struct.vec4* %0, %struct.vec4** %2, align 8
  %4 = load %struct.vec4*, %struct.vec4** %2, align 8
  %5 = getelementptr inbounds %struct.vec4, %struct.vec4* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = fmul double %7, 2.550000e+02
  %9 = fptosi double %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vec4*, %struct.vec4** %2, align 8
  %11 = getelementptr inbounds %struct.vec4, %struct.vec4* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = sitofp i64 %12 to double
  %14 = fmul double %13, 2.550000e+02
  %15 = fptosi double %14 to i32
  %16 = shl i32 %15, 8
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.vec4*, %struct.vec4** %2, align 8
  %20 = getelementptr inbounds %struct.vec4, %struct.vec4* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to double
  %23 = fmul double %22, 2.550000e+02
  %24 = fptosi double %23 to i32
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.vec4*, %struct.vec4** %2, align 8
  %29 = getelementptr inbounds %struct.vec4, %struct.vec4* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sitofp i64 %30 to double
  %32 = fmul double %31, 2.550000e+02
  %33 = fptosi double %32 to i32
  %34 = shl i32 %33, 24
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
