; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerQueryConnections.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerQueryConnections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, i64, i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }
%struct.TYPE_12__ = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@MIXER_GETLINEINFOF_SOURCE = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"++ Source: %ws\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to query connection controls\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to get connection information: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @SndMixerQueryConnections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SndMixerQueryConnections(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  store i32 32, i32* %13, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %85, %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %88

21:                                               ; preds = %18
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %27, 1
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @MIXER_GETLINEINFOF_SOURCE, align 4
  %35 = call i64 @mixerGetLineInfo(i32 %33, %struct.TYPE_16__* %7, i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %21
  store i32* null, i32** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %41)
  store i64 0, i64* %6, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = call i32 @SndMixerQueryControls(%struct.TYPE_15__* %43, i64* %6, %struct.TYPE_16__* %7, i32** %10)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %9, align 4
  br label %88

49:                                               ; preds = %39
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %52 = call i64 @HeapAlloc(i32 %50, i32 %51, i32 56)
  %53 = inttoptr i64 %52 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %11, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = bitcast %struct.TYPE_16__* %58 to i8*
  %60 = bitcast %struct.TYPE_16__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 32, i1 false)
  %61 = load i32*, i32** %10, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  store i32* %61, i32** %63, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %74, align 8
  br label %79

75:                                               ; preds = %49
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @HeapFree(i32 %76, i32 0, i32* %77)
  br label %79

79:                                               ; preds = %75, %56
  br label %84

80:                                               ; preds = %21
  %81 = load i64, i64* %8, align 8
  %82 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %9, align 4
  br label %88

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %86, -1
  store i64 %87, i64* %5, align 8
  br label %18

88:                                               ; preds = %80, %46, %18
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i64 @mixerGetLineInfo(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @SndMixerQueryControls(%struct.TYPE_15__*, i64*, %struct.TYPE_16__*, i32**) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
