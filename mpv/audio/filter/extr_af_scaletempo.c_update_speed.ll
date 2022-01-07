; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_update_speed.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_update_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { float, double, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, double }

@SCALE_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*, float)* @update_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_speed(%struct.priv* %0, float %1) #0 {
  %3 = alloca %struct.priv*, align 8
  %4 = alloca float, align 4
  %5 = alloca double, align 8
  store %struct.priv* %0, %struct.priv** %3, align 8
  store float %1, float* %4, align 4
  %6 = load float, float* %4, align 4
  %7 = load %struct.priv*, %struct.priv** %3, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 0
  store float %6, float* %8, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SCALE_PITCH, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.priv*, %struct.priv** %3, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load float, float* %19, align 8
  %21 = fpext float %20 to double
  %22 = fdiv double 1.000000e+00, %21
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load float, float* %25, align 8
  %27 = fpext float %26 to double
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi double [ %22, %17 ], [ %27, %23 ]
  store double %29, double* %5, align 8
  %30 = load double, double* %5, align 8
  %31 = load %struct.priv*, %struct.priv** %3, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 5
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fmul double %30, %35
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 1
  store double %36, double* %38, align 8
  %39 = load %struct.priv*, %struct.priv** %3, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = load %struct.priv*, %struct.priv** %3, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sitofp i32 %44 to double
  %46 = fmul double %41, %45
  %47 = fptosi double %46 to i32
  %48 = load %struct.priv*, %struct.priv** %3, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.priv*, %struct.priv** %3, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @MPMIN(i32 %52, i32 %55)
  %57 = load %struct.priv*, %struct.priv** %3, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i32 @MPMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
