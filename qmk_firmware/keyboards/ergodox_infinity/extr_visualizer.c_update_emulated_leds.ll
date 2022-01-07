; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/extr_visualizer.c_update_emulated_leds.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/extr_visualizer.c_update_emulated_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@lcd_state = common dso_local global i64 0, align 8
@LCD_STATE_INITIAL = common dso_local global i64 0, align 8
@led_emulation_colors = common dso_local global i32* null, align 8
@next_led_target_color = common dso_local global i8* null, align 8
@one_led_color = common dso_local global i32 0, align 4
@two_led_colors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @update_emulated_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_emulated_leds(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %6, align 8
  %24 = call i64 (...) @is_serial_link_master()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @get_led_index_master(i32* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @get_led_index_master(i32* %29)
  store i64 %30, i64* %8, align 8
  br label %36

31:                                               ; preds = %2
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @get_led_index_slave(i32* %32)
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @get_led_index_slave(i32* %34)
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @get_secondary_led_index(i32* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @get_secondary_led_index(i32* %39)
  store i64 %40, i64* %10, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @get_brightness(i32* %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @get_brightness(i32* %44, i64 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i64 @get_brightness(i32* %47, i64 %48)
  store i64 %49, i64* %13, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @get_brightness(i32* %50, i64 %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* @lcd_state, align 8
  %54 = load i64, i64* @LCD_STATE_INITIAL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %72, label %56

56:                                               ; preds = %36
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %68, %64, %60, %56, %36
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32*, i32** @led_emulation_colors, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %12, align 8
  %81 = call i8* @change_lcd_color_intensity(i32 %79, i64 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i32*, i32** @led_emulation_colors, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %14, align 8
  %89 = call i8* @change_lcd_color_intensity(i32 %87, i64 %88)
  store i8* %89, i8** @next_led_target_color, align 8
  %90 = call i32 @stop_keyframe_animation(i32* @one_led_color)
  %91 = call i32 @start_keyframe_animation(i32* @two_led_colors)
  br label %103

92:                                               ; preds = %72
  %93 = load i32*, i32** @led_emulation_colors, align 8
  %94 = load i64, i64* %7, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %12, align 8
  %98 = call i8* @change_lcd_color_intensity(i32 %96, i64 %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = call i32 @stop_keyframe_animation(i32* @two_led_colors)
  %102 = call i32 @start_keyframe_animation(i32* @one_led_color)
  br label %103

103:                                              ; preds = %92, %75
  br label %104

104:                                              ; preds = %103, %68
  ret void
}

declare dso_local i64 @is_serial_link_master(...) #1

declare dso_local i64 @get_led_index_master(i32*) #1

declare dso_local i64 @get_led_index_slave(i32*) #1

declare dso_local i64 @get_secondary_led_index(i32*) #1

declare dso_local i64 @get_brightness(i32*, i64) #1

declare dso_local i8* @change_lcd_color_intensity(i32, i64) #1

declare dso_local i32 @stop_keyframe_animation(i32*) #1

declare dso_local i32 @start_keyframe_animation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
