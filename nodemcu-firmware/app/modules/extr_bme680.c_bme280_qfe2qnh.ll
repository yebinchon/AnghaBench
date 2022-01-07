; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_bme280_qfe2qnh.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_bme680.c_bme280_qfe2qnh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bme680_h = common dso_local global double 0.000000e+00, align 8
@bme680_hc = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @bme280_qfe2qnh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @bme280_qfe2qnh(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %7 = load double, double* @bme680_h, align 8
  %8 = load double, double* %4, align 8
  %9 = fcmp oeq double %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load double, double* @bme680_hc, align 8
  store double %11, double* %5, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load double, double* %4, align 8
  %14 = fmul double 2.255770e-05, %13
  %15 = fsub double 1.000000e+00, %14
  %16 = call double @pow(double %15, double -5.255880e+00) #2
  store double %16, double* %5, align 8
  %17 = load double, double* %5, align 8
  store double %17, double* @bme680_hc, align 8
  %18 = load double, double* %4, align 8
  store double %18, double* @bme680_h, align 8
  br label %19

19:                                               ; preds = %12, %10
  %20 = load double, double* %3, align 8
  %21 = load double, double* %5, align 8
  %22 = fmul double %20, %21
  store double %22, double* %6, align 8
  %23 = load double, double* %6, align 8
  ret double %23
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
