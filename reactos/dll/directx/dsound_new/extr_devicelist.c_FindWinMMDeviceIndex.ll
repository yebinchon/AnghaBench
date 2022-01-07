; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_devicelist.c_FindWinMMDeviceIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_devicelist.c_FindWinMMDeviceIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@DRV_QUERYDEVICEINTERFACESIZE = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Failed DRV_QUERYDEVICEINTERFACESIZE with %lx bRecord %u Index %u\0A\00", align 1
@DRV_QUERYDEVICEINTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Failed DRV_QUERYDEVICEINTERFACE with %lx bRecord %u Index %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to find device %ws bRecord %u Count %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindWinMMDeviceIndex(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i64 (...) @waveInGetNumDevs()
  store i64 %20, i64* %6, align 8
  br label %23

21:                                               ; preds = %2
  %22 = call i64 (...) @waveOutGetNumDevs()
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %19
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %108, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %111

28:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @UlongToHandle(i64 %32)
  %34 = load i32, i32* @DRV_QUERYDEVICEINTERFACESIZE, align 4
  %35 = ptrtoint i64* %10 to i32
  %36 = call i64 @waveInMessage(i32 %33, i32 %34, i32 %35, i32 0)
  store i64 %36, i64* %11, align 8
  br label %43

37:                                               ; preds = %28
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @UlongToHandle(i64 %38)
  %40 = load i32, i32* @DRV_QUERYDEVICEINTERFACESIZE, align 4
  %41 = ptrtoint i64* %10 to i32
  %42 = call i64 @waveOutMessage(i32 %39, i32 %40, i32 %41, i32 0)
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @DPRINT(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %48, i32 %49, i64 %50)
  br label %108

52:                                               ; preds = %43
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* @MAX_PATH, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @UlongToHandle(i64 %62)
  %64 = load i32, i32* @DRV_QUERYDEVICEINTERFACE, align 4
  %65 = ptrtoint i32* %16 to i32
  %66 = load i32, i32* @MAX_PATH, align 4
  %67 = call i64 @waveInMessage(i32 %63, i32 %64, i32 %65, i32 %66)
  store i64 %67, i64* %11, align 8
  br label %75

68:                                               ; preds = %52
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @UlongToHandle(i64 %69)
  %71 = load i32, i32* @DRV_QUERYDEVICEINTERFACE, align 4
  %72 = ptrtoint i32* %16 to i32
  %73 = load i32, i32* @MAX_PATH, align 4
  %74 = call i64 @waveOutMessage(i32 %70, i32 %71, i32 %72, i32 %73)
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @DPRINT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %80, i32 %81, i64 %82)
  br label %108

84:                                               ; preds = %75
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @wcsicmp(i32 %87, i32* %16)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i64, i64* %7, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 %94, i64* %98, align 8
  br label %105

99:                                               ; preds = %90
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  store i64 %100, i64* %104, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107, %79, %47
  %109 = load i64, i64* %7, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %7, align 8
  br label %24

111:                                              ; preds = %24
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @DPRINT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115, i64 %116)
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  store i64 0, i64* %124, align 8
  br label %130

125:                                              ; preds = %111
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 1
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %132

132:                                              ; preds = %130, %105
  %133 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @waveInGetNumDevs(...) #2

declare dso_local i64 @waveOutGetNumDevs(...) #2

declare dso_local i64 @waveInMessage(i32, i32, i32, i32) #2

declare dso_local i32 @UlongToHandle(i64) #2

declare dso_local i64 @waveOutMessage(i32, i32, i32, i32) #2

declare dso_local i32 @DPRINT(i8*, i64, i32, i64) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @wcsicmp(i32, i32*) #2

declare dso_local i32 @DPRINT1(i8*, i32, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
