; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_osd.c_update_osd_bar.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_osd.c_update_osd_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, i32, double, double, double)* @update_osd_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_osd_bar(%struct.MPContext* %0, i32 %1, double %2, double %3, double %4) #0 {
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca float, align 4
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %12 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %45

19:                                               ; preds = %5
  %20 = load double, double* %10, align 8
  %21 = load double, double* %8, align 8
  %22 = fsub double %20, %21
  %23 = load double, double* %9, align 8
  %24 = load double, double* %8, align 8
  %25 = fsub double %23, %24
  %26 = fdiv double %22, %25
  %27 = fptrunc double %26 to float
  store float %27, float* %11, align 4
  %28 = load float, float* %11, align 4
  %29 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = fcmp une float %28, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %19
  %35 = load float, float* %11, align 4
  %36 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store float %35, float* %38, align 4
  %39 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %40 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %43 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %42, i32 0, i32 0
  %44 = call i32 @osd_set_progbar(i32 %41, %struct.TYPE_2__* %43)
  br label %45

45:                                               ; preds = %18, %34, %19
  ret void
}

declare dso_local i32 @osd_set_progbar(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
