; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_zeroBlockH00.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/longitudinal_mpc/lib_mpc_export/extr_acado_solver.c_acado_zeroBlockH00.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@acadoWorkspace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_zeroBlockH00() #0 {
  %1 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %2 = getelementptr inbounds double, double* %1, i64 0
  store double 0.000000e+00, double* %2, align 8
  %3 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %4 = getelementptr inbounds double, double* %3, i64 1
  store double 0.000000e+00, double* %4, align 8
  %5 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %6 = getelementptr inbounds double, double* %5, i64 2
  store double 0.000000e+00, double* %6, align 8
  %7 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %8 = getelementptr inbounds double, double* %7, i64 23
  store double 0.000000e+00, double* %8, align 8
  %9 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %10 = getelementptr inbounds double, double* %9, i64 24
  store double 0.000000e+00, double* %10, align 8
  %11 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %12 = getelementptr inbounds double, double* %11, i64 25
  store double 0.000000e+00, double* %12, align 8
  %13 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %14 = getelementptr inbounds double, double* %13, i64 46
  store double 0.000000e+00, double* %14, align 8
  %15 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %16 = getelementptr inbounds double, double* %15, i64 47
  store double 0.000000e+00, double* %16, align 8
  %17 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acadoWorkspace, i32 0, i32 0), align 8
  %18 = getelementptr inbounds double, double* %17, i64 48
  store double 0.000000e+00, double* %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
