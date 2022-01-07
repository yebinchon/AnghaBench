; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_remove_hooks.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_remove_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i64, i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@kAudioDevicePropertyDeviceIsAlive = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@notification_callback = common dso_local global i32 0, align 4
@PROPERTY_FORMATS = common dso_local global i32 0, align 4
@PROPERTY_DEFAULT_DEVICE = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i32 0, align 4
@kAudioOutputUnitProperty_SetInputCallback = common dso_local global i32 0, align 4
@SCOPE_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coreaudio_data*)* @coreaudio_remove_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coreaudio_remove_hooks(%struct.coreaudio_data* %0) #0 {
  %2 = alloca %struct.coreaudio_data*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %2, align 8
  %5 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %7 = load i32, i32* @kAudioDevicePropertyDeviceIsAlive, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %9 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %11 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %14 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @notification_callback, align 4
  %17 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %18 = call i32 @AudioObjectRemovePropertyListener(i32 %15, %struct.TYPE_5__* %4, i32 %16, %struct.coreaudio_data* %17)
  %19 = load i32, i32* @PROPERTY_FORMATS, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %22 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @notification_callback, align 4
  %25 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %26 = call i32 @AudioObjectRemovePropertyListener(i32 %23, %struct.TYPE_5__* %4, i32 %24, %struct.coreaudio_data* %25)
  %27 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %28 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load i32, i32* @PROPERTY_DEFAULT_DEVICE, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @kAudioObjectSystemObject, align 4
  %35 = load i32, i32* @notification_callback, align 4
  %36 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %37 = call i32 @AudioObjectRemovePropertyListener(i32 %34, %struct.TYPE_5__* %4, i32 %35, %struct.coreaudio_data* %36)
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %40 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @kAudioOutputUnitProperty_SetInputCallback, align 4
  %43 = load i32, i32* @SCOPE_GLOBAL, align 4
  %44 = call i32 @set_property(i32 %41, i32 %42, i32 %43, i32 0, %struct.TYPE_6__* %3, i32 16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AudioObjectRemovePropertyListener(i32, %struct.TYPE_5__*, i32, %struct.coreaudio_data*) #2

declare dso_local i32 @set_property(i32, i32, i32, i32, %struct.TYPE_6__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
