; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/turbomech/extr_turbomech.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/turbomech/extr_turbomech.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@caps_is_active = common dso_local global i32 0, align 4
@RGB_current_mode = common dso_local global i32 0, align 4
@rgblight_config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %57 [
    i32 130, label %7
    i32 128, label %33
    i32 129, label %45
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = call i32 @register_code(i32 130)
  %15 = load i32, i32* @caps_is_active, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* @caps_is_active, align 4
  %19 = load i32, i32* @caps_is_active, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @rgblight_mode(i32 14)
  br label %31

23:                                               ; preds = %13
  %24 = load i32, i32* @caps_is_active, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = call i32 @unregister_code(i32 130)
  %28 = load i32, i32* @RGB_current_mode, align 4
  %29 = call i32 @rgblight_mode(i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %7
  store i32 0, i32* %3, align 4
  br label %61

33:                                               ; preds = %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @RGB_current_mode, align 4
  %41 = call i32 @rgblight_mode(i32 %40)
  %42 = call i32 (...) @rgblight_step()
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @rgblight_config, i32 0, i32 0), align 4
  store i32 %43, i32* @RGB_current_mode, align 4
  br label %44

44:                                               ; preds = %39, %33
  store i32 0, i32* %3, align 4
  br label %61

45:                                               ; preds = %2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = call i32 (...) @rgblight_enable()
  %53 = call i32 @rgblight_mode(i32 1)
  %54 = call i32 @rgblight_setrgb(i32 255, i32 255, i32 255)
  %55 = call i32 (...) @reset_keyboard()
  br label %56

56:                                               ; preds = %51, %45
  store i32 0, i32* %3, align 4
  br label %61

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = call i32 @process_record_keymap(i32 %58, %struct.TYPE_7__* %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %56, %44, %32
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @rgblight_step(...) #1

declare dso_local i32 @rgblight_enable(...) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @reset_keyboard(...) #1

declare dso_local i32 @process_record_keymap(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
