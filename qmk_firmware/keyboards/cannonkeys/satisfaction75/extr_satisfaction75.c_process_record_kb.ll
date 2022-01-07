; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_process_record_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_process_record_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@queue_for_send = common dso_local global i32 0, align 4
@clock_set_mode = common dso_local global i32 0, align 4
@oled_mode = common dso_local global i32 0, align 4
@_NUM_OLED_MODES = common dso_local global i32 0, align 4
@previous_encoder_mode = common dso_local global i32 0, align 4
@encoder_mode = common dso_local global i32 0, align 4
@ENC_MODE_CLOCK_SET = common dso_local global i32 0, align 4
@MEDIA_KEY_DELAY = common dso_local global i32 0, align 4
@MACRO00 = common dso_local global i32 0, align 4
@MACRO15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_kb(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 1, i32* @queue_for_send, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %72 [
    i32 128, label %9
    i32 130, label %26
    i32 129, label %46
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @clock_set_mode, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* @oled_mode, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @_NUM_OLED_MODES, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* @oled_mode, align 4
  %23 = call i32 (...) @draw_ui()
  br label %24

24:                                               ; preds = %18, %12
  br label %25

25:                                               ; preds = %24, %9
  store i32 0, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* @clock_set_mode, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = call i32 (...) @pre_encoder_mode_change()
  store i32 0, i32* @clock_set_mode, align 4
  %37 = load i32, i32* @previous_encoder_mode, align 4
  store i32 %37, i32* @encoder_mode, align 4
  %38 = call i32 (...) @post_encoder_mode_change()
  br label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @encoder_mode, align 4
  store i32 %40, i32* @previous_encoder_mode, align 4
  %41 = call i32 (...) @pre_encoder_mode_change()
  store i32 1, i32* @clock_set_mode, align 4
  %42 = load i32, i32* @ENC_MODE_CLOCK_SET, align 4
  store i32 %42, i32* @encoder_mode, align 4
  %43 = call i32 (...) @post_encoder_mode_change()
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %26
  store i32 0, i32* %3, align 4
  br label %77

46:                                               ; preds = %2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = call i32 (...) @handle_encoder_press()
  store i32 %53, i32* %6, align 4
  %54 = call i32 (...) @timer_read()
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @register_code16(i32 %58)
  br label %60

60:                                               ; preds = %65, %57
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @timer_elapsed(i32 %61)
  %63 = load i32, i32* @MEDIA_KEY_DELAY, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %60

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @unregister_code16(i32 %67)
  br label %69

69:                                               ; preds = %66, %52
  br label %71

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70, %69
  store i32 0, i32* %3, align 4
  br label %77

72:                                               ; preds = %2
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = call i32 @process_record_user(i32 %74, %struct.TYPE_6__* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %71, %45, %25
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @draw_ui(...) #1

declare dso_local i32 @pre_encoder_mode_change(...) #1

declare dso_local i32 @post_encoder_mode_change(...) #1

declare dso_local i32 @handle_encoder_press(...) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @register_code16(i32) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @unregister_code16(i32) #1

declare dso_local i32 @process_record_user(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
