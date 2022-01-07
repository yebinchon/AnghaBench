; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_hooks.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.coreaudio_data*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@input_callback = common dso_local global i32 0, align 4
@kAudioDevicePropertyDeviceIsAlive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"coreaudio_init_hooks\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"set disconnect callback\00", align 1
@PROPERTY_FORMATS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"set format change callback\00", align 1
@PROPERTY_DEFAULT_DEVICE = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i32 0, align 4
@notification_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"set device change callback\00", align 1
@kAudioOutputUnitProperty_SetInputCallback = common dso_local global i32 0, align 4
@SCOPE_GLOBAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"set input callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreaudio_data*)* @coreaudio_init_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreaudio_init_hooks(%struct.coreaudio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreaudio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %8 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  store %struct.coreaudio_data* %8, %struct.coreaudio_data** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %10 = load i32, i32* @input_callback, align 4
  store i32 %10, i32* %9, align 8
  %11 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %12 = load i32, i32* @kAudioDevicePropertyDeviceIsAlive, align 4
  %13 = call i32 @add_listener(%struct.coreaudio_data* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %16 = call i32 @ca_success(i32 %14, %struct.coreaudio_data* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %21 = load i32, i32* @PROPERTY_FORMATS, align 4
  %22 = call i32 @add_listener(%struct.coreaudio_data* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %25 = call i32 @ca_success(i32 %23, %struct.coreaudio_data* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %63

28:                                               ; preds = %19
  %29 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %30 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %35 = load i32, i32* @PROPERTY_DEFAULT_DEVICE, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %37 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %39 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %39, i32* %38, align 4
  %40 = load i32, i32* @kAudioObjectSystemObject, align 4
  %41 = load i32, i32* @notification_callback, align 4
  %42 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %43 = call i32 @AudioObjectAddPropertyListener(i32 %40, %struct.TYPE_5__* %6, i32 %41, %struct.coreaudio_data* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %46 = call i32 @ca_success(i32 %44, %struct.coreaudio_data* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %63

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %52 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @kAudioOutputUnitProperty_SetInputCallback, align 4
  %55 = load i32, i32* @SCOPE_GLOBAL, align 4
  %56 = call i32 @set_property(i32 %53, i32 %54, i32 %55, i32 0, %struct.TYPE_6__* %5, i32 16)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %59 = call i32 @ca_success(i32 %57, %struct.coreaudio_data* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %63

62:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %61, %48, %27, %18
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @add_listener(%struct.coreaudio_data*, i32) #1

declare dso_local i32 @ca_success(i32, %struct.coreaudio_data*, i8*, i8*) #1

declare dso_local i32 @AudioObjectAddPropertyListener(i32, %struct.TYPE_5__*, i32, %struct.coreaudio_data*) #1

declare dso_local i32 @set_property(i32, i32, i32, i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
