; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_get_device_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_get_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@kAudioDevicePropertyDeviceNameCFString = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeInput = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"[coreaudio_get_device_name] failed to get name: %d\00", align 1
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"[coreaudio_get_device_name] failed to convert name to cstr for some reason\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreaudio_data*)* @coreaudio_get_device_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreaudio_get_device_name(%struct.coreaudio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreaudio_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i64, align 8
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 8, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %10 = load i32, i32* @kAudioDevicePropertyDeviceNameCFString, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %12 = load i32, i32* @kAudioObjectPropertyScopeInput, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %14 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %16 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @AudioObjectGetPropertyData(i32 %17, %struct.TYPE_3__* %7, i32 0, i32* null, i32* %5, i32** %4)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @noErr, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @LOG_WARNING, align 4
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32, i8*, ...) @blog(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %50

27:                                               ; preds = %1
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %30 = call i8* @cfstr_copy_cstr(i32* %28, i32 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @LOG_WARNING, align 4
  %35 = call i32 (i32, i8*, ...) @blog(i32 %34, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

36:                                               ; preds = %27
  %37 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %38 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @bfree(i8* %39)
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %43 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @CFRelease(i32* %47)
  br label %49

49:                                               ; preds = %46, %36
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %33, %22
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @AudioObjectGetPropertyData(i32, %struct.TYPE_3__*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i8* @cfstr_copy_cstr(i32*, i32) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @CFRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
