; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_wait_events.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_drm.c_wait_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32)* @wait_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_events(%struct.vo* %0, i32 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vo*, %struct.vo** %3, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %5, align 8
  %11 = load %struct.priv*, %struct.priv** %5, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (...) @mp_time_us()
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 500
  %21 = sdiv i32 %20, 1000
  %22 = call i32 @MPCLAMP(i32 %21, i32 0, i32 10000)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.priv*, %struct.priv** %5, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vt_switcher_poll(i32* %24, i32 %25)
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.vo*, %struct.vo** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vo_wait_default(%struct.vo* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %15
  ret void
}

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @MPCLAMP(i32, i32, i32) #1

declare dso_local i32 @vt_switcher_poll(i32*, i32) #1

declare dso_local i32 @vo_wait_default(%struct.vo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
