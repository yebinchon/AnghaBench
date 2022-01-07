; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_sethsv_eeprom_helper.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_rgblight.c_rgblight_sethsv_eeprom_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@rgblight_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@fled_hs = common dso_local global %struct.TYPE_7__* null, align 8
@RGBLED_GRADIENT_RANGES = common dso_local global i32* null, align 8
@RGBLED_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"rgblight rainbow set hsv: %u,%u,%d,%u\0A\00", align 1
@led = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"rgblight set hsv [EEPROM]: %u,%u,%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"rgblight set hsv [NOEEPROM]: %u,%u,%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgblight_sethsv_eeprom_helper(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 5), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %138

16:                                               ; preds = %4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @sethsv(i32 %20, i32 %21, i32 %22, %struct.TYPE_5__* %9)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fled_hs, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fled_hs, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %24, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fled_hs, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fled_hs, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 %31, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rgblight_setrgb(i32 %39, i32 %41, i32 %43)
  br label %119

45:                                               ; preds = %16
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %50 = icmp sle i32 %49, 5
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 1), align 4
  store i32 %52, i32* %7, align 4
  br label %118

53:                                               ; preds = %48, %45
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %55 = icmp sge i32 %54, 6
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %58 = icmp sle i32 %57, 14
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 2), align 8
  store i32 %60, i32* %5, align 4
  br label %117

61:                                               ; preds = %56, %53
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %63 = icmp sge i32 %62, 25
  br i1 %63, label %64, label %116

64:                                               ; preds = %61
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %66 = icmp sle i32 %65, 34
  br i1 %66, label %67, label %116

67:                                               ; preds = %64
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %69 = sub nsw i32 %68, 25
  %70 = srem i32 %69, 2
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 1
  store i32 %73, i32* %11, align 4
  %74 = load i32*, i32** @RGBLED_GRADIENT_RANGES, align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 0), align 8
  %76 = sub nsw i32 %75, 25
  %77 = sdiv i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = call i32 @pgm_read_word(i32* %79)
  store i32 %80, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %111, %67
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @RGBLED_NUM, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @RGBLED_NUM, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i32, i32* %13, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, 360
  %96 = srem i32 %95, 360
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** @led, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = bitcast i32* %108 to %struct.TYPE_5__*
  %110 = call i32 @sethsv(i32 %102, i32 %103, i32 %104, %struct.TYPE_5__* %109)
  br label %111

111:                                              ; preds = %85
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %81

114:                                              ; preds = %81
  %115 = call i32 (...) @rgblight_set()
  br label %116

116:                                              ; preds = %114, %64, %61
  br label %117

117:                                              ; preds = %116, %59
  br label %118

118:                                              ; preds = %117, %51
  br label %119

119:                                              ; preds = %118, %19
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 2), align 8
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 3), align 4
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 1), align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 4), align 8
  %127 = call i32 @eeconfig_update_rgblight(i32 %126)
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 2), align 8
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 3), align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 1), align 4
  %131 = call i32 @xprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129, i32 %130)
  br label %137

132:                                              ; preds = %119
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 2), align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 3), align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rgblight_config, i32 0, i32 1), align 4
  %136 = call i32 @xprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %125
  br label %138

138:                                              ; preds = %137, %4
  ret void
}

declare dso_local i32 @sethsv(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @pgm_read_word(i32*) #1

declare dso_local i32 @dprintf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rgblight_set(...) #1

declare dso_local i32 @eeconfig_update_rgblight(i32) #1

declare dso_local i32 @xprintf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
