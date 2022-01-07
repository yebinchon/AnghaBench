; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_finish_default_profile.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_finish_default_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config = type { i32 }
%struct.m_profile = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_config_finish_default_profile(%struct.m_config* %0, i32 %1) #0 {
  %3 = alloca %struct.m_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.m_profile*, align 8
  store %struct.m_config* %0, %struct.m_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.m_config*, %struct.m_config** %3, align 8
  %7 = call %struct.m_profile* @m_config_add_profile(%struct.m_config* %6, i32* null)
  store %struct.m_profile* %7, %struct.m_profile** %5, align 8
  %8 = load %struct.m_config*, %struct.m_config** %3, align 8
  %9 = load %struct.m_profile*, %struct.m_profile** %5, align 8
  %10 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @m_config_set_profile(%struct.m_config* %8, i32 %11, i32 %12)
  %14 = load %struct.m_profile*, %struct.m_profile** %5, align 8
  %15 = getelementptr inbounds %struct.m_profile, %struct.m_profile* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  ret void
}

declare dso_local %struct.m_profile* @m_config_add_profile(%struct.m_config*, i32*) #1

declare dso_local i32 @m_config_set_profile(%struct.m_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
