; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_enable_property_listener.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_enable_property_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@kAudioDevicePropertyDeviceHasChanged = common dso_local global i32 0, align 4
@kAudioHardwarePropertyDevices = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i32 0, align 4
@noErr = common dso_local global i64 0, align 8
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@property_listener_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ao*, i32)* @enable_property_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enable_property_listener(%struct.ao* %0, i32 %1) #0 {
  %3 = alloca %struct.ao*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ao*, %struct.ao** %3, align 8
  %14 = getelementptr inbounds %struct.ao, %struct.ao* %13, i32 0, i32 0
  %15 = load %struct.priv*, %struct.priv** %14, align 8
  store %struct.priv* %15, %struct.priv** %5, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* @kAudioDevicePropertyDeviceHasChanged, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @kAudioHardwarePropertyDevices, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %21 = load %struct.priv*, %struct.priv** %5, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = load i32, i32* @kAudioObjectSystemObject, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %27 = call i32 @MP_ARRAY_SIZE(i32* %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = call i32 @MP_ARRAY_SIZE(i32* %28)
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* @noErr, align 8
  store i64 %33, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %72, %2
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %37 = call i32 @MP_ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %40, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %46 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %48 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %48, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %39
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @property_listener_cb, align 4
  %58 = load %struct.ao*, %struct.ao** %3, align 8
  %59 = call i64 @AudioObjectAddPropertyListener(i32 %56, %struct.TYPE_4__* %10, i32 %57, %struct.ao* %58)
  store i64 %59, i64* %12, align 8
  br label %65

60:                                               ; preds = %39
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @property_listener_cb, align 4
  %63 = load %struct.ao*, %struct.ao** %3, align 8
  %64 = call i64 @AudioObjectRemovePropertyListener(i32 %61, %struct.TYPE_4__* %10, i32 %62, %struct.ao* %63)
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @noErr, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* %12, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %34

75:                                               ; preds = %34
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_ARRAY_SIZE(i32*) #1

declare dso_local i64 @AudioObjectAddPropertyListener(i32, %struct.TYPE_4__*, i32, %struct.ao*) #1

declare dso_local i64 @AudioObjectRemovePropertyListener(i32, %struct.TYPE_4__*, i32, %struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
