; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_time_clip.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_time_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAN = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @time_clip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @time_clip(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double 8.640000e+15, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load double, double* %3, align 8
  %8 = fcmp olt double %7, -8.640000e+15
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %1
  %10 = load double, double* @NAN, align 8
  store double %10, double* %2, align 8
  br label %14

11:                                               ; preds = %6
  %12 = load double, double* %3, align 8
  %13 = call double @llvm.floor.f64(double %12)
  store double %13, double* %2, align 8
  br label %14

14:                                               ; preds = %11, %9
  %15 = load double, double* %2, align 8
  ret double %15
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
