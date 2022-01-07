; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_audio.c_init_audio_decoder.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_audio.c_init_audio_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.track = type { i32*, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_audio_decoder(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store %struct.track* %1, %struct.track** %5, align 8
  %6 = load %struct.track*, %struct.track** %5, align 8
  %7 = getelementptr inbounds %struct.track, %struct.track* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.track*, %struct.track** %5, align 8
  %14 = getelementptr inbounds %struct.track, %struct.track* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %20 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.track*, %struct.track** %5, align 8
  %23 = getelementptr inbounds %struct.track, %struct.track* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_3__* @mp_decoder_wrapper_create(i32 %21, i32 %24)
  %26 = load %struct.track*, %struct.track** %5, align 8
  %27 = getelementptr inbounds %struct.track, %struct.track* %26, i32 0, i32 1
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  %28 = load %struct.track*, %struct.track** %5, align 8
  %29 = getelementptr inbounds %struct.track, %struct.track* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  br label %51

33:                                               ; preds = %18
  %34 = load %struct.track*, %struct.track** %5, align 8
  %35 = getelementptr inbounds %struct.track, %struct.track* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.track*, %struct.track** %5, align 8
  %40 = getelementptr inbounds %struct.track, %struct.track* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.track*, %struct.track** %5, align 8
  %45 = getelementptr inbounds %struct.track, %struct.track* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @mp_decoder_wrapper_reinit(%struct.TYPE_3__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %67

51:                                               ; preds = %49, %32, %17
  %52 = load %struct.track*, %struct.track** %5, align 8
  %53 = getelementptr inbounds %struct.track, %struct.track* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.track*, %struct.track** %5, align 8
  %58 = getelementptr inbounds %struct.track, %struct.track* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @mp_pin_disconnect(i32* %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.track*, %struct.track** %5, align 8
  %63 = getelementptr inbounds %struct.track, %struct.track* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %65 = load %struct.track*, %struct.track** %5, align 8
  %66 = call i32 @error_on_track(%struct.MPContext* %64, %struct.track* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %50
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @mp_decoder_wrapper_create(i32, i32) #1

declare dso_local i32 @mp_decoder_wrapper_reinit(%struct.TYPE_3__*) #1

declare dso_local i32 @mp_pin_disconnect(i32*) #1

declare dso_local i32 @error_on_track(%struct.MPContext*, %struct.track*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
