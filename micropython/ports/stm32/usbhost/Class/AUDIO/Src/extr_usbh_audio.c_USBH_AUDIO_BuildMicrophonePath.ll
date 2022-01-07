; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_BuildMicrophonePath.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_BuildMicrophonePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, i32, i32 }

@USBH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBH_AUDIO_BuildMicrophonePath(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i64 0, i64* %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %8, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %59, %1
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %15, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %14
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %26, i64 %27
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @LE16(i32 %31)
  %33 = icmp eq i32 %32, 513
  br i1 %33, label %34, label %58

34:                                               ; preds = %21
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %39, i64 %40
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %3, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 %50
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 8
  br label %62

58:                                               ; preds = %21
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %14

62:                                               ; preds = %34, %14
  br label %63

63:                                               ; preds = %106, %62
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @USBH_AUDIO_FindLinkedUnit(%struct.TYPE_15__* %64, i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 255
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* %4, align 8
  switch i64 %78, label %99 [
    i64 131, label %79
    i64 130, label %84
    i64 128, label %89
    i64 129, label %94
  ]

79:                                               ; preds = %63
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %99

84:                                               ; preds = %63
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  br label %99

89:                                               ; preds = %63
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  store i64 %90, i64* %93, align 8
  br label %99

94:                                               ; preds = %63
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  store i64 %95, i64* %98, align 8
  br label %99

99:                                               ; preds = %63, %94, %89, %84, %79
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 129
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp sgt i32 %104, 0
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i1 [ false, %100 ], [ %105, %103 ]
  br i1 %107, label %63, label %108

108:                                              ; preds = %106
  %109 = load i32, i32* @USBH_OK, align 4
  ret i32 %109
}

declare dso_local i32 @LE16(i32) #1

declare dso_local i32 @USBH_AUDIO_FindLinkedUnit(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
