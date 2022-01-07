; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerQueryDestinations.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerQueryDestinations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, i64, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@MIXER_GETLINEINFOF_DESTINATION = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"+ Destination: %ws (0x%x, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to query mixer controls!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to query mixer connections!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to get line information for id %d!\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Allocation of SND_MIXER_DEST structure for id %d failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @SndMixerQueryDestinations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SndMixerQueryDestinations(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %96, %1
  %12 = load i64, i64* %3, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %99

14:                                               ; preds = %11
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %17 = call i64 @HeapAlloc(i32 %15, i32 %16, i32 48)
  %18 = inttoptr i64 %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %91

21:                                               ; preds = %14
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  store i32 24, i32* %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = sub nsw i64 %25, 1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  store i64 %26, i64* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = load i32, i32* @MIXER_GETLINEINFOF_DESTINATION, align 4
  %37 = call i64 @mixerGetLineInfo(i32 %33, %struct.TYPE_15__* %35, i32 %36)
  %38 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %21
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48, i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = call i32 @SndMixerQueryControls(%struct.TYPE_14__* %54, i32* %56, %struct.TYPE_15__* %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %40
  %64 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %4, align 4
  br label %99

66:                                               ; preds = %40
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = call i32 @SndMixerQueryConnections(%struct.TYPE_14__* %67, %struct.TYPE_13__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %4, align 4
  br label %99

74:                                               ; preds = %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %82, align 8
  br label %90

83:                                               ; preds = %21
  %84 = load i64, i64* %3, align 8
  %85 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = call i32 @HeapFree(i32 %86, i32 0, %struct.TYPE_13__* %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  br label %99

90:                                               ; preds = %74
  br label %95

91:                                               ; preds = %14
  %92 = load i64, i64* %3, align 8
  %93 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %4, align 4
  br label %99

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %3, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %3, align 8
  br label %11

99:                                               ; preds = %91, %83, %71, %63, %11
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @mixerGetLineInfo(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @SndMixerQueryControls(%struct.TYPE_14__*, i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @SndMixerQueryConnections(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
