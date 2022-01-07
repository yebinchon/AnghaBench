; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-enum-devices.c_get_device_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-enum-devices.c_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__**)* }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*, i32*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, i32, %struct.TYPE_20__**)*, i32 (%struct.TYPE_20__*, i32**)* }
%struct.TYPE_19__ = type { i32* }

@STGM_READ = common dso_local global i32 0, align 4
@PKEY_Device_FriendlyName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i8*, i8*, i8*)*, i8*, %struct.TYPE_21__*, i32)* @get_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_device_info(i32 (i8*, i8*, i8*)* %0, i8* %1, %struct.TYPE_21__* %2, i32 %3) #0 {
  %5 = alloca i32 (i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca [512 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 (i8*, i8*, i8*)* %0, i32 (i8*, i8*, i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %10, align 8
  store i32* null, i32** %13, align 8
  store i32 1, i32* %15, align 4
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__**)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_20__**)** %20, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 %21(%struct.TYPE_21__* %22, i32 %23, %struct.TYPE_20__** %10)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %80

29:                                               ; preds = %4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load i32 (%struct.TYPE_20__*, i32**)*, i32 (%struct.TYPE_20__*, i32**)** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %36 = call i32 %34(%struct.TYPE_20__* %35, i32** %13)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %80

41:                                               ; preds = %29
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i32 (%struct.TYPE_20__*, i32, %struct.TYPE_20__**)*, i32 (%struct.TYPE_20__*, i32, %struct.TYPE_20__**)** %45, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %48 = load i32, i32* @STGM_READ, align 4
  %49 = call i32 %46(%struct.TYPE_20__* %47, i32 %48, %struct.TYPE_20__** %9)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %80

54:                                               ; preds = %41
  %55 = call i32 @PropVariantInit(%struct.TYPE_19__* %11)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_20__*, i32*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_20__*, i32*, %struct.TYPE_19__*)** %59, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = call i32 %60(%struct.TYPE_20__* %61, i32* @PKEY_Device_FriendlyName, %struct.TYPE_19__* %11)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %80

67:                                               ; preds = %54
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %70 = call i32 @os_wcs_to_utf8(i32* %68, i32 0, i8* %69, i32 512)
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %74 = call i32 @os_wcs_to_utf8(i32* %72, i32 0, i8* %73, i32 512)
  %75 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %79 = call i32 %75(i8* %76, i8* %77, i8* %78)
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %67, %66, %53, %40, %28
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = call i32 @safe_release(%struct.TYPE_20__* %81)
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %84 = call i32 @safe_release(%struct.TYPE_20__* %83)
  %85 = load i32*, i32** %13, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @CoTaskMemFree(i32* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load i32, i32* %15, align 4
  ret i32 %91
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @PropVariantInit(%struct.TYPE_19__*) #1

declare dso_local i32 @os_wcs_to_utf8(i32*, i32, i8*, i32) #1

declare dso_local i32 @safe_release(%struct.TYPE_20__*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
