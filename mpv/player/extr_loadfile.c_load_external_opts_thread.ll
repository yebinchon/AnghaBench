; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_load_external_opts_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_load_external_opts_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mp_waiter = type { i32 }

@STREAM_AUDIO = common dso_local global i32 0, align 4
@STREAM_SUB = common dso_local global i32 0, align 4
@STREAM_TYPE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @load_external_opts_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_external_opts_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.mp_waiter*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i8**
  store i8** %7, i8*** %3, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.MPContext*
  store %struct.MPContext* %11, %struct.MPContext** %4, align 8
  %12 = load i8**, i8*** %3, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.mp_waiter*
  store %struct.mp_waiter* %15, %struct.mp_waiter** %5, align 8
  %16 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %17 = call i32 @mp_core_lock(%struct.MPContext* %16)
  %18 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %19 = call i32 @load_chapters(%struct.MPContext* %18)
  %20 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %21 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @STREAM_AUDIO, align 4
  %27 = call i32 @open_external_files(%struct.MPContext* %20, i32 %25, i32 %26)
  %28 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %29 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STREAM_SUB, align 4
  %35 = call i32 @open_external_files(%struct.MPContext* %28, i32 %33, i32 %34)
  %36 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %37 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %38 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %43 = call i32 @open_external_files(%struct.MPContext* %36, i32 %41, i32 %42)
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @autoload_external_files(%struct.MPContext* %44, i32 %47)
  %49 = load %struct.mp_waiter*, %struct.mp_waiter** %5, align 8
  %50 = call i32 @mp_waiter_wakeup(%struct.mp_waiter* %49, i32 0)
  %51 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %52 = call i32 @mp_wakeup_core(%struct.MPContext* %51)
  %53 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %54 = call i32 @mp_core_unlock(%struct.MPContext* %53)
  ret void
}

declare dso_local i32 @mp_core_lock(%struct.MPContext*) #1

declare dso_local i32 @load_chapters(%struct.MPContext*) #1

declare dso_local i32 @open_external_files(%struct.MPContext*, i32, i32) #1

declare dso_local i32 @autoload_external_files(%struct.MPContext*, i32) #1

declare dso_local i32 @mp_waiter_wakeup(%struct.mp_waiter*, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

declare dso_local i32 @mp_core_unlock(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
