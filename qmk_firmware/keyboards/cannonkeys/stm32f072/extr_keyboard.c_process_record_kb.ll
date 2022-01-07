; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_keyboard.c_process_record_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_keyboard.c_process_record_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@kb_backlight_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@BACKLIGHT_LEVELS = common dso_local global i32 0, align 4
@MACRO00 = common dso_local global i32 0, align 4
@MACRO15 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_kb(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %79 [
    i32 129, label %7
    i32 128, label %26
    i32 130, label %47
    i32 131, label %65
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %17 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %23 = call i32 @backlight_set(i32 %22)
  %24 = call i32 (...) @save_backlight_config_to_eeprom()
  br label %25

25:                                               ; preds = %21, %7
  store i32 0, i32* %3, align 4
  br label %84

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 1), align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 1), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 1), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %41 = call i32 @backlight_set(i32 %40)
  br label %44

42:                                               ; preds = %32
  %43 = call i32 @backlight_set(i32 0)
  br label %44

44:                                               ; preds = %42, %39
  %45 = call i32 (...) @save_backlight_config_to_eeprom()
  br label %46

46:                                               ; preds = %44, %26
  store i32 0, i32* %3, align 4
  br label %84

47:                                               ; preds = %2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %55 = icmp sle i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  br label %60

57:                                               ; preds = %53
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  br label %60

60:                                               ; preds = %57, %56
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 0), align 4
  %62 = call i32 @backlight_set(i32 %61)
  %63 = call i32 (...) @save_backlight_config_to_eeprom()
  br label %64

64:                                               ; preds = %60, %47
  store i32 0, i32* %3, align 4
  br label %84

65:                                               ; preds = %2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 2), align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kb_backlight_config, i32 0, i32 2), align 4
  %76 = call i32 (...) @breathing_toggle()
  %77 = call i32 (...) @save_backlight_config_to_eeprom()
  br label %78

78:                                               ; preds = %71, %65
  store i32 0, i32* %3, align 4
  br label %84

79:                                               ; preds = %2
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = call i32 @process_record_user(i32 %81, %struct.TYPE_7__* %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %78, %64, %46, %25
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @backlight_set(i32) #1

declare dso_local i32 @save_backlight_config_to_eeprom(...) #1

declare dso_local i32 @breathing_toggle(...) #1

declare dso_local i32 @process_record_user(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
