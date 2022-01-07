; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_primary.c_PrimaryDirectSoundBuffer_GetPosition.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_primary.c_PrimaryDirectSoundBuffer_GetPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CDirectSoundBuffer = common dso_local global i32 0, align 4
@lpVtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"No Audio Pin\0A\00", align 1
@DS_OK = common dso_local global i32 0, align 4
@KSPROPERTY_AUDIO_POSITION = common dso_local global i32 0, align 4
@KSPROPSETID_Audio = common dso_local global i32 0, align 4
@KSPROPERTY_TYPE_GET = common dso_local global i32 0, align 4
@IOCTL_KS_PROPERTY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"GetPosition failed with %x\0A\00", align 1
@DSERR_UNSUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrimaryDirectSoundBuffer_GetPosition(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CDirectSoundBuffer, align 4
  %14 = load i32, i32* @lpVtbl, align 4
  %15 = call i32 @CONTAINING_RECORD(i32 %12, i32 %13, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %11, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %3
  %23 = load i64*, i64** %6, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64*, i64** %6, align 8
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64*, i64** %7, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64*, i64** %7, align 8
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @DS_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %72

35:                                               ; preds = %3
  %36 = load i32, i32* @KSPROPERTY_AUDIO_POSITION, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @KSPROPSETID_Audio, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @KSPROPERTY_TYPE_GET, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IOCTL_KS_PROPERTY, align 4
  %46 = ptrtoint %struct.TYPE_5__* %9 to i32
  %47 = ptrtoint %struct.TYPE_6__* %8 to i32
  %48 = call i64 @SyncOverlappedDeviceIoControl(i32 %44, i32 %45, i32 %46, i32 12, i32 %47, i32 16, i32* null)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @ERROR_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load i64, i64* %10, align 8
  %54 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @DSERR_UNSUPPORTED, align 4
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %35
  %57 = load i64*, i64** %6, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i64*, i64** %7, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %7, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* @DS_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %52, %32
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @SyncOverlappedDeviceIoControl(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
