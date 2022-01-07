; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/keymaps/jpetermans/extr_keymap.c_action_function.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/infinity60/keymaps/jpetermans/extr_keymap.c_action_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@led_mode_global = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@MODE_SINGLE = common dso_local global i32 0, align 4
@TOGGLE_ALL = common dso_local global i32 0, align 4
@led_mailbox = common dso_local global i32 0, align 4
@TIME_IMMEDIATE = common dso_local global i32 0, align 4
@backlight_status_global = common dso_local global i32 0, align 4
@TOGGLE_BACKLIGHT = common dso_local global i32 0, align 4
@GAME = common dso_local global i32 0, align 4
@DISPLAY_PAGE = common dso_local global i32 0, align 4
@STEP_BRIGHTNESS = common dso_local global i32 0, align 4
@MODE_PAGE = common dso_local global i32 0, align 4
@MODE_FLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @action_function(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %101 [
    i32 135, label %9
    i32 134, label %30
    i32 130, label %47
    i32 133, label %69
    i32 132, label %82
    i32 128, label %95
    i32 129, label %97
    i32 131, label %99
  ]

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i32, i32* @led_mode_global, align 4
  %17 = load i32, i32* @ALL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @MODE_SINGLE, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @ALL, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* @led_mode_global, align 4
  %25 = load i32, i32* @TOGGLE_ALL, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TIME_IMMEDIATE, align 4
  %28 = call i32 @chMBPost(i32* @led_mailbox, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %9
  br label %101

30:                                               ; preds = %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32, i32* @backlight_status_global, align 4
  %38 = xor i32 %37, 1
  store i32 %38, i32* @backlight_status_global, align 4
  %39 = load i32, i32* @backlight_status_global, align 4
  %40 = shl i32 %39, 8
  %41 = load i32, i32* @TOGGLE_BACKLIGHT, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @TIME_IMMEDIATE, align 4
  %45 = call i32 @chMBPost(i32* @led_mailbox, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %30
  br label %101

47:                                               ; preds = %3
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i32, i32* @led_mode_global, align 4
  %55 = load i32, i32* @GAME, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @MODE_SINGLE, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @GAME, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* @led_mode_global, align 4
  %63 = load i32, i32* @DISPLAY_PAGE, align 4
  %64 = or i32 1024, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TIME_IMMEDIATE, align 4
  %67 = call i32 @chMBPost(i32* @led_mailbox, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %47
  br label %101

69:                                               ; preds = %3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @STEP_BRIGHTNESS, align 4
  %77 = or i32 256, %76
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @TIME_IMMEDIATE, align 4
  %80 = call i32 @chMBPost(i32* @led_mailbox, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %69
  br label %101

82:                                               ; preds = %3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* @STEP_BRIGHTNESS, align 4
  %90 = or i32 0, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @TIME_IMMEDIATE, align 4
  %93 = call i32 @chMBPost(i32* @led_mailbox, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %82
  br label %101

95:                                               ; preds = %3
  %96 = load i32, i32* @MODE_SINGLE, align 4
  store i32 %96, i32* @led_mode_global, align 4
  br label %101

97:                                               ; preds = %3
  %98 = load i32, i32* @MODE_PAGE, align 4
  store i32 %98, i32* @led_mode_global, align 4
  br label %101

99:                                               ; preds = %3
  %100 = load i32, i32* @MODE_FLASH, align 4
  store i32 %100, i32* @led_mode_global, align 4
  br label %101

101:                                              ; preds = %3, %99, %97, %95, %94, %81, %68, %46, %29
  ret void
}

declare dso_local i32 @chMBPost(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
