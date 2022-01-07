; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/m0lly/keymaps/default/extr_keymap.c_iota_gfx_task_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/m0lly/keymaps/default/extr_keymap.c_iota_gfx_task_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CharacterMatrix = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"TKC M0LLY\00", align 1
@layer_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Undef-%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\0ALayer: \00", align 1
@layer_lookup = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"\0A\0A%s  %s  %s\00", align 1
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"NUMLOCK\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"CAPS\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"SCLK\00", align 1
@display = common dso_local global i32 0, align 4
@debug_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iota_gfx_task_user() #0 {
  %1 = alloca %struct.CharacterMatrix, align 4
  %2 = alloca i32, align 4
  %3 = alloca [40 x i8], align 16
  %4 = alloca [40 x i8], align 16
  %5 = call i32 @matrix_clear(%struct.CharacterMatrix* %1)
  %6 = call i32 @PSTR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %6)
  %8 = load i32, i32* @layer_state, align 4
  %9 = call i32 @biton32(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %10, i32 40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = call i32 @PSTR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @matrix_write_P(%struct.CharacterMatrix* %1, i32 %13)
  %15 = load i8**, i8*** @layer_lookup, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @matrix_write(%struct.CharacterMatrix* %1, i8* %19)
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %22 = call i32 (...) @host_keyboard_leds()
  %23 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %29 = call i32 (...) @host_keyboard_leds()
  %30 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %36 = call i32 (...) @host_keyboard_leds()
  %37 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %43 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %35, i8* %42)
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %45 = call i32 @matrix_write(%struct.CharacterMatrix* %1, i8* %44)
  %46 = call i32 @matrix_update(i32* @display, %struct.CharacterMatrix* %1)
  ret void
}

declare dso_local i32 @matrix_clear(%struct.CharacterMatrix*) #1

declare dso_local i32 @matrix_write_P(%struct.CharacterMatrix*, i32) #1

declare dso_local i32 @PSTR(i8*) #1

declare dso_local i32 @biton32(i32) #1

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
