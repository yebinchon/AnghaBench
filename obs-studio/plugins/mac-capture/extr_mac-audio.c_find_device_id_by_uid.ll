; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_find_device_id_by_uid.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_find_device_id_by_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@PROPERTY_DEFAULT_DEVICE = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreaudio_data*)* @find_device_id_by_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_device_id_by_uid(%struct.coreaudio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreaudio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %3, align 8
  store i32 4, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %13 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %15 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %17 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i64 @bstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %23 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %26 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %28 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %30 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @astrcmpi(i64 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %24
  %35 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %36 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %41 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %50

42:                                               ; preds = %34
  %43 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %44 = call i32 @get_default_output_device(%struct.coreaudio_data* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %48 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %86

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %53 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %56 = call i32* @CFStringCreateWithCString(i32* null, i64 %54, i32 %55)
  store i32* %56, i32** %5, align 8
  %57 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %58 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %51
  %62 = load i32, i32* @PROPERTY_DEFAULT_DEVICE, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @kAudioObjectSystemObject, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %67 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %66, i32 0, i32 2
  %68 = call i64 @AudioObjectGetPropertyData(i32 %64, %struct.TYPE_3__* %10, i32 %65, i32** %6, i32* %4, i32* %67)
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @noErr, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %78

73:                                               ; preds = %51
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %76 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %75, i32 0, i32 2
  %77 = call i32 @coreaudio_get_device_id(i32* %74, i32* %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %73, %61
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @CFRelease(i32* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %46
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @bstrdup(i8*) #1

declare dso_local i64 @astrcmpi(i64, i8*) #1

declare dso_local i32 @get_default_output_device(%struct.coreaudio_data*) #1

declare dso_local i32* @CFStringCreateWithCString(i32*, i64, i32) #1

declare dso_local i64 @AudioObjectGetPropertyData(i32, %struct.TYPE_3__*, i32, i32**, i32*, i32*) #1

declare dso_local i32 @coreaudio_get_device_id(i32*, i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
