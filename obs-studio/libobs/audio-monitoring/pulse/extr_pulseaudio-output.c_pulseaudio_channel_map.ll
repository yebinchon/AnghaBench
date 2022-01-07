; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_pulseaudio_channel_map.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_pulseaudio_channel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8** }

@PA_CHANNEL_POSITION_FRONT_LEFT = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_FRONT_RIGHT = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_FRONT_CENTER = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_LFE = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_REAR_LEFT = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_REAR_RIGHT = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_SIDE_LEFT = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_SIDE_RIGHT = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_MONO = common dso_local global i8* null, align 8
@PA_CHANNEL_POSITION_REAR_CENTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i8** } (i32)* @pulseaudio_channel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i8** } @pulseaudio_channel_map(i32 %0) #0 {
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_LEFT, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %6 = load i8**, i8*** %5, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  store i8* %4, i8** %7, align 8
  %8 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_RIGHT, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* %8, i8** %11, align 8
  %12 = load i8*, i8** @PA_CHANNEL_POSITION_FRONT_CENTER, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 2
  store i8* %12, i8** %15, align 8
  %16 = load i8*, i8** @PA_CHANNEL_POSITION_LFE, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 3
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** @PA_CHANNEL_POSITION_REAR_LEFT, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 4
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** @PA_CHANNEL_POSITION_REAR_RIGHT, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 5
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @PA_CHANNEL_POSITION_SIDE_LEFT, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 6
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @PA_CHANNEL_POSITION_SIDE_RIGHT, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 7
  store i8* %32, i8** %35, align 8
  %36 = load i32, i32* %3, align 4
  switch i32 %36, label %68 [
    i32 130, label %37
    i32 129, label %43
    i32 135, label %45
    i32 134, label %51
    i32 133, label %57
    i32 132, label %63
    i32 131, label %65
    i32 128, label %67
  ]

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i8*, i8** @PA_CHANNEL_POSITION_MONO, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %39, i8** %42, align 8
  br label %70

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 2, i32* %44, align 8
  br label %70

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 3, i32* %46, align 8
  %47 = load i8*, i8** @PA_CHANNEL_POSITION_LFE, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  store i8* %47, i8** %50, align 8
  br label %70

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 4, i32* %52, align 8
  %53 = load i8*, i8** @PA_CHANNEL_POSITION_REAR_CENTER, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 3
  store i8* %53, i8** %56, align 8
  br label %70

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 5, i32* %58, align 8
  %59 = load i8*, i8** @PA_CHANNEL_POSITION_REAR_CENTER, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 4
  store i8* %59, i8** %62, align 8
  br label %70

63:                                               ; preds = %1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 6, i32* %64, align 8
  br label %70

65:                                               ; preds = %1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 8, i32* %66, align 8
  br label %70

67:                                               ; preds = %1
  br label %68

68:                                               ; preds = %1, %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %68, %65, %63, %57, %51, %45, %43, %37
  %71 = bitcast %struct.TYPE_3__* %2 to { i32, i8** }*
  %72 = load { i32, i8** }, { i32, i8** }* %71, align 8
  ret { i32, i8** } %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
