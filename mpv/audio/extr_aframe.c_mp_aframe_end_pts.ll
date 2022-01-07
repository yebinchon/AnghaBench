; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_end_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_end_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mp_aframe_end_pts(%struct.mp_aframe* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.mp_aframe*, align 8
  %4 = alloca double, align 8
  store %struct.mp_aframe* %0, %struct.mp_aframe** %3, align 8
  %5 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %6 = call double @mp_aframe_get_effective_rate(%struct.mp_aframe* %5)
  store double %6, double* %4, align 8
  %7 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %8 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load double, double* %4, align 8
  %14 = fcmp ole double %13, 0.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %1
  %16 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %17 = sitofp i64 %16 to double
  store double %17, double* %2, align 8
  br label %31

18:                                               ; preds = %12
  %19 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %20 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to double
  %23 = load %struct.mp_aframe*, %struct.mp_aframe** %3, align 8
  %24 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = load double, double* %4, align 8
  %29 = fdiv double %27, %28
  %30 = fadd double %22, %29
  store double %30, double* %2, align 8
  br label %31

31:                                               ; preds = %18, %15
  %32 = load double, double* %2, align 8
  ret double %32
}

declare dso_local double @mp_aframe_get_effective_rate(%struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
