; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/keymaps/jpetermans/extr_keymap.c_matrix_scan_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/keymaps/jpetermans/extr_keymap.c_matrix_scan_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@backlight_status_global = common dso_local global i64 0, align 8
@led_layer_state = common dso_local global i64 0, align 8
@layer_state = common dso_local global i64 0, align 8
@led_mode_global = common dso_local global i32 0, align 4
@GAME = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@max_pages = common dso_local global i32 0, align 4
@DISPLAY_PAGE = common dso_local global i32 0, align 4
@led_mailbox = common dso_local global i32 0, align 4
@TIME_IMMEDIATE = common dso_local global i32 0, align 4
@SET_FULL_ROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @backlight_status_global, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %77

7:                                                ; preds = %0
  %8 = load i64, i64* @led_layer_state, align 8
  %9 = load i64, i64* @layer_state, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %77

11:                                               ; preds = %7
  %12 = load i32, i32* @led_mode_global, align 4
  %13 = load i32, i32* @GAME, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %11
  %16 = load i32, i32* @led_mode_global, align 4
  %17 = load i32, i32* @ALL, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %15
  %20 = load i32, i32* @led_mode_global, align 4
  switch i32 %20, label %75 [
    i32 130, label %21
    i32 128, label %40
    i32 129, label %57
  ]

21:                                               ; preds = %19
  %22 = load i64, i64* @layer_state, align 8
  %23 = call i32 @biton32(i64 %22)
  %24 = load i32, i32* @max_pages, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %30

27:                                               ; preds = %21
  %28 = load i64, i64* @layer_state, align 8
  %29 = call i32 @biton32(i64 %28)
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 7, %26 ], [ %29, %27 ]
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = shl i32 %32, 8
  %34 = load i32, i32* @DISPLAY_PAGE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @TIME_IMMEDIATE, align 4
  %38 = call i32 @chMBPost(i32* @led_mailbox, i32 %36, i32 %37)
  %39 = call i32 @chThdSleepMilliseconds(i32 500)
  br label %40

40:                                               ; preds = %19, %30
  %41 = load i64, i64* @layer_state, align 8
  %42 = and i64 %41, 255
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* @DISPLAY_PAGE, align 4
  %45 = or i32 1792, %44
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @TIME_IMMEDIATE, align 4
  %48 = call i32 @chMBPost(i32* @led_mailbox, i32 %46, i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 65536, %50
  %52 = load i32, i32* @SET_FULL_ROW, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @TIME_IMMEDIATE, align 4
  %56 = call i32 @chMBPost(i32* @led_mailbox, i32 %54, i32 %55)
  br label %75

57:                                               ; preds = %19
  %58 = load i64, i64* @layer_state, align 8
  %59 = call i32 @biton32(i64 %58)
  %60 = load i32, i32* @max_pages, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %66

63:                                               ; preds = %57
  %64 = load i64, i64* @layer_state, align 8
  %65 = call i32 @biton32(i64 %64)
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi i32 [ 7, %62 ], [ %65, %63 ]
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = shl i32 %68, 8
  %70 = load i32, i32* @DISPLAY_PAGE, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @TIME_IMMEDIATE, align 4
  %74 = call i32 @chMBPost(i32* @led_mailbox, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %19, %66, %40
  %76 = load i64, i64* @layer_state, align 8
  store i64 %76, i64* @led_layer_state, align 8
  br label %77

77:                                               ; preds = %6, %75, %15, %11, %7
  ret void
}

declare dso_local i32 @biton32(i64) #1

declare dso_local i32 @chMBPost(i32*, i32, i32) #1

declare dso_local i32 @chThdSleepMilliseconds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
