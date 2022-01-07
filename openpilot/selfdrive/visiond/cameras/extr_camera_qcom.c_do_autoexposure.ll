; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_do_autoexposure.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/visiond/cameras/extr_camera_qcom.c_do_autoexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float)* @do_autoexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_autoexposure(%struct.TYPE_4__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store float %1, float* %4, align 4
  store float 0x3FD3333340000000, float* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  store float %10, float* %6, align 4
  %11 = load float, float* %4, align 4
  %12 = fsub float 0x3FD3333340000000, %11
  %13 = fpext float %12 to double
  %14 = fdiv double %13, 5.000000e-02
  %15 = fptrunc double %14 to float
  %16 = call float @pow(double 1.050000e+00, float %15)
  %17 = load float, float* %6, align 4
  %18 = fmul float %17, %16
  store float %18, float* %6, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load float, float* %20, align 4
  store float %21, float* %7, align 4
  %22 = load float, float* %6, align 4
  %23 = fpext float %22 to double
  %24 = fcmp olt double %23, 1.000000e-01
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load float, float* %7, align 4
  %27 = fpext float %26 to double
  %28 = fmul double %27, 0x3FEE666666666666
  %29 = fptrunc double %28 to float
  store float %29, float* %7, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load float, float* %6, align 4
  %32 = fpext float %31 to double
  %33 = fcmp ogt double %32, 4.000000e-01
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load float, float* %7, align 4
  %36 = fpext float %35 to double
  %37 = fmul double %36, 1.050000e+00
  %38 = fptrunc double %37 to float
  store float %38, float* %7, align 4
  br label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = load float, float* %6, align 4
  %43 = load float, float* %7, align 4
  %44 = call i32 @set_exposure(%struct.TYPE_4__* %41, float %42, float %43)
  ret void
}

declare dso_local float @pow(double, float) #1

declare dso_local i32 @set_exposure(%struct.TYPE_4__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
