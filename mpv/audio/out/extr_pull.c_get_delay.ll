; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_get_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_pull.c_get_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64, %struct.ao_pull_state* }
%struct.ao_pull_state = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.ao*)* @get_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_delay(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.ao_pull_state*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %7 = load %struct.ao*, %struct.ao** %2, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 1
  %9 = load %struct.ao_pull_state*, %struct.ao_pull_state** %8, align 8
  store %struct.ao_pull_state* %9, %struct.ao_pull_state** %3, align 8
  %10 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %11 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %10, i32 0, i32 1
  %12 = call double @atomic_load(i32* %11)
  store double %12, double* %4, align 8
  %13 = call double (...) @mp_time_us()
  store double %13, double* %5, align 8
  %14 = load double, double* %4, align 8
  %15 = load double, double* %5, align 8
  %16 = fsub double %14, %15
  %17 = fdiv double %16, 1.000000e+06
  %18 = call double @MPMAX(i32 0, double %17)
  store double %18, double* %6, align 8
  %19 = load %struct.ao_pull_state*, %struct.ao_pull_state** %3, align 8
  %20 = getelementptr inbounds %struct.ao_pull_state, %struct.ao_pull_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call double @mp_ring_buffered(i32 %23)
  %25 = load %struct.ao*, %struct.ao** %2, align 8
  %26 = getelementptr inbounds %struct.ao, %struct.ao* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %24, %28
  %30 = load double, double* %6, align 8
  %31 = fadd double %29, %30
  ret double %31
}

declare dso_local double @atomic_load(i32*) #1

declare dso_local double @mp_time_us(...) #1

declare dso_local double @MPMAX(i32, double) #1

declare dso_local double @mp_ring_buffered(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
