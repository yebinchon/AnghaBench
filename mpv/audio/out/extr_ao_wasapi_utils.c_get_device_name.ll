; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_get_device_name.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_get_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_5__ = type { i32 }

@STGM_READ = common dso_local global i32 0, align 4
@mp_PKEY_Device_FriendlyName = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed getting device name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mp_log*, i8*, i32*)* @get_device_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_device_name(%struct.mp_log* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = call i32 @PropVariantInit(%struct.TYPE_5__* %9)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @STGM_READ, align 4
  %14 = call i32 @IMMDevice_OpenPropertyStore(i32* %12, i32 %13, i32** %8)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @EXIT_ON_ERROR(i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @IPropertyStore_GetValue(i32* %17, i32* @mp_PKEY_Device_FriendlyName, %struct.TYPE_5__* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @EXIT_ON_ERROR(i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @mp_to_utf8(i8* %21, i32 %23)
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @mp_HRESULT_to_str(i32 %31)
  %33 = call i32 @mp_warn(%struct.mp_log* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %25
  %35 = call i32 @PropVariantClear(%struct.TYPE_5__* %9)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @SAFE_RELEASE(i32* %36)
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @talloc_strdup(i8* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i8* [ %41, %40 ], [ %44, %42 ]
  ret i8* %46
}

declare dso_local i32 @PropVariantInit(%struct.TYPE_5__*) #1

declare dso_local i32 @IMMDevice_OpenPropertyStore(i32*, i32, i32**) #1

declare dso_local i32 @EXIT_ON_ERROR(i32) #1

declare dso_local i32 @IPropertyStore_GetValue(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i8* @mp_to_utf8(i8*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @PropVariantClear(%struct.TYPE_5__*) #1

declare dso_local i32 @SAFE_RELEASE(i32*) #1

declare dso_local i8* @talloc_strdup(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
