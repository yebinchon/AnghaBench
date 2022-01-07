; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vsync_stddef.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_vsync_stddef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.vo*, double)* @vsync_stddef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @vsync_stddef(%struct.vo* %0, double %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.vo_internal*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store double %1, double* %4, align 8
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.vo_internal*, %struct.vo_internal** %10, align 8
  store %struct.vo_internal* %11, %struct.vo_internal** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %15 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %20 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %19, i32 0, i32 1
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double, double* %4, align 8
  %27 = fsub double %25, %26
  store double %27, double* %8, align 8
  %28 = load double, double* %8, align 8
  %29 = load double, double* %8, align 8
  %30 = fmul double %28, %29
  %31 = load double, double* %6, align 8
  %32 = fadd double %31, %30
  store double %32, double* %6, align 8
  br label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %12

36:                                               ; preds = %12
  %37 = load double, double* %6, align 8
  %38 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %39 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %37, %41
  %43 = call double @sqrt(double %42) #2
  ret double %43
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
