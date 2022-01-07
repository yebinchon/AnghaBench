; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-enum-devices.c_get_default_id.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-enum-devices.c_get_default_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_14__**)* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*, i32**)* }

@CLSID_MMDeviceEnumerator = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@IID_IMMDeviceEnumerator = common dso_local global i32 0, align 4
@eRender = common dso_local global i32 0, align 4
@eConsole = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @get_default_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_default_id(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %83

11:                                               ; preds = %1
  %12 = load i32, i32* @CLSCTX_ALL, align 4
  %13 = call i32 @CoCreateInstance(i32* @CLSID_MMDeviceEnumerator, i32* null, i32 %12, i32* @IID_IMMDeviceEnumerator, %struct.TYPE_13__** %3)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %48

18:                                               ; preds = %11
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_14__**)*, i32 (%struct.TYPE_13__*, i32, i32, %struct.TYPE_14__**)** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = load i32, i32* @eRender, align 4
  %26 = load i32, i32* @eConsole, align 4
  %27 = call i32 %23(%struct.TYPE_13__* %24, i32 %25, i32 %26, %struct.TYPE_14__** %4)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %48

32:                                               ; preds = %18
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_14__*, i32**)*, i32 (%struct.TYPE_14__*, i32**)** %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = call i32 %37(%struct.TYPE_14__* %38, i32** %5)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %48

44:                                               ; preds = %32
  %45 = load i32*, i32** %5, align 8
  %46 = load i8**, i8*** %2, align 8
  %47 = call i32 @os_wcs_to_utf8_ptr(i32* %45, i32 0, i8** %46)
  br label %48

48:                                               ; preds = %44, %43, %31, %17
  %49 = load i8**, i8*** %2, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = call i8* @bzalloc(i32 1)
  %54 = load i8**, i8*** %2, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = call i32 %63(%struct.TYPE_13__* %64)
  br label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = icmp ne %struct.TYPE_14__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %73, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = call i32 %74(%struct.TYPE_14__* %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load i32*, i32** %5, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @CoTaskMemFree(i32* %81)
  br label %83

83:                                               ; preds = %10, %80, %77
  ret void
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, %struct.TYPE_13__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @os_wcs_to_utf8_ptr(i32*, i32, i8**) #1

declare dso_local i8* @bzalloc(i32) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
