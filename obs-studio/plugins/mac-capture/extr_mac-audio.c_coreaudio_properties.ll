; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_list = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.device_item* }
%struct.device_item = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@TEXT_DEVICE = common dso_local global i32 0, align 4
@OBS_COMBO_TYPE_LIST = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@TEXT_DEVICE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @coreaudio_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @coreaudio_properties(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device_list, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device_item*, align 8
  store i32 %0, i32* %2, align 4
  %8 = call i32* (...) @obs_properties_create()
  store i32* %8, i32** %3, align 8
  %9 = call i32 @memset(%struct.device_list* %5, i32 0, i32 16)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @TEXT_DEVICE, align 4
  %12 = load i32, i32* @OBS_COMBO_TYPE_LIST, align 4
  %13 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %14 = call i32* @obs_properties_add_list(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @coreaudio_enum_devices(%struct.device_list* %5, i32 %15)
  %17 = getelementptr inbounds %struct.device_list, %struct.device_list* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @TEXT_DEVICE_DEFAULT, align 4
  %24 = call i32 @obs_property_list_add_string(i32* %22, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %1
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.device_list, %struct.device_list* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.device_list, %struct.device_list* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.device_item*, %struct.device_item** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.device_item, %struct.device_item* %35, i64 %36
  store %struct.device_item* %37, %struct.device_item** %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.device_item*, %struct.device_item** %7, align 8
  %40 = getelementptr inbounds %struct.device_item, %struct.device_item* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.device_item*, %struct.device_item** %7, align 8
  %44 = getelementptr inbounds %struct.device_item, %struct.device_item* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @obs_property_list_add_string(i32* %38, i32 %42, i8* %46)
  br label %48

48:                                               ; preds = %32
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %26

51:                                               ; preds = %26
  %52 = call i32 @device_list_free(%struct.device_list* %5)
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i32* @obs_properties_create(...) #1

declare dso_local i32 @memset(%struct.device_list*, i32, i32) #1

declare dso_local i32* @obs_properties_add_list(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @coreaudio_enum_devices(%struct.device_list*, i32) #1

declare dso_local i32 @obs_property_list_add_string(i32*, i32, i8*) #1

declare dso_local i32 @device_list_free(%struct.device_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
