; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_kill_video_async.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_kill_video_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_client_api = type { %struct.MPContext* }
%struct.MPContext = type { i32 }

@do_kill = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_video_async(%struct.mp_client_api* %0) #0 {
  %2 = alloca %struct.mp_client_api*, align 8
  %3 = alloca %struct.MPContext*, align 8
  store %struct.mp_client_api* %0, %struct.mp_client_api** %2, align 8
  %4 = load %struct.mp_client_api*, %struct.mp_client_api** %2, align 8
  %5 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %4, i32 0, i32 0
  %6 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  store %struct.MPContext* %6, %struct.MPContext** %3, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @do_kill, align 4
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = call i32 @mp_dispatch_enqueue(i32 %9, i32 %10, %struct.MPContext* %11)
  ret void
}

declare dso_local i32 @mp_dispatch_enqueue(i32, i32, %struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
