; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerQueryControls.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/sndvol32/extr_mixer.c_SndMixerQueryControls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_15__*, i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@MIXER_GETLINECONTROLSF_ALL = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Line control: %ws (0x%x, 0x%x)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to get line (ID: 0x%x) controls: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Failed to allocate memory for %d line (ID: 0x%x) controls!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SndMixerQueryControls(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_16__* %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %123

17:                                               ; preds = %4
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 12
  %25 = trunc i64 %24 to i32
  %26 = call i64 @HeapAlloc(i32 %18, i32 %19, i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_15__*
  %28 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %28, align 8
  %29 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %112

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i32 40, i32* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  store i32 12, i32* %43, align 8
  %44 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @MIXER_GETLINECONTROLSF_ALL, align 4
  %52 = call i64 @mixerGetLineControls(i32 %50, %struct.TYPE_14__* %10, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %32
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %95, %56
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i64 %66
  %68 = call i64 @SndMixerIsDisplayControl(%struct.TYPE_13__* %63, %struct.TYPE_15__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, i32, i64, ...) @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %80, i64 %87, i32 %93)
  br label %95

95:                                               ; preds = %74
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %57

98:                                               ; preds = %57
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %5, align 4
  br label %125

100:                                              ; preds = %32
  %101 = call i32 (...) @GetProcessHeap()
  %102 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = call i32 @HeapFree(i32 %101, i32 0, %struct.TYPE_15__* %103)
  %105 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %105, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %11, align 8
  %110 = call i32 (i8*, i32, i64, ...) @DPRINT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %100
  br label %121

112:                                              ; preds = %17
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = call i32 (i8*, i32, i64, ...) @DPRINT(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %115, i64 %119)
  br label %121

121:                                              ; preds = %112, %111
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %5, align 4
  br label %125

123:                                              ; preds = %4
  %124 = load i32, i32* @TRUE, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %121, %98
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @mixerGetLineControls(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @SndMixerIsDisplayControl(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @DPRINT(i8*, i32, i64, ...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
