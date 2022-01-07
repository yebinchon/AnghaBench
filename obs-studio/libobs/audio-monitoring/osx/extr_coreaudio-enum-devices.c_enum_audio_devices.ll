; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-enum-devices.c_enum_audio_devices.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-enum-devices.c_enum_audio_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@kAudioHardwarePropertyDevices = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"get data size\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"get data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @enum_audio_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_audio_devices(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %14 = load i32, i32* @kAudioHardwarePropertyDevices, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %16 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %18 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %18, i32* %17, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @kAudioObjectSystemObject, align 4
  %20 = call i32 @AudioObjectGetPropertyDataSize(i32 %19, %struct.TYPE_4__* %7, i32 0, i32* null, i32* %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @success(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %63

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = call i32* @malloc(i32 %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @kAudioObjectSystemObject, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @AudioObjectGetPropertyData(i32 %32, %struct.TYPE_4__* %7, i32 0, i32* null, i32* %8, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @success(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @obs_enum_audio_monitoring_device(i32 %44, i8* %45, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %43
  br label %59

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %39

59:                                               ; preds = %54, %39
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @free(i32* %61)
  br label %63

63:                                               ; preds = %60, %24
  ret void
}

declare dso_local i32 @AudioObjectGetPropertyDataSize(i32, %struct.TYPE_4__*, i32, i32*, i32*) #1

declare dso_local i64 @success(i32, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @AudioObjectGetPropertyData(i32, %struct.TYPE_4__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @obs_enum_audio_monitoring_device(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
