; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_Transmit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_Transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USBH_URB_DONE = common dso_local global i32 0, align 4
@AUDIO_PLAYBACK_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @USBH_AUDIO_Transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_AUDIO_Transmit(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %5 = load i32, i32* @USBH_BUSY, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %164 [
    i32 128, label %14
    i32 129, label %65
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %14
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32 129, i32* %28, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @USBH_IsocSendData(%struct.TYPE_13__* %29, i32 %33, i32 %37, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 5
  store i32 %60, i32* %63, align 4
  br label %64

64:                                               ; preds = %20, %14
  br label %164

65:                                               ; preds = %1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @USBH_LL_GetURBState(%struct.TYPE_13__* %66, i32 %70)
  %72 = load i32, i32* @USBH_URB_DONE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %163

74:                                               ; preds = %65
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %77, %81
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %82, %86
  br i1 %87, label %88, label %163

88:                                               ; preds = %74
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %102 = call i32 @USBH_AUDIO_Control(%struct.TYPE_13__* %101)
  br label %103

103:                                              ; preds = %100, %88
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = icmp sle i32 %107, %111
  br i1 %112, label %113, label %155

113:                                              ; preds = %103
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @USBH_IsocSendData(%struct.TYPE_13__* %114, i32 %118, i32 %122, i32 %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %140
  store i32 %145, i32* %143, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %149
  store i32 %154, i32* %152, align 4
  br label %162

155:                                              ; preds = %103
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 3
  store i32 -1, i32* %158, align 4
  %159 = load i32, i32* @AUDIO_PLAYBACK_IDLE, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %155, %113
  br label %163

163:                                              ; preds = %162, %74, %65
  br label %164

164:                                              ; preds = %1, %163, %64
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @USBH_IsocSendData(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @USBH_LL_GetURBState(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @USBH_AUDIO_Control(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
