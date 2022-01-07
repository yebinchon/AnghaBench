; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_sub.c_uninit_sub.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_sub.c_uninit_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.track = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uninit_sub(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.track*, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.track* %1, %struct.track** %4, align 8
  %6 = load %struct.track*, %struct.track** %4, align 8
  %7 = icmp ne %struct.track* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load %struct.track*, %struct.track** %4, align 8
  %10 = getelementptr inbounds %struct.track, %struct.track* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %15 = load %struct.track*, %struct.track** %4, align 8
  %16 = call i32 @reset_subtitles(%struct.MPContext* %14, %struct.track* %15)
  %17 = load %struct.track*, %struct.track** %4, align 8
  %18 = getelementptr inbounds %struct.track, %struct.track* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @sub_select(i32* %19, i32 0)
  %21 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %22 = load %struct.track*, %struct.track** %4, align 8
  %23 = call i32 @get_order(%struct.MPContext* %21, %struct.track* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @osd_set_sub(i32 %26, i32 %27, i32* null)
  %29 = load %struct.track*, %struct.track** %4, align 8
  %30 = getelementptr inbounds %struct.track, %struct.track* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @sub_destroy(i32* %31)
  %33 = load %struct.track*, %struct.track** %4, align 8
  %34 = getelementptr inbounds %struct.track, %struct.track* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %13, %8, %2
  ret void
}

declare dso_local i32 @reset_subtitles(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @sub_select(i32*, i32) #1

declare dso_local i32 @get_order(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @osd_set_sub(i32, i32, i32*) #1

declare dso_local i32 @sub_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
