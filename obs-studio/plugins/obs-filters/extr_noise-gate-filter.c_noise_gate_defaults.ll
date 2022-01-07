; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-gate-filter.c_noise_gate_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-gate-filter.c_noise_gate_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OPEN_THRESHOLD = common dso_local global i32 0, align 4
@S_CLOSE_THRESHOLD = common dso_local global i32 0, align 4
@S_ATTACK_TIME = common dso_local global i32 0, align 4
@S_HOLD_TIME = common dso_local global i32 0, align 4
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @noise_gate_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noise_gate_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @S_OPEN_THRESHOLD, align 4
  %5 = call i32 @obs_data_set_default_double(i32* %3, i32 %4, double -2.600000e+01)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @S_CLOSE_THRESHOLD, align 4
  %8 = call i32 @obs_data_set_default_double(i32* %6, i32 %7, double -3.200000e+01)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @S_ATTACK_TIME, align 4
  %11 = call i32 @obs_data_set_default_int(i32* %9, i32 %10, i32 25)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @S_HOLD_TIME, align 4
  %14 = call i32 @obs_data_set_default_int(i32* %12, i32 %13, i32 200)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @S_RELEASE_TIME, align 4
  %17 = call i32 @obs_data_set_default_int(i32* %15, i32 %16, i32 150)
  ret void
}

declare dso_local i32 @obs_data_set_default_double(i32*, i32, double) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
