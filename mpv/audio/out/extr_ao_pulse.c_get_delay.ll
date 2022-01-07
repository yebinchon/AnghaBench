; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_get_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_pulse.c_get_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ao*)* @get_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay(%struct.ao* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %5 = load %struct.ao*, %struct.ao** %3, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %4, align 8
  %8 = load %struct.priv*, %struct.priv** %4, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ao*, %struct.ao** %3, align 8
  %14 = call double @get_delay_hackfixed(%struct.ao* %13)
  store double %14, double* %2, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.ao*, %struct.ao** %3, align 8
  %17 = call double @get_delay_pulse(%struct.ao* %16)
  store double %17, double* %2, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load double, double* %2, align 8
  ret double %19
}

declare dso_local double @get_delay_hackfixed(%struct.ao*) #1

declare dso_local double @get_delay_pulse(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
