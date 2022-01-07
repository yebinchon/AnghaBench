; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_get_times.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_get_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.sd_lavc_priv* }
%struct.sd_lavc_priv = type { i32 }
%struct.sd_times = type { double, double }
%struct.sub = type { double, double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ double, double } (%struct.sd*, double)* @get_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { double, double } @get_times(%struct.sd* %0, double %1) #0 {
  %3 = alloca %struct.sd_times, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.sd_lavc_priv*, align 8
  %7 = alloca %struct.sub*, align 8
  store %struct.sd* %0, %struct.sd** %4, align 8
  store double %1, double* %5, align 8
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %9, align 8
  store %struct.sd_lavc_priv* %10, %struct.sd_lavc_priv** %6, align 8
  %11 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 0
  %12 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %12, double* %11, align 8
  %13 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 1
  %14 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %14, double* %13, align 8
  %15 = load double, double* %5, align 8
  %16 = load double, double* @MP_NOPTS_VALUE, align 8
  %17 = fcmp oeq double %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.sd_lavc_priv*, %struct.sd_lavc_priv** %6, align 8
  %21 = load double, double* %5, align 8
  %22 = call %struct.sub* @get_current(%struct.sd_lavc_priv* %20, double %21)
  store %struct.sub* %22, %struct.sub** %7, align 8
  %23 = load %struct.sub*, %struct.sub** %7, align 8
  %24 = icmp ne %struct.sub* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.sub*, %struct.sub** %7, align 8
  %28 = getelementptr inbounds %struct.sub, %struct.sub* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 0
  store double %29, double* %30, align 8
  %31 = load %struct.sub*, %struct.sub** %7, align 8
  %32 = getelementptr inbounds %struct.sub, %struct.sub* %31, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = getelementptr inbounds %struct.sd_times, %struct.sd_times* %3, i32 0, i32 1
  store double %33, double* %34, align 8
  br label %35

35:                                               ; preds = %26, %25, %18
  %36 = bitcast %struct.sd_times* %3 to { double, double }*
  %37 = load { double, double }, { double, double }* %36, align 8
  ret { double, double } %37
}

declare dso_local %struct.sub* @get_current(%struct.sd_lavc_priv*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
