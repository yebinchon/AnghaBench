; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_reset_audio_state.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_reset_audio_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.track* }
%struct.track = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@STATUS_SYNCING = common dso_local global i32 0, align 4
@STATUS_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_audio_state(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %4 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %5 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @ao_chain_reset_state(%struct.TYPE_4__* %11)
  %13 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.track*, %struct.track** %16, align 8
  store %struct.track* %17, %struct.track** %3, align 8
  %18 = load %struct.track*, %struct.track** %3, align 8
  %19 = icmp ne %struct.track* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %8
  %21 = load %struct.track*, %struct.track** %3, align 8
  %22 = getelementptr inbounds %struct.track, %struct.track* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.track*, %struct.track** %3, align 8
  %30 = getelementptr inbounds %struct.track, %struct.track* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %20, %8
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %36 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @STATUS_SYNCING, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @STATUS_EOF, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %48 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %50 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %52 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  ret void
}

declare dso_local i32 @ao_chain_reset_state(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
