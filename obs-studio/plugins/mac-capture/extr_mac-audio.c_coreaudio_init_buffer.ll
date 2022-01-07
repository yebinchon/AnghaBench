; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@kAudioDevicePropertyStreamConfiguration = common dso_local global i32 0, align 4
@kAudioDevicePropertyScopeInput = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"coreaudio_init_buffer\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"get list size\00", align 1
@kAudioDevicePropertyBufferFrameSize = common dso_local global i32 0, align 4
@SCOPE_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"get frame size\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreaudio_data*)* @coreaudio_init_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreaudio_init_buffer(%struct.coreaudio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreaudio_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i64, align 8
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %11 = load i32, i32* @kAudioDevicePropertyStreamConfiguration, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %13 = load i32, i32* @kAudioDevicePropertyScopeInput, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %15 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %17 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @AudioObjectGetPropertyDataSize(i32 %18, %struct.TYPE_8__* %8, i32 0, i32* null, i64* %4)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %22 = call i32 @ca_success(i32 %20, %struct.coreaudio_data* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

25:                                               ; preds = %1
  store i64 8, i64* %5, align 8
  %26 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %27 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @kAudioDevicePropertyBufferFrameSize, align 4
  %30 = load i32, i32* @SCOPE_GLOBAL, align 4
  %31 = call i32 @get_property(i32 %28, i32 %29, i32 %30, i32 0, i64* %6, i64* %5)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %34 = call i32 @ca_success(i32 %32, %struct.coreaudio_data* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %94

37:                                               ; preds = %25
  %38 = load i64, i64* %4, align 8
  %39 = call i8* @bmalloc(i64 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_9__*
  %41 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %42 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %41, i32 0, i32 0
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %44 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %47 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i32 @AudioObjectGetPropertyData(i32 %45, %struct.TYPE_8__* %8, i32 0, i32* null, i64* %4, %struct.TYPE_9__* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %52 = call i32 @ca_success(i32 %50, %struct.coreaudio_data* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %37
  %55 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %56 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i32 @bfree(%struct.TYPE_9__* %57)
  %59 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %60 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %59, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %60, align 8
  store i32 0, i32* %2, align 4
  br label %94

61:                                               ; preds = %37
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %90, %61
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %65 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %62
  %71 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %72 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i8* @bmalloc(i64 %80)
  %82 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %83 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i8* %81, i8** %89, align 8
  br label %90

90:                                               ; preds = %70
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %62

93:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %54, %36, %24
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @AudioObjectGetPropertyDataSize(i32, %struct.TYPE_8__*, i32, i32*, i64*) #1

declare dso_local i32 @ca_success(i32, %struct.coreaudio_data*, i8*, i8*) #1

declare dso_local i32 @get_property(i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i8* @bmalloc(i64) #1

declare dso_local i32 @AudioObjectGetPropertyData(i32, %struct.TYPE_8__*, i32, i32*, i64*, %struct.TYPE_9__*) #1

declare dso_local i32 @bfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
