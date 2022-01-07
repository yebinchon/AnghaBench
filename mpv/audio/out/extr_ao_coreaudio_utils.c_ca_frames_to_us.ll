; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_ca_frames_to_us.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_ca_frames_to_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ca_frames_to_us(%struct.ao* %0, float %1) #0 {
  %3 = alloca %struct.ao*, align 8
  %4 = alloca float, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  store float %1, float* %4, align 4
  %5 = load float, float* %4, align 4
  %6 = load %struct.ao*, %struct.ao** %3, align 8
  %7 = getelementptr inbounds %struct.ao, %struct.ao* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sitofp i64 %8 to float
  %10 = fdiv float %5, %9
  %11 = fpext float %10 to double
  %12 = fmul double %11, 1.000000e+06
  %13 = fptrunc double %12 to float
  ret float %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
