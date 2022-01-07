; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_CSRequest.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_CSRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i8*, i8* }

@USBH_BUSY = common dso_local global i32 0, align 4
@UAC_FEATURE_UNIT = common dso_local global i32 0, align 4
@VOLUME_CONTROL = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32)* @USBH_AUDIO_CSRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_AUDIO_CSRequest(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %7, align 8
  %15 = load i32, i32* @USBH_BUSY, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @USBH_BUSY, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %133 [
    i32 128, label %20
    i32 130, label %43
    i32 131, label %67
    i32 129, label %108
    i32 132, label %131
  ]

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = load i32, i32* @UAC_FEATURE_UNIT, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VOLUME_CONTROL, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @USBH_AC_GetCur(%struct.TYPE_14__* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 2)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @USBH_BUSY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i32 130, i32* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i8* @LE16(i32* %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %30, %20
  br label %134

43:                                               ; preds = %3
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load i32, i32* @UAC_FEATURE_UNIT, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @VOLUME_CONTROL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @USBH_AC_GetMin(%struct.TYPE_14__* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 2)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @USBH_BUSY, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %43
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32 131, i32* %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = call i8* @LE16(i32* %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  br label %66

66:                                               ; preds = %53, %43
  br label %134

67:                                               ; preds = %3
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load i32, i32* @UAC_FEATURE_UNIT, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @VOLUME_CONTROL, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @USBH_AC_GetMax(%struct.TYPE_14__* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 2)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @USBH_BUSY, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %67
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i32 129, i32* %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i8* @LE16(i32* %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %94, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %77
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i32 65280, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %77
  br label %107

107:                                              ; preds = %106, %67
  br label %134

108:                                              ; preds = %3
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = load i32, i32* @UAC_FEATURE_UNIT, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @VOLUME_CONTROL, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @USBH_AC_GetRes(%struct.TYPE_14__* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 2)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @USBH_BUSY, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %108
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i32 132, i32* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = call i8* @LE16(i32* %124)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  store i8* %125, i8** %129, align 8
  br label %130

130:                                              ; preds = %118, %108
  br label %134

131:                                              ; preds = %3
  %132 = load i32, i32* @USBH_OK, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %3, %131
  br label %134

134:                                              ; preds = %133, %130, %107, %66, %42
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @USBH_AC_GetCur(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @LE16(i32*) #1

declare dso_local i32 @USBH_AC_GetMin(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_AC_GetMax(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @USBH_AC_GetRes(%struct.TYPE_14__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
