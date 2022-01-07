; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/bulbizarre/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/xd75/keymaps/bulbizarre/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@lt12_timer = common dso_local global i32 0, align 4
@_FN = common dso_local global i32 0, align 4
@_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %49 [
    i32 129, label %7
    i32 128, label %28
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = call i32 (...) @timer_read()
  store i32 %14, i32* @lt12_timer, align 4
  %15 = load i32, i32* @_FN, align 4
  %16 = call i32 @layer_on(i32 %15)
  %17 = call i32 (...) @gp100_led_on()
  br label %27

18:                                               ; preds = %7
  %19 = load i32, i32* @lt12_timer, align 4
  %20 = call i32 @timer_elapsed(i32 %19)
  %21 = icmp sgt i32 %20, 200
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @_FN, align 4
  %24 = call i32 @layer_off(i32 %23)
  %25 = call i32 (...) @gp100_led_off()
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %13
  store i32 0, i32* %3, align 4
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = call i32 (...) @timer_read()
  store i32 %35, i32* @lt12_timer, align 4
  %36 = load i32, i32* @_FS, align 4
  %37 = call i32 @layer_on(i32 %36)
  %38 = call i32 (...) @gp100_led_on()
  br label %48

39:                                               ; preds = %28
  %40 = load i32, i32* @lt12_timer, align 4
  %41 = call i32 @timer_elapsed(i32 %40)
  %42 = icmp sgt i32 %41, 200
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @_FS, align 4
  %45 = call i32 @layer_off(i32 %44)
  %46 = call i32 (...) @gp100_led_off()
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %34
  store i32 0, i32* %3, align 4
  br label %50

49:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @gp100_led_on(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @gp100_led_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
