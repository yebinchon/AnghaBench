; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_hotplug_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio.c_hotplug_init.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @hotplug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotplug_init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ao* %0, %struct.ao** %3, align 8
  %9 = load %struct.ao*, %struct.ao** %3, align 8
  %10 = call i32 @reinit_device(%struct.ao* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %57

13:                                               ; preds = %1
  %14 = load i64, i64* @noErr, align 8
  store i64 %14, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %53, %13
  %16 = load i32, i32* %5, align 4
  %17 = load i64*, i64** @hotplug_properties, align 8
  %18 = call i32 @MP_ARRAY_SIZE(i64* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %22 = load i64*, i64** @hotplug_properties, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %21, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %28 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %30 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  store i32 %30, i32* %29, align 4
  %31 = load i32, i32* @kAudioObjectSystemObject, align 4
  %32 = load i32, i32* @hotplug_cb, align 4
  %33 = load %struct.ao*, %struct.ao** %3, align 8
  %34 = bitcast %struct.ao* %33 to i8*
  %35 = call i64 @AudioObjectAddPropertyListener(i32 %31, %struct.TYPE_3__* %6, i32 %32, i8* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @noErr, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %20
  %40 = load i64*, i64** @hotplug_properties, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @mp_tag_str(i64 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i8* @mp_tag_str(i64 %46)
  store i8* %47, i8** %8, align 8
  %48 = load %struct.ao*, %struct.ao** %3, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @MP_ERR(%struct.ao* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  br label %57

52:                                               ; preds = %20
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %15

56:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %58

57:                                               ; preds = %39, %12
  store i32 -1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @reinit_device(%struct.ao*) #1

declare dso_local i32 @MP_ARRAY_SIZE(i64*) #1

declare dso_local i64 @AudioObjectAddPropertyListener(i32, %struct.TYPE_3__*, i32, i8*) #1

declare dso_local i8* @mp_tag_str(i64) #1

declare dso_local i32 @MP_ERR(%struct.ao*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
