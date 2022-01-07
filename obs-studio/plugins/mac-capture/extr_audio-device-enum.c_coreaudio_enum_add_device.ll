; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_audio-device-enum.c_coreaudio_enum_add_device.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_audio-device-enum.c_coreaudio_enum_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.add_data = type { i32, i64 }
%struct.device_item = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@kCFStringEncodingUTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @coreaudio_enum_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreaudio_enum_add_device(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.add_data*, align 8
  %10 = alloca %struct.device_item, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.add_data*
  store %struct.add_data* %12, %struct.add_data** %9, align 8
  %13 = call i32 @memset(%struct.device_item* %10, i32 0, i32 8)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %16 = getelementptr inbounds %struct.device_item, %struct.device_item* %10, i32 0, i32 1
  %17 = call i32 @cfstr_copy_dstr(i32 %14, i32 %15, %struct.TYPE_2__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %44

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @kCFStringEncodingUTF8, align 4
  %23 = getelementptr inbounds %struct.device_item, %struct.device_item* %10, i32 0, i32 0
  %24 = call i32 @cfstr_copy_dstr(i32 %21, i32 %22, %struct.TYPE_2__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %44

27:                                               ; preds = %20
  %28 = load %struct.add_data*, %struct.add_data** %9, align 8
  %29 = getelementptr inbounds %struct.add_data, %struct.add_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.device_item, %struct.device_item* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_is_input(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.add_data*, %struct.add_data** %9, align 8
  %40 = getelementptr inbounds %struct.add_data, %struct.add_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @device_list_add(i32 %41, %struct.device_item* %10)
  br label %43

43:                                               ; preds = %38, %32
  br label %44

44:                                               ; preds = %43, %26, %19
  %45 = call i32 @device_item_free(%struct.device_item* %10)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @UNUSED_PARAMETER(i32 %46)
  ret i32 1
}

declare dso_local i32 @memset(%struct.device_item*, i32, i32) #1

declare dso_local i32 @cfstr_copy_dstr(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @device_is_input(i32) #1

declare dso_local i32 @device_list_add(i32, %struct.device_item*) #1

declare dso_local i32 @device_item_free(%struct.device_item*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
