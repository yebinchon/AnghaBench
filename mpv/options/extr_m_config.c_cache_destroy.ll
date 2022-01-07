; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_cache_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_cache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cache_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.m_config_cache*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.m_config_cache*
  store %struct.m_config_cache* %5, %struct.m_config_cache** %3, align 8
  %6 = load %struct.m_config_cache*, %struct.m_config_cache** %3, align 8
  %7 = call i32 @m_config_cache_set_wakeup_cb(%struct.m_config_cache* %6, i32* null, i32* null)
  %8 = load %struct.m_config_cache*, %struct.m_config_cache** %3, align 8
  %9 = call i32 @m_config_cache_set_dispatch_change_cb(%struct.m_config_cache* %8, i32* null, i32* null, i32* null)
  ret void
}

declare dso_local i32 @m_config_cache_set_wakeup_cb(%struct.m_config_cache*, i32*, i32*) #1

declare dso_local i32 @m_config_cache_set_dispatch_change_cb(%struct.m_config_cache*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
