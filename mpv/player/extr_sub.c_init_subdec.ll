; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_sub.c_init_subdec.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_sub.c_init_subdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.track***, i32 }
%struct.track = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mp_codec_params* }
%struct.mp_codec_params = type { i32 }

@STREAM_VIDEO = common dso_local global i64 0, align 8
@SD_CTRL_SET_VIDEO_DEF_FPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, %struct.track*)* @init_subdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_subdec(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.track*, align 8
  %6 = alloca %struct.track*, align 8
  %7 = alloca %struct.mp_codec_params*, align 8
  %8 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store %struct.track* %1, %struct.track** %5, align 8
  %9 = load %struct.track*, %struct.track** %5, align 8
  %10 = getelementptr inbounds %struct.track, %struct.track* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.track*, %struct.track** %5, align 8
  %17 = getelementptr inbounds %struct.track, %struct.track* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.track*, %struct.track** %5, align 8
  %22 = getelementptr inbounds %struct.track, %struct.track* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %83

26:                                               ; preds = %20
  %27 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.track*, %struct.track** %5, align 8
  %31 = getelementptr inbounds %struct.track, %struct.track* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %34 = call i32 @get_all_attachments(%struct.MPContext* %33)
  %35 = call i64 @sub_create(i32 %29, %struct.TYPE_2__* %32, i32 %34)
  %36 = load %struct.track*, %struct.track** %5, align 8
  %37 = getelementptr inbounds %struct.track, %struct.track* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.track*, %struct.track** %5, align 8
  %39 = getelementptr inbounds %struct.track, %struct.track* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %83

43:                                               ; preds = %26
  %44 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 0
  %46 = load %struct.track***, %struct.track**** %45, align 8
  %47 = getelementptr inbounds %struct.track**, %struct.track*** %46, i64 0
  %48 = load %struct.track**, %struct.track*** %47, align 8
  %49 = load i64, i64* @STREAM_VIDEO, align 8
  %50 = getelementptr inbounds %struct.track*, %struct.track** %48, i64 %49
  %51 = load %struct.track*, %struct.track** %50, align 8
  store %struct.track* %51, %struct.track** %6, align 8
  %52 = load %struct.track*, %struct.track** %6, align 8
  %53 = icmp ne %struct.track* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %43
  %55 = load %struct.track*, %struct.track** %6, align 8
  %56 = getelementptr inbounds %struct.track, %struct.track* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.track*, %struct.track** %6, align 8
  %61 = getelementptr inbounds %struct.track, %struct.track* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.mp_codec_params*, %struct.mp_codec_params** %63, align 8
  br label %66

65:                                               ; preds = %54, %43
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi %struct.mp_codec_params* [ %64, %59 ], [ null, %65 ]
  store %struct.mp_codec_params* %67, %struct.mp_codec_params** %7, align 8
  %68 = load %struct.mp_codec_params*, %struct.mp_codec_params** %7, align 8
  %69 = icmp ne %struct.mp_codec_params* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.mp_codec_params*, %struct.mp_codec_params** %7, align 8
  %72 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %70
  %76 = phi i32 [ %73, %70 ], [ 25, %74 ]
  %77 = sitofp i32 %76 to double
  store double %77, double* %8, align 8
  %78 = load %struct.track*, %struct.track** %5, align 8
  %79 = getelementptr inbounds %struct.track, %struct.track* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @SD_CTRL_SET_VIDEO_DEF_FPS, align 4
  %82 = call i32 @sub_control(i64 %80, i32 %81, double* %8)
  store i32 1, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %42, %25
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sub_create(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @get_all_attachments(%struct.MPContext*) #1

declare dso_local i32 @sub_control(i64, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
