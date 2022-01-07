; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_reset_video_state.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_reset_video_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_4__*, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32*, i32 }
%struct.TYPE_4__ = type { %struct.track* }
%struct.track = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MP_NOPTS_VALUE = common dso_local global i32 0, align 4
@STATUS_SYNCING = common dso_local global i32 0, align 4
@STATUS_EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_video_state(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.track*, align 8
  %4 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @vo_chain_reset_state(%struct.TYPE_4__* %12)
  %14 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %15 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.track*, %struct.track** %17, align 8
  store %struct.track* %18, %struct.track** %3, align 8
  %19 = load %struct.track*, %struct.track** %3, align 8
  %20 = icmp ne %struct.track* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %9
  %22 = load %struct.track*, %struct.track** %3, align 8
  %23 = getelementptr inbounds %struct.track, %struct.track* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.track*, %struct.track** %3, align 8
  %31 = getelementptr inbounds %struct.track, %struct.track* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %21, %9
  br label %35

35:                                               ; preds = %34, %1
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %39 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 14
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @mp_image_unrefp(i32* %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %55 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %57 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %56, i32 0, i32 13
  %58 = call i32 @mp_image_unrefp(i32* %57)
  %59 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %60 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %59, i32 0, i32 12
  store i64 0, i64* %60, align 8
  %61 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %62 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %61, i32 0, i32 11
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @MP_NOPTS_VALUE, align 4
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %67 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %66, i32 0, i32 9
  store i64 0, i64* %67, align 8
  %68 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %69 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %68, i32 0, i32 8
  store i64 0, i64* %69, align 8
  %70 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 7
  store i64 0, i64* %71, align 8
  %72 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %73 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %75 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %77 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %79 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %81 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = icmp ne %struct.TYPE_4__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %53
  %85 = load i32, i32* @STATUS_SYNCING, align 4
  br label %88

86:                                               ; preds = %53
  %87 = load i32, i32* @STATUS_EOF, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %91 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  ret void
}

declare dso_local i32 @vo_chain_reset_state(%struct.TYPE_4__*) #1

declare dso_local i32 @mp_image_unrefp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
