; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_get_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_null.c_get_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { double, %struct.priv* }
%struct.priv = type { double, double, double, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ao*)* @get_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %6 = load %struct.ao*, %struct.ao** %2, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.ao*, %struct.ao** %2, align 8
  %10 = call i32 @drain(%struct.ao* %9)
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  store double %13, double* %4, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fcmp olt double %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.priv*, %struct.priv** %3, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %26, %18, %1
  %31 = load %struct.ao*, %struct.ao** %2, align 8
  %32 = getelementptr inbounds %struct.ao, %struct.ao* %31, i32 0, i32 0
  %33 = load double, double* %32, align 8
  %34 = load double, double* %4, align 8
  %35 = fdiv double %34, %33
  store double %35, double* %4, align 8
  %36 = load %struct.priv*, %struct.priv** %3, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %30
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = load %struct.ao*, %struct.ao** %2, align 8
  %45 = getelementptr inbounds %struct.ao, %struct.ao* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = fdiv double %43, %46
  store double %47, double* %5, align 8
  %48 = load double, double* %4, align 8
  %49 = fcmp ogt double %48, 0.000000e+00
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load double, double* %4, align 8
  %52 = load double, double* %5, align 8
  %53 = fdiv double %51, %52
  %54 = fptosi double %53 to i32
  %55 = sitofp i32 %54 to double
  %56 = load double, double* %5, align 8
  %57 = fmul double %55, %56
  store double %57, double* %4, align 8
  br label %58

58:                                               ; preds = %50, %40
  br label %59

59:                                               ; preds = %58, %30
  %60 = load double, double* %4, align 8
  ret double %60
}

declare dso_local i32 @drain(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
