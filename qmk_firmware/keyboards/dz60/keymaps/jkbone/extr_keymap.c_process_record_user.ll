; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/jkbone/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dz60/keymaps/jkbone/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %23 [
    i32 129, label %12
    i32 130, label %15
    i32 128, label %18
    i32 131, label %21
  ]

12:                                               ; preds = %10
  %13 = call i32 (...) @rgblight_enable()
  %14 = call i32 @rgblight_setrgb(i32 0, i32 204, i32 33)
  br label %23

15:                                               ; preds = %10
  %16 = call i32 (...) @rgblight_enable()
  %17 = call i32 @rgblight_setrgb(i32 229, i32 65, i32 0)
  br label %23

18:                                               ; preds = %10
  %19 = call i32 (...) @rgblight_enable()
  %20 = call i32 @rgblight_setrgb(i32 255, i32 255, i32 255)
  br label %23

21:                                               ; preds = %10
  %22 = call i32 (...) @rgblight_disable()
  br label %23

23:                                               ; preds = %10, %21, %18, %15, %12
  br label %24

24:                                               ; preds = %23, %2
  ret i32 1
}

declare dso_local i32 @rgblight_enable(...) #1

declare dso_local i32 @rgblight_setrgb(i32, i32, i32) #1

declare dso_local i32 @rgblight_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
