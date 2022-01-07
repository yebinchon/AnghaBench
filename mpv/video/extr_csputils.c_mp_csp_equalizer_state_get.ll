; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_csp_equalizer_state_get.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_csputils.c_mp_csp_equalizer_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_equalizer_state = type { i32 }
%struct.mp_csp_params = type { i32 }
%struct.m_config_cache = type { %struct.mp_csp_equalizer_opts* }
%struct.mp_csp_equalizer_opts = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_csp_equalizer_state_get(%struct.mp_csp_equalizer_state* %0, %struct.mp_csp_params* %1) #0 {
  %3 = alloca %struct.mp_csp_equalizer_state*, align 8
  %4 = alloca %struct.mp_csp_params*, align 8
  %5 = alloca %struct.m_config_cache*, align 8
  %6 = alloca %struct.mp_csp_equalizer_opts*, align 8
  store %struct.mp_csp_equalizer_state* %0, %struct.mp_csp_equalizer_state** %3, align 8
  store %struct.mp_csp_params* %1, %struct.mp_csp_params** %4, align 8
  %7 = load %struct.mp_csp_equalizer_state*, %struct.mp_csp_equalizer_state** %3, align 8
  %8 = bitcast %struct.mp_csp_equalizer_state* %7 to %struct.m_config_cache*
  store %struct.m_config_cache* %8, %struct.m_config_cache** %5, align 8
  %9 = load %struct.m_config_cache*, %struct.m_config_cache** %5, align 8
  %10 = call i32 @m_config_cache_update(%struct.m_config_cache* %9)
  %11 = load %struct.m_config_cache*, %struct.m_config_cache** %5, align 8
  %12 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %11, i32 0, i32 0
  %13 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %12, align 8
  store %struct.mp_csp_equalizer_opts* %13, %struct.mp_csp_equalizer_opts** %6, align 8
  %14 = load %struct.mp_csp_params*, %struct.mp_csp_params** %4, align 8
  %15 = load %struct.mp_csp_equalizer_opts*, %struct.mp_csp_equalizer_opts** %6, align 8
  %16 = call i32 @mp_csp_copy_equalizer_values(%struct.mp_csp_params* %14, %struct.mp_csp_equalizer_opts* %15)
  ret void
}

declare dso_local i32 @m_config_cache_update(%struct.m_config_cache*) #1

declare dso_local i32 @mp_csp_copy_equalizer_values(%struct.mp_csp_params*, %struct.mp_csp_equalizer_opts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
