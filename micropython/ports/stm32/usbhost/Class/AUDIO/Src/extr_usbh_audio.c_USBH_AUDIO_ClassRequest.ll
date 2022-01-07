; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_ClassRequest.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_ClassRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 (%struct.TYPE_13__*, i32)*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@AUDIO_REQ_GET_VOLUME = common dso_local global i8* null, align 8
@AUDIO_PLAYBACK_INIT = common dso_local global i32 0, align 4
@HOST_USER_CLASS_ACTIVE = common dso_local global i32 0, align 4
@USBH_CLASS_EVENT = common dso_local global i32 0, align 4
@USBH_URB_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @USBH_AUDIO_ClassRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_AUDIO_ClassRequest(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %3, align 8
  %11 = load i32, i32* @USBH_BUSY, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @USBH_BUSY, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %158 [
    i32 132, label %16
    i32 131, label %16
    i32 130, label %40
    i32 134, label %82
    i32 129, label %91
    i32 128, label %119
    i32 133, label %147
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @USBH_SetInterface(%struct.TYPE_13__* %23, i32 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @USBH_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 130, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %22
  br label %39

36:                                               ; preds = %16
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 130, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %35
  br label %159

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @USBH_SetInterface(%struct.TYPE_13__* %47, i32 %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @USBH_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %46
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i32 134, i32* %58, align 8
  %59 = load i8*, i8** @AUDIO_REQ_GET_VOLUME, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %56, %46
  br label %81

75:                                               ; preds = %40
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32 134, i32* %77, align 8
  %78 = load i8*, i8** @AUDIO_REQ_GET_VOLUME, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %75, %74
  br label %159

82:                                               ; preds = %1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = call i32 @USBH_AUDIO_HandleCSRequest(%struct.TYPE_13__* %83)
  %85 = load i32, i32* @USBH_OK, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 129, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %159

91:                                               ; preds = %1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %115

97:                                               ; preds = %91
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @USBH_SetInterface(%struct.TYPE_13__* %98, i32 %102, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @USBH_OK, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i32 128, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %97
  br label %118

115:                                              ; preds = %91
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  store i32 128, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %114
  br label %159

119:                                              ; preds = %1
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @USBH_SetInterface(%struct.TYPE_13__* %126, i32 %130, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @USBH_OK, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %125
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  store i32 133, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %125
  br label %146

143:                                              ; preds = %119
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  store i32 133, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %142
  br label %159

147:                                              ; preds = %1
  %148 = load i32, i32* @AUDIO_PLAYBACK_INIT, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %155 = load i32, i32* @HOST_USER_CLASS_ACTIVE, align 4
  %156 = call i32 %153(%struct.TYPE_13__* %154, i32 %155)
  %157 = load i32, i32* @USBH_OK, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %1, %147
  br label %159

159:                                              ; preds = %158, %146, %118, %90, %81, %39
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @USBH_SetInterface(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @USBH_AUDIO_HandleCSRequest(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
