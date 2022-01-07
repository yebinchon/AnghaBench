; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/OLED_sample/extr_keymap.c_iota_gfx_task_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/lets_split/keymaps/OLED_sample/extr_keymap.c_iota_gfx_task_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CharacterMatrix = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"USB: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Undef-%ld\00", align 1
@layer_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\0A\0ALayer: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Raise\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ADJUST\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\0A%s  %s  %s\00", align 1
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"NUMLOCK\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"CAPS\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"SCLK\00", align 1
@display = common dso_local global i32 0, align 4
@USB_DeviceState = common dso_local global i32 0, align 4
@debug_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iota_gfx_task_user() #0 {
  %1 = alloca %struct.CharacterMatrix, align 4
  %2 = alloca [40 x i8], align 16
  %3 = alloca [40 x i8], align 16
  %4 = call i32 @matrix_clear(%struct.CharacterMatrix* %1)
  %5 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %5)
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %8 = load i32, i32* @layer_state, align 4
  %9 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %7, i32 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = call i32 @PSTR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %10)
  %12 = load i32, i32* @layer_state, align 4
  switch i32 %12, label %25 [
    i32 130, label %13
    i32 128, label %16
    i32 129, label %19
    i32 131, label %22
  ]

13:                                               ; preds = %0
  %14 = call i32 @PSTR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %14)
  br label %28

16:                                               ; preds = %0
  %17 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %17)
  br label %28

19:                                               ; preds = %0
  %20 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %20)
  br label %28

22:                                               ; preds = %0
  %23 = call i32 @PSTR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %23)
  br label %28

25:                                               ; preds = %0
  %26 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %27 = call i32 @matrix_write(%struct.CharacterMatrix* %1, i8* %26)
  br label %28

28:                                               ; preds = %25, %22, %19, %16, %13
  %29 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %30 = call i32 (...) @host_keyboard_leds()
  %31 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %37 = call i32 (...) @host_keyboard_leds()
  %38 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %44 = call i32 (...) @host_keyboard_leds()
  %45 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %36, i8* %43, i8* %50)
  %52 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %53 = call i32 @matrix_write(%struct.CharacterMatrix* %1, i8* %52)
  %54 = call i32 @matrix_update(i32* @display, %struct.CharacterMatrix* %1)
  ret void
}

declare dso_local i32 @matrix_clear(%struct.CharacterMatrix*) #1

declare dso_local i32 @matrix_write_P(%struct.CharacterMatrix*, i32) #1

declare dso_local i32 @PSTR(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @matrix_write(%struct.CharacterMatrix*, i8*) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i32 @matrix_update(i32*, %struct.CharacterMatrix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
