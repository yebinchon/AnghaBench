; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerSelect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32*, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@CALLBACK_WINDOW = common dso_local global i32 0, align 4
@MIXER_OBJECTF_MIXER = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@NO_MIXER_SELECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SndMixerSelect(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i32 @SndMixerClose(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @CALLBACK_WINDOW, align 4
  %25 = load i32, i32* @MIXER_OBJECTF_MIXER, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @mixerOpen(i32** %18, i64 %19, i32 %23, i32 0, i32 %26)
  %28 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %49, label %30

30:                                               ; preds = %14
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @CALLBACK_WINDOW, align 4
  %39 = call i64 @mixerOpen(i32** %32, i64 %33, i32 %37, i32 0, i32 %38)
  %40 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %30
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @mixerOpen(i32** %44, i64 %45, i32 0, i32 0, i32 0)
  %47 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %42, %30, %14
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = call i64 @mixerGetDevCaps(i64 %50, i32* %52, i32 4)
  %54 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = call i32 @ClearMixerCache(%struct.TYPE_6__* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = call i32 @SndMixerQueryDestinations(%struct.TYPE_6__* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %56
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = call i32 @ClearMixerCache(%struct.TYPE_6__* %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %85

72:                                               ; preds = %49
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @mixerClose(i32* %75)
  br label %77

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %42
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load i64, i64* @NO_MIXER_SELECTED, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %70, %12
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @SndMixerClose(%struct.TYPE_6__*) #1

declare dso_local i64 @mixerOpen(i32**, i64, i32, i32, i32) #1

declare dso_local i64 @mixerGetDevCaps(i64, i32*, i32) #1

declare dso_local i32 @ClearMixerCache(%struct.TYPE_6__*) #1

declare dso_local i32 @SndMixerQueryDestinations(%struct.TYPE_6__*) #1

declare dso_local i32 @mixerClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
