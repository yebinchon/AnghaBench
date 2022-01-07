; ModuleID = '/home/carl/AnghaBench/netdata/collectors/macos.plugin/extr_plugin_macos.c_macos_main_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/macos.plugin/extr_plugin_macos.c_macos_main_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdata_static_thread = type { i32 }

@NETDATA_MAIN_THREAD_EXITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cleaning up...\00", align 1
@NETDATA_MAIN_THREAD_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @macos_main_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macos_main_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netdata_static_thread*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.netdata_static_thread*
  store %struct.netdata_static_thread* %5, %struct.netdata_static_thread** %3, align 8
  %6 = load i32, i32* @NETDATA_MAIN_THREAD_EXITING, align 4
  %7 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %8 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = call i32 @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @NETDATA_MAIN_THREAD_EXITED, align 4
  %11 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %12 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  ret void
}

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
