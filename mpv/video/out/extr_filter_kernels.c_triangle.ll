; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_triangle.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_filter_kernels.c_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, double)* @triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @triangle(%struct.TYPE_3__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fdiv double %5, %8
  %10 = call i64 @fabs(double %9)
  %11 = sitofp i64 %10 to double
  %12 = fsub double 1.000000e+00, %11
  %13 = fptosi double %12 to i64
  %14 = call double @fmax(double 0.000000e+00, i64 %13)
  ret double %14
}

declare dso_local double @fmax(double, i64) #1

declare dso_local i64 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
