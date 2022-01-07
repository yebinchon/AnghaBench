; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_video.c_init_video_decoder.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_video.c_init_video_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.mp_filter* }
%struct.mp_filter = type { i32 }
%struct.track = type { i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mp_filter* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_video_decoder(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.track*, align 8
  %6 = alloca %struct.mp_filter*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store %struct.track* %1, %struct.track** %5, align 8
  %7 = load %struct.track*, %struct.track** %5, align 8
  %8 = getelementptr inbounds %struct.track, %struct.track* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.track*, %struct.track** %5, align 8
  %15 = getelementptr inbounds %struct.track, %struct.track* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %56

19:                                               ; preds = %2
  %20 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 0
  %22 = load %struct.mp_filter*, %struct.mp_filter** %21, align 8
  store %struct.mp_filter* %22, %struct.mp_filter** %6, align 8
  %23 = load %struct.track*, %struct.track** %5, align 8
  %24 = getelementptr inbounds %struct.track, %struct.track* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.track*, %struct.track** %5, align 8
  %29 = getelementptr inbounds %struct.track, %struct.track* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.mp_filter*, %struct.mp_filter** %33, align 8
  store %struct.mp_filter* %34, %struct.mp_filter** %6, align 8
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.mp_filter*, %struct.mp_filter** %6, align 8
  %37 = load %struct.track*, %struct.track** %5, align 8
  %38 = getelementptr inbounds %struct.track, %struct.track* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mp_decoder_wrapper_create(%struct.mp_filter* %36, i32 %39)
  %41 = load %struct.track*, %struct.track** %5, align 8
  %42 = getelementptr inbounds %struct.track, %struct.track* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.track*, %struct.track** %5, align 8
  %44 = getelementptr inbounds %struct.track, %struct.track* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %35
  br label %56

48:                                               ; preds = %35
  %49 = load %struct.track*, %struct.track** %5, align 8
  %50 = getelementptr inbounds %struct.track, %struct.track* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @mp_decoder_wrapper_reinit(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %56

55:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %72

56:                                               ; preds = %54, %47, %18
  %57 = load %struct.track*, %struct.track** %5, align 8
  %58 = getelementptr inbounds %struct.track, %struct.track* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.track*, %struct.track** %5, align 8
  %63 = getelementptr inbounds %struct.track, %struct.track* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @mp_pin_disconnect(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.track*, %struct.track** %5, align 8
  %68 = getelementptr inbounds %struct.track, %struct.track* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %70 = load %struct.track*, %struct.track** %5, align 8
  %71 = call i32 @error_on_track(%struct.MPContext* %69, %struct.track* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %55
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_decoder_wrapper_create(%struct.mp_filter*, i32) #1

declare dso_local i32 @mp_decoder_wrapper_reinit(i32) #1

declare dso_local i32 @mp_pin_disconnect(i32*) #1

declare dso_local i32 @error_on_track(%struct.MPContext*, %struct.track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
