; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@rgblight_config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@RGBLED_NUM = common dso_local global i64 0, align 8
@RGBLIGHT_FLED1 = common dso_local global i64 0, align 8
@RGBLIGHT_FLED2 = common dso_local global i64 0, align 8
@led = common dso_local global %struct.TYPE_8__* null, align 8
@fled_mode = common dso_local global i32 0, align 4
@fleds = common dso_local global i32* null, align 8
@fled_hs = common dso_local global %struct.TYPE_10__* null, align 8
@fled_val = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_set() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgblight_config, i32 0, i32 1), align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %35, label %4

4:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %31, %4
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @RGBLED_NUM, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @RGBLIGHT_FLED1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @RGBLIGHT_FLED2, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %31

18:                                               ; preds = %13, %9
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %28 = load i64, i64* %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %18, %17
  %32 = load i64, i64* %1, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %1, align 8
  br label %5

34:                                               ; preds = %5
  br label %35

35:                                               ; preds = %34, %0
  %36 = load i32, i32* @fled_mode, align 4
  switch i32 %36, label %134 [
    i32 129, label %37
    i32 130, label %46
    i32 128, label %59
  ]

37:                                               ; preds = %35
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %39 = load i64, i64* @RGBLIGHT_FLED1, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %39
  %41 = call i32 @setrgb(i32 0, i32 0, i32 0, %struct.TYPE_8__* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %43 = load i64, i64* @RGBLIGHT_FLED2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i64 %43
  %45 = call i32 @setrgb(i32 0, i32 0, i32 0, %struct.TYPE_8__* %44)
  br label %135

46:                                               ; preds = %35
  %47 = load i32*, i32** @fleds, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %50 = load i64, i64* @RGBLIGHT_FLED1, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = call i32 @copyrgb(i32* %48, %struct.TYPE_8__* %51)
  %53 = load i32*, i32** @fleds, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %56 = load i64, i64* @RGBLIGHT_FLED2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 %56
  %58 = call i32 @copyrgb(i32* %54, %struct.TYPE_8__* %57)
  br label %135

59:                                               ; preds = %35
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgblight_config, i32 0, i32 0), align 4
  %73 = icmp sge i32 %72, 15
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgblight_config, i32 0, i32 0), align 4
  %76 = icmp sle i32 %75, 23
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %79 = load i64, i64* @RGBLIGHT_FLED1, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %79
  %81 = call i32 @setrgb(i32 0, i32 0, i32 0, %struct.TYPE_8__* %80)
  br label %96

82:                                               ; preds = %74, %71, %65, %59
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @fled_val, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %93 = load i64, i64* @RGBLIGHT_FLED1, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %93
  %95 = call i32 @sethsv(i32 %86, i32 %90, i32 %91, %struct.TYPE_8__* %94)
  br label %96

96:                                               ; preds = %82, %77
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %96
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgblight_config, i32 0, i32 0), align 4
  %110 = icmp sge i32 %109, 15
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @rgblight_config, i32 0, i32 0), align 4
  %113 = icmp sle i32 %112, 23
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %116 = load i64, i64* @RGBLIGHT_FLED2, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %116
  %118 = call i32 @setrgb(i32 0, i32 0, i32 0, %struct.TYPE_8__* %117)
  br label %133

119:                                              ; preds = %111, %108, %102, %96
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fled_hs, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @fled_val, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %130 = load i64, i64* @RGBLIGHT_FLED2, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %130
  %132 = call i32 @sethsv(i32 %123, i32 %127, i32 %128, %struct.TYPE_8__* %131)
  br label %133

133:                                              ; preds = %119, %114
  br label %135

134:                                              ; preds = %35
  br label %135

135:                                              ; preds = %134, %133, %46, %37
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @led, align 8
  %137 = load i64, i64* @RGBLED_NUM, align 8
  %138 = call i32 @ws2812_setleds(%struct.TYPE_8__* %136, i64 %137)
  ret void
}

declare dso_local i32 @setrgb(i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @copyrgb(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @sethsv(i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ws2812_setleds(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
