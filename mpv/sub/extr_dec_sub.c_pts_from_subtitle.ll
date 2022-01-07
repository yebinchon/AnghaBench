; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_pts_from_subtitle.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_dec_sub.c_pts_from_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dec_sub = type { double, double, %struct.mp_subtitle_opts* }
%struct.mp_subtitle_opts = type { double }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.dec_sub*, double)* @pts_from_subtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @pts_from_subtitle(%struct.dec_sub* %0, double %1) #0 {
  %3 = alloca %struct.dec_sub*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.mp_subtitle_opts*, align 8
  store %struct.dec_sub* %0, %struct.dec_sub** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %7 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %6, i32 0, i32 2
  %8 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %7, align 8
  store %struct.mp_subtitle_opts* %8, %struct.mp_subtitle_opts** %5, align 8
  %9 = load double, double* %4, align 8
  %10 = load double, double* @MP_NOPTS_VALUE, align 8
  %11 = fcmp une double %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load double, double* %4, align 8
  %14 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %15 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fmul double %13, %16
  %18 = load %struct.mp_subtitle_opts*, %struct.mp_subtitle_opts** %5, align 8
  %19 = getelementptr inbounds %struct.mp_subtitle_opts, %struct.mp_subtitle_opts* %18, i32 0, i32 0
  %20 = load double, double* %19, align 8
  %21 = fadd double %17, %20
  %22 = load %struct.dec_sub*, %struct.dec_sub** %3, align 8
  %23 = getelementptr inbounds %struct.dec_sub, %struct.dec_sub* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fmul double %21, %24
  store double %25, double* %4, align 8
  br label %26

26:                                               ; preds = %12, %2
  %27 = load double, double* %4, align 8
  ret double %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
