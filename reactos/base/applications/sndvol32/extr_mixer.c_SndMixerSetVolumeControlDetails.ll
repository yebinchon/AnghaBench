; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerSetVolumeControlDetails.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerSetVolumeControlDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i8*, i64, i8*, i8* }

@MIXER_SETCONTROLDETAILSF_VALUE = common dso_local global i32 0, align 4
@MIXER_OBJECTF_HMIXER = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SndMixerSetVolumeControlDetails(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 40, i32* %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @MIXER_SETCONTROLDETAILSF_VALUE, align 4
  %33 = load i32, i32* @MIXER_OBJECTF_HMIXER, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @mixerSetControlDetails(i32 %31, %struct.TYPE_6__* %12, i32 %34)
  %36 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %41

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %5
  store i32 -1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @mixerSetControlDetails(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
