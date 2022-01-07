; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_get_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_swresample.c_get_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.priv*)* @get_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %2, align 8
  %4 = load %struct.priv*, %struct.priv** %2, align 8
  %5 = getelementptr inbounds %struct.priv, %struct.priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.priv*, %struct.priv** %2, align 8
  %8 = getelementptr inbounds %struct.priv, %struct.priv* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = mul nsw i32 %6, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.priv*, %struct.priv** %2, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call double @swr_get_delay(i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = sitofp i32 %17 to double
  %19 = fdiv double %16, %18
  ret double %19
}

declare dso_local double @swr_get_delay(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
