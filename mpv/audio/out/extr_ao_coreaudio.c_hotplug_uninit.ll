; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_hotplug_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_hotplug_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@noErr = common dso_local global i64 0, align 8
@hotplug_properties = common dso_local global i64* null, align 8
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i32 0, align 4
@hotplug_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to set device listener %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @hotplug_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hotplug_uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %8 = load i64, i64* @noErr, align 8
  store i64 %8, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %47, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i64*, i64** @hotplug_properties, align 8
  %12 = call i32 @MP_ARRAY_SIZE(i64* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %16 = load i64*, i64** @hotplug_properties, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %22 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %24 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i32, i32* @kAudioObjectSystemObject, align 4
  %26 = load i32, i32* @hotplug_cb, align 4
  %27 = load %struct.ao*, %struct.ao** %2, align 8
  %28 = bitcast %struct.ao* %27 to i8*
  %29 = call i64 @AudioObjectRemovePropertyListener(i32 %25, %struct.TYPE_3__* %5, i32 %26, i8* %28)
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @noErr, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %14
  %34 = load i64*, i64** @hotplug_properties, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @mp_tag_str(i64 %38)
  store i8* %39, i8** %6, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i8* @mp_tag_str(i64 %40)
  store i8* %41, i8** %7, align 8
  %42 = load %struct.ao*, %struct.ao** %2, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @MP_ERR(%struct.ao* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %33, %14
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %9

50:                                               ; preds = %9
  ret void
}

declare dso_local i32 @MP_ARRAY_SIZE(i64*) #1

declare dso_local i64 @AudioObjectRemovePropertyListener(i32, %struct.TYPE_3__*, i32, i8*) #1

declare dso_local i8* @mp_tag_str(i64) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
