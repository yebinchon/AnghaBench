; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_cpu_usage_info_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_os_cpu_usage_info_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_cpu_usage_info = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.os_cpu_usage_info* @os_cpu_usage_info_start() #0 {
  %1 = alloca %struct.os_cpu_usage_info*, align 8
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.os_cpu_usage_info* @bzalloc(i32 16)
  store %struct.os_cpu_usage_info* %4, %struct.os_cpu_usage_info** %1, align 8
  %5 = call i32 @GetSystemInfo(%struct.TYPE_9__* %2)
  %6 = load %struct.os_cpu_usage_info*, %struct.os_cpu_usage_info** %1, align 8
  %7 = getelementptr inbounds %struct.os_cpu_usage_info, %struct.os_cpu_usage_info* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i32 @GetSystemTimeAsFileTime(i32* %8)
  %10 = call i32 (...) @GetCurrentProcess()
  %11 = load %struct.os_cpu_usage_info*, %struct.os_cpu_usage_info** %1, align 8
  %12 = getelementptr inbounds %struct.os_cpu_usage_info, %struct.os_cpu_usage_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.os_cpu_usage_info*, %struct.os_cpu_usage_info** %1, align 8
  %15 = getelementptr inbounds %struct.os_cpu_usage_info, %struct.os_cpu_usage_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = call i32 @GetProcessTimes(i32 %10, i32* %3, i32* %3, i32* %13, i32* %16)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.os_cpu_usage_info*, %struct.os_cpu_usage_info** %1, align 8
  %21 = getelementptr inbounds %struct.os_cpu_usage_info, %struct.os_cpu_usage_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.os_cpu_usage_info*, %struct.os_cpu_usage_info** %1, align 8
  ret %struct.os_cpu_usage_info* %22
}

declare dso_local %struct.os_cpu_usage_info* @bzalloc(i32) #1

declare dso_local i32 @GetSystemInfo(%struct.TYPE_9__*) #1

declare dso_local i32 @GetSystemTimeAsFileTime(i32*) #1

declare dso_local i32 @GetProcessTimes(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
