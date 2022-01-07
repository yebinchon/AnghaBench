; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_wlshm.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { %struct.buffer* }
%struct.buffer = type { %struct.buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.buffer*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %5 = load %struct.vo*, %struct.vo** %2, align 8
  %6 = getelementptr inbounds %struct.vo, %struct.vo* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load %struct.buffer*, %struct.buffer** %10, align 8
  %12 = icmp ne %struct.buffer* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load %struct.buffer*, %struct.buffer** %15, align 8
  store %struct.buffer* %16, %struct.buffer** %4, align 8
  %17 = load %struct.buffer*, %struct.buffer** %4, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 0
  %19 = load %struct.buffer*, %struct.buffer** %18, align 8
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  store %struct.buffer* %19, %struct.buffer** %21, align 8
  %22 = load %struct.buffer*, %struct.buffer** %4, align 8
  %23 = call i32 @talloc_free(%struct.buffer* %22)
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.vo*, %struct.vo** %2, align 8
  %26 = call i32 @vo_wayland_uninit(%struct.vo* %25)
  ret void
}

declare dso_local i32 @talloc_free(%struct.buffer*) #1

declare dso_local i32 @vo_wayland_uninit(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
