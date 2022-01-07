; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_primary.c_PrimaryDirectSoundBuffer_SetFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_primary.c_PrimaryDirectSoundBuffer_SetFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@CDirectSoundBuffer = common dso_local global i32 0, align 4
@lpVtbl = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i32 0, align 4
@DSERR_GENERIC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PinId %u DeviceId %u\0A\00", align 1
@ULONG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"PinId %u Result %u\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"PrimaryDirectSoundBuffer8Impl_fnSetFormat failed\0A\00", align 1
@DSERR_INVALIDPARAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"PrimaryDirectSoundBuffer8Impl_fnSetFormat success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrimaryDirectSoundBuffer_SetFormat(i32 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CDirectSoundBuffer, align 4
  %14 = load i32, i32* @lpVtbl, align 4
  %15 = call i32 @CONTAINING_RECORD(i32 %12, i32 %13, i32 %14)
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = call i64 @SetPinFormat(i32* %25, %struct.TYPE_7__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @DS_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %91

31:                                               ; preds = %22
  %32 = load i32, i32* @DSERR_GENERIC, align 4
  store i32 %32, i32* %4, align 4
  br label %91

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %77, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @GetPinIdFromFilter(%struct.TYPE_9__* %37, i32 %38, i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @ULONG_MAX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %80

48:                                               ; preds = %34
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @OpenPin(i32 %53, i64 %54, %struct.TYPE_7__* %55, i32** %57, i32 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %61)
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %48
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %80

72:                                               ; preds = %48
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %72
  %78 = load i64, i64* @TRUE, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %34, label %80

80:                                               ; preds = %77, %66, %47
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @DSERR_INVALIDPARAM, align 4
  store i32 %87, i32* %4, align 4
  br label %91

88:                                               ; preds = %80
  %89 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @DS_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %85, %31, %29
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i64 @SetPinFormat(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @GetPinIdFromFilter(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i64 @OpenPin(i32, i64, %struct.TYPE_7__*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
