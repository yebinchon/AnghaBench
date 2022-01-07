; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_find_best_speed.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_find_best_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { double }
%struct.TYPE_4__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.MPContext*, double)* @find_best_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @find_best_speed(%struct.MPContext* %0, double %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store double %1, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  store double %23, double* %8, align 8
  %24 = load double, double* %8, align 8
  %25 = fcmp ole double %24, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %42

27:                                               ; preds = %15
  %28 = load double, double* %4, align 8
  %29 = load double, double* %8, align 8
  %30 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = fdiv double %29, %34
  %36 = call i64 @calc_best_speed(double %28, double %35)
  %37 = sitofp i64 %36 to double
  %38 = load double, double* %5, align 8
  %39 = fadd double %38, %37
  store double %39, double* %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %27, %26
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load double, double* %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %49, %51
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi double [ %52, %48 ], [ 1.000000e+00, %53 ]
  ret double %55
}

declare dso_local i64 @calc_best_speed(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
