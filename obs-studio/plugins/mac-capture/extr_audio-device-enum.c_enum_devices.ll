; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_audio-device-enum.c_enum_devices.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_audio-device-enum.c_enum_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@kAudioHardwarePropertyDevices = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"get kAudioObjectSystemObject data size\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"get kAudioObjectSystemObject data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @enum_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enum_devices(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %12 = load i32, i32* @kAudioHardwarePropertyDevices, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %14 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %16 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %16, i32* %15, align 4
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* @kAudioObjectSystemObject, align 4
  %18 = call i32 @AudioObjectGetPropertyDataSize(i32 %17, %struct.TYPE_4__* %5, i32 0, i32* null, i32* %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @enum_success(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %60

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32* @bmalloc(i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @kAudioObjectSystemObject, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @AudioObjectGetPropertyData(i32 %30, %struct.TYPE_4__* %5, i32 0, i32* null, i32* %6, i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @enum_success(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @coreaudio_enum_device(i32 %42, i8* %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %37

56:                                               ; preds = %51, %37
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @bfree(i32* %58)
  br label %60

60:                                               ; preds = %57, %22
  ret void
}

declare dso_local i32 @AudioObjectGetPropertyDataSize(i32, %struct.TYPE_4__*, i32, i32*, i32*) #1

declare dso_local i64 @enum_success(i32, i8*) #1

declare dso_local i32* @bmalloc(i32) #1

declare dso_local i32 @AudioObjectGetPropertyData(i32, %struct.TYPE_4__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @coreaudio_enum_device(i32, i8*, i32) #1

declare dso_local i32 @bfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
