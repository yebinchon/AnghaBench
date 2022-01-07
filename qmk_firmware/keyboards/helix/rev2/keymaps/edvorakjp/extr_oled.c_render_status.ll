; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/edvorakjp/extr_oled.c_render_status.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/helix/rev2/keymaps/edvorakjp/extr_oled.c_render_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CharacterMatrix = type { i32 }

@render_status.logo = internal global [2 x [2 x [3 x i8]]] [[2 x [3 x i8]] [[3 x i8] c"\95\96\00", [3 x i8] c"\B5\B6\00"], [2 x [3 x i8]] [[3 x i8] c"\97\98\00", [3 x i8] c"\B7\B8\00"]], align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Undef-%ld\00", align 1
@layer_state = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"\0ALayer: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Raise\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\0A%s %s %s\00", align 1
@USB_LED_NUM_LOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"NMLK\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@USB_LED_CAPS_LOCK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"CAPS\00", align 1
@USB_LED_SCROLL_LOCK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"SCLK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_status(%struct.CharacterMatrix* %0) #0 {
  %2 = alloca %struct.CharacterMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [40 x i8], align 16
  %5 = alloca [40 x i8], align 16
  store %struct.CharacterMatrix* %0, %struct.CharacterMatrix** %2, align 8
  %6 = call i64 (...) @get_enable_kc_lang()
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 0, i32 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x [2 x [3 x i8]]], [2 x [2 x [3 x i8]]]* @render_status.logo, i64 0, i64 %12
  %14 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %13, i64 0, i64 0
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %16 = call i32 @matrix_write(%struct.CharacterMatrix* %10, i8* %15)
  %17 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %18 = call i32 @matrix_write(%struct.CharacterMatrix* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x [2 x [3 x i8]]], [2 x [2 x [3 x i8]]]* @render_status.logo, i64 0, i64 %21
  %23 = getelementptr inbounds [2 x [3 x i8]], [2 x [3 x i8]]* %22, i64 0, i64 1
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %23, i64 0, i64 0
  %25 = call i32 @matrix_write(%struct.CharacterMatrix* %19, i8* %24)
  %26 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %27 = load i32, i32* @layer_state, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %32 = call i32 @PSTR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @matrix_write_P(%struct.CharacterMatrix* %31, i32 %32)
  %34 = load i32, i32* @layer_state, align 4
  %35 = call i32 @biton32(i32 %34)
  switch i32 %35, label %48 [
    i32 130, label %36
    i32 128, label %40
    i32 129, label %44
  ]

36:                                               ; preds = %1
  %37 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %38 = call i32 @PSTR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @matrix_write_P(%struct.CharacterMatrix* %37, i32 %38)
  br label %52

40:                                               ; preds = %1
  %41 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %42 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @matrix_write_P(%struct.CharacterMatrix* %41, i32 %42)
  br label %52

44:                                               ; preds = %1
  %45 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %46 = call i32 @PSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %47 = call i32 @matrix_write_P(%struct.CharacterMatrix* %45, i32 %46)
  br label %52

48:                                               ; preds = %1
  %49 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %50 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %51 = call i32 @matrix_write(%struct.CharacterMatrix* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %44, %40, %36
  %53 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %54 = call i32 (...) @host_keyboard_leds()
  %55 = load i32, i32* @USB_LED_NUM_LOCK, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %61 = call i32 (...) @host_keyboard_leds()
  %62 = load i32, i32* @USB_LED_CAPS_LOCK, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %68 = call i32 (...) @host_keyboard_leds()
  %69 = load i32, i32* @USB_LED_SCROLL_LOCK, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %75 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %53, i32 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %60, i8* %67, i8* %74)
  %76 = load %struct.CharacterMatrix*, %struct.CharacterMatrix** %2, align 8
  %77 = getelementptr inbounds [40 x i8], [40 x i8]* %5, i64 0, i64 0
  %78 = call i32 @matrix_write(%struct.CharacterMatrix* %76, i8* %77)
  ret void
}

declare dso_local i64 @get_enable_kc_lang(...) #1

declare dso_local i32 @matrix_write(%struct.CharacterMatrix*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @matrix_write_P(%struct.CharacterMatrix*, i32) #1

declare dso_local i32 @PSTR(i8*) #1

declare dso_local i32 @biton32(i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
