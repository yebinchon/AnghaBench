; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_mxss.c_matrix_init_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mxss/extr_mxss.c_matrix_init_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@EEPROM_FRONTLED_ADDR = common dso_local global i32 0, align 4
@fled_mode = common dso_local global i64 0, align 8
@FLED_VAL_STEP = common dso_local global i32 0, align 4
@fled_val = common dso_local global i32 0, align 4
@FLED_RGB = common dso_local global i64 0, align 8
@fleds = common dso_local global i32* null, align 8
@FLED_INDI = common dso_local global i64 0, align 8
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@FLED_CAPS_H = common dso_local global i64 0, align 8
@FLED_CAPS_S = common dso_local global i32 0, align 4
@layer_state = common dso_local global i32 0, align 4
@lc_size = common dso_local global i64 0, align 8
@layer_colors = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init_kb() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @eeprom_is_valid()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @EEPROM_FRONTLED_ADDR, align 4
  %7 = call i32 @eeprom_read_byte(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* @fled_mode, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FLED_VAL_STEP, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* @fled_val, align 4
  br label %20

15:                                               ; preds = %0
  %16 = load i64, i64* @FLED_RGB, align 8
  store i64 %16, i64* @fled_mode, align 8
  %17 = load i32, i32* @FLED_VAL_STEP, align 4
  %18 = mul nsw i32 10, %17
  store i32 %18, i32* @fled_val, align 4
  %19 = call i32 (...) @eeprom_update_conf()
  br label %20

20:                                               ; preds = %15, %5
  %21 = load i32*, i32** @fleds, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @setrgb(i32 0, i32 0, i32 0, i32* %22)
  %24 = load i32*, i32** @fleds, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = call i32 @setrgb(i32 0, i32 0, i32 0, i32* %25)
  %27 = load i64, i64* @fled_mode, align 8
  %28 = load i64, i64* @FLED_INDI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %20
  %31 = call i32 (...) @host_keyboard_leds()
  %32 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i64, i64* @FLED_CAPS_H, align 8
  %38 = load i32, i32* @FLED_CAPS_S, align 4
  %39 = load i32, i32* @fled_val, align 4
  %40 = load i32*, i32** @fleds, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = call i32 @sethsv(i64 %37, i32 %38, i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32, i32* @layer_state, align 4
  %45 = call i64 @biton32(i32 %44)
  store i64 %45, i64* %2, align 8
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @lc_size, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_colors, align 8
  %51 = load i64, i64* %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_colors, align 8
  %58 = load i64, i64* %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_colors, align 8
  %65 = load i64, i64* %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @layer_colors, align 8
  %70 = load i64, i64* %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @fled_val, align 4
  %75 = load i32*, i32** @fleds, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = call i32 @sethsv(i64 %68, i32 %73, i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %63, %56, %43
  br label %79

79:                                               ; preds = %78, %20
  %80 = call i32 (...) @matrix_init_user()
  ret void
}

declare dso_local i64 @eeprom_is_valid(...) #1

declare dso_local i32 @eeprom_read_byte(i32) #1

declare dso_local i32 @eeprom_update_conf(...) #1

declare dso_local i32 @setrgb(i32, i32, i32, i32*) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @sethsv(i64, i32, i32, i32*) #1

declare dso_local i64 @biton32(i32) #1

declare dso_local i32 @matrix_init_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
