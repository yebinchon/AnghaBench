; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_free_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_hotkeys }
%struct.obs_core_hotkeys = type { i32, i32, i32, i32, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @obs_free_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_free_hotkeys() #0 {
  %1 = alloca %struct.obs_core_hotkeys*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store %struct.obs_core_hotkeys* %3, %struct.obs_core_hotkeys** %1, align 8
  %4 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %5 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @bfree(i32 %6)
  %8 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %9 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfree(i32 %10)
  %12 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %13 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfree(i32 %14)
  %16 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %17 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfree(i32 %18)
  %20 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %21 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bfree(i32 %22)
  %24 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %25 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bfree(i32 %26)
  %28 = call i32 (...) @obs_hotkey_name_map_free()
  %29 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %30 = call i32 @obs_hotkeys_platform_free(%struct.obs_core_hotkeys* %29)
  %31 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %1, align 8
  %32 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %31, i32 0, i32 0
  %33 = call i32 @pthread_mutex_destroy(i32* %32)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @obs_hotkey_name_map_free(...) #1

declare dso_local i32 @obs_hotkeys_platform_free(%struct.obs_core_hotkeys*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
