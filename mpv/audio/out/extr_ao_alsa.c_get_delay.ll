; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_get_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_get_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, %struct.priv* }
%struct.priv = type { double, i32, i64 }

@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ao*)* @get_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay(%struct.ao* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %7 = load %struct.ao*, %struct.ao** %3, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 1
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %4, align 8
  %10 = load %struct.priv*, %struct.priv** %4, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  store double %17, double* %2, align 8
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.priv*, %struct.priv** %4, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @snd_pcm_delay(i32 %21, double* %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EPIPE, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ao*, %struct.ao** %3, align 8
  %32 = call i32 @handle_underrun(%struct.ao* %31)
  br label %33

33:                                               ; preds = %30, %25
  store double 0.000000e+00, double* %2, align 8
  br label %51

34:                                               ; preds = %18
  %35 = load double, double* %5, align 8
  %36 = fcmp olt double %35, 0.000000e+00
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load double, double* %5, align 8
  %42 = fneg double %41
  %43 = call i32 @snd_pcm_forward(i32 %40, double %42)
  store double 0.000000e+00, double* %5, align 8
  br label %44

44:                                               ; preds = %37, %34
  %45 = load double, double* %5, align 8
  %46 = load %struct.ao*, %struct.ao** %3, align 8
  %47 = getelementptr inbounds %struct.ao, %struct.ao* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to double
  %50 = fdiv double %45, %49
  store double %50, double* %2, align 8
  br label %51

51:                                               ; preds = %44, %33, %14
  %52 = load double, double* %2, align 8
  ret double %52
}

declare dso_local i32 @snd_pcm_delay(i32, double*) #1

declare dso_local i32 @handle_underrun(%struct.ao*) #1

declare dso_local i32 @snd_pcm_forward(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
