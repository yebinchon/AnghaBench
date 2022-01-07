; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_cleanup_deassociated_complex_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_cleanup_deassociated_complex_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.track** }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.track = type { i32, %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @cleanup_deassociated_complex_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_deassociated_complex_filters(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %64

11:                                               ; preds = %5
  %12 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 3
  %14 = load %struct.track**, %struct.track*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.track*, %struct.track** %14, i64 %16
  %18 = load %struct.track*, %struct.track** %17, align 8
  store %struct.track* %18, %struct.track** %4, align 8
  %19 = load %struct.track*, %struct.track** %4, align 8
  %20 = getelementptr inbounds %struct.track, %struct.track* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %11
  %24 = load %struct.track*, %struct.track** %4, align 8
  %25 = getelementptr inbounds %struct.track, %struct.track* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %60, label %28

28:                                               ; preds = %23
  %29 = load %struct.track*, %struct.track** %4, align 8
  %30 = getelementptr inbounds %struct.track, %struct.track* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %28
  %34 = load %struct.track*, %struct.track** %4, align 8
  %35 = getelementptr inbounds %struct.track, %struct.track* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.track*, %struct.track** %4, align 8
  %40 = getelementptr inbounds %struct.track, %struct.track* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = load %struct.track*, %struct.track** %4, align 8
  %45 = getelementptr inbounds %struct.track, %struct.track* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load %struct.track*, %struct.track** %4, align 8
  %50 = getelementptr inbounds %struct.track, %struct.track* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @talloc_free(i32 %53)
  %55 = load %struct.track*, %struct.track** %4, align 8
  %56 = getelementptr inbounds %struct.track, %struct.track* %55, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %56, align 8
  br label %57

57:                                               ; preds = %48, %43, %38, %33
  %58 = load %struct.track*, %struct.track** %4, align 8
  %59 = getelementptr inbounds %struct.track, %struct.track* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %28, %23, %11
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %5

64:                                               ; preds = %5
  %65 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %66 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %69
  %77 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %78 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %85 = call i32 @uninit_video_chain(%struct.MPContext* %84)
  br label %86

86:                                               ; preds = %83, %76, %69, %64
  %87 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %88 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %91
  %99 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %100 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %107 = call i32 @uninit_audio_chain(%struct.MPContext* %106)
  br label %108

108:                                              ; preds = %105, %98, %91, %86
  ret void
}

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @uninit_video_chain(%struct.MPContext*) #1

declare dso_local i32 @uninit_audio_chain(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
