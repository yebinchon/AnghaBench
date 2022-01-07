; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_load_mapping_settings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_device.c_load_mapping_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@S_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@load_mapping_settings.format = internal constant [3 x i8] c"%x\00", align 1
@DIAH_USERCONFIG = common dso_local global i32 0, align 4
@DIAH_UNMAPPED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_mapping_settings(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [9 x i8], align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 12, i32* %15, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = call i32 @IDirectInputDevice8_GetDeviceInfo(i32* %17, %struct.TYPE_11__* %10)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = call i64 @StringFromCLSID(i32* %20, i8** %9)
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %115

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @get_mapping_key(i32 %28, i8* %29, i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @CoTaskMemFree(i8* %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %115

39:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %106, %39
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %109

46:                                               ; preds = %40
  store i32 4, i32* %13, align 4
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sprintfW(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @load_mapping_settings.format, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %14, i64 0, i64 0
  %59 = ptrtoint i32* %12 to i32
  %60 = call i32 @RegQueryValueExW(i32 %57, i8* %58, i32 0, i32* null, i32 %59, i32* %13)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i32 %72, i32* %79, align 4
  %80 = load i32, i32* @DIAH_USERCONFIG, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i32 %80, i32* %87, align 4
  br label %105

88:                                               ; preds = %46
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = call i32 @memset(i32* %95, i32 0, i32 4)
  %97 = load i32, i32* @DIAH_UNMAPPED, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %88, %62
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %40

109:                                              ; preds = %40
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @RegCloseKey(i32 %110)
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @CoTaskMemFree(i8* %112)
  %114 = load i32, i32* @TRUE, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %35, %24
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @IDirectInputDevice8_GetDeviceInfo(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @StringFromCLSID(i32*, i8**) #1

declare dso_local i32 @get_mapping_key(i32, i8*, i8*, i32) #1

declare dso_local i32 @CoTaskMemFree(i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @RegQueryValueExW(i32, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
