; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_system_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_log_system_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.win_version_info = type { i32, i32 }

@win_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_system_info() #0 {
  %1 = alloca %struct.win_version_info, align 4
  %2 = call i32 @get_win_ver(%struct.win_version_info* %1)
  %3 = getelementptr inbounds %struct.win_version_info, %struct.win_version_info* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = shl i32 %4, 8
  %6 = getelementptr inbounds %struct.win_version_info, %struct.win_version_info* %1, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = or i32 %5, %7
  store i32 %8, i32* @win_ver, align 4
  %9 = call i32 (...) @log_processor_info()
  %10 = call i32 (...) @log_processor_cores()
  %11 = call i32 (...) @log_available_memory()
  %12 = call i32 (...) @log_windows_version()
  %13 = call i32 (...) @log_admin_status()
  %14 = call i32 (...) @log_aero()
  %15 = call i32 (...) @log_gaming_features()
  %16 = call i32 (...) @log_security_products()
  ret void
}

declare dso_local i32 @get_win_ver(%struct.win_version_info*) #1

declare dso_local i32 @log_processor_info(...) #1

declare dso_local i32 @log_processor_cores(...) #1

declare dso_local i32 @log_available_memory(...) #1

declare dso_local i32 @log_windows_version(...) #1

declare dso_local i32 @log_admin_status(...) #1

declare dso_local i32 @log_aero(...) #1

declare dso_local i32 @log_gaming_features(...) #1

declare dso_local i32 @log_security_products(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
