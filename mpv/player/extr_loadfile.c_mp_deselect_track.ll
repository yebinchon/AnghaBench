; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_deselect_track.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_deselect_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.track = type { i32, i64 }

@NUM_PTRACKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_deselect_track(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.track*, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.track* %1, %struct.track** %4, align 8
  %6 = load %struct.track*, %struct.track** %4, align 8
  %7 = icmp ne %struct.track* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load %struct.track*, %struct.track** %4, align 8
  %10 = getelementptr inbounds %struct.track, %struct.track* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NUM_PTRACKS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.track*, %struct.track** %4, align 8
  %22 = getelementptr inbounds %struct.track, %struct.track* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mp_switch_track_n(%struct.MPContext* %19, i32 %20, i32 %23, i32* null, i32 0)
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %14

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %8, %2
  ret void
}

declare dso_local i32 @mp_switch_track_n(%struct.MPContext*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
