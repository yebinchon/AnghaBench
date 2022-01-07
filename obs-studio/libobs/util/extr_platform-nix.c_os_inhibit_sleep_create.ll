; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_inhibit_sleep_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix.c_os_inhibit_sleep_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_inhibit_info = type { i32, i32, i32, i32 }

@OS_EVENT_TYPE_AUTO = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSIGDEF = common dso_local global i32 0, align 4
@POSIX_SPAWN_SETSIGMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.os_inhibit_info* @os_inhibit_sleep_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.os_inhibit_info*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call %struct.os_inhibit_info* @bzalloc(i32 16)
  store %struct.os_inhibit_info* %5, %struct.os_inhibit_info** %3, align 8
  %6 = load %struct.os_inhibit_info*, %struct.os_inhibit_info** %3, align 8
  %7 = getelementptr inbounds %struct.os_inhibit_info, %struct.os_inhibit_info* %6, i32 0, i32 2
  %8 = load i32, i32* @OS_EVENT_TYPE_AUTO, align 4
  %9 = call i32 @os_event_init(i32* %7, i32 %8)
  %10 = load %struct.os_inhibit_info*, %struct.os_inhibit_info** %3, align 8
  %11 = getelementptr inbounds %struct.os_inhibit_info, %struct.os_inhibit_info* %10, i32 0, i32 1
  %12 = call i32 @posix_spawnattr_init(i32* %11)
  %13 = call i32 @sigemptyset(i32* %4)
  %14 = load %struct.os_inhibit_info*, %struct.os_inhibit_info** %3, align 8
  %15 = getelementptr inbounds %struct.os_inhibit_info, %struct.os_inhibit_info* %14, i32 0, i32 1
  %16 = call i32 @posix_spawnattr_setsigmask(i32* %15, i32* %4)
  %17 = load i32, i32* @SIGPIPE, align 4
  %18 = call i32 @sigaddset(i32* %4, i32 %17)
  %19 = load %struct.os_inhibit_info*, %struct.os_inhibit_info** %3, align 8
  %20 = getelementptr inbounds %struct.os_inhibit_info, %struct.os_inhibit_info* %19, i32 0, i32 1
  %21 = call i32 @posix_spawnattr_setsigdefault(i32* %20, i32* %4)
  %22 = load %struct.os_inhibit_info*, %struct.os_inhibit_info** %3, align 8
  %23 = getelementptr inbounds %struct.os_inhibit_info, %struct.os_inhibit_info* %22, i32 0, i32 1
  %24 = load i32, i32* @POSIX_SPAWN_SETSIGDEF, align 4
  %25 = load i32, i32* @POSIX_SPAWN_SETSIGMASK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @posix_spawnattr_setflags(i32* %23, i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @bstrdup(i8* %28)
  %30 = load %struct.os_inhibit_info*, %struct.os_inhibit_info** %3, align 8
  %31 = getelementptr inbounds %struct.os_inhibit_info, %struct.os_inhibit_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.os_inhibit_info*, %struct.os_inhibit_info** %3, align 8
  ret %struct.os_inhibit_info* %32
}

declare dso_local %struct.os_inhibit_info* @bzalloc(i32) #1

declare dso_local i32 @os_event_init(i32*, i32) #1

declare dso_local i32 @posix_spawnattr_init(i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @posix_spawnattr_setsigmask(i32*, i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @posix_spawnattr_setsigdefault(i32*, i32*) #1

declare dso_local i32 @posix_spawnattr_setflags(i32*, i32) #1

declare dso_local i32 @bstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
