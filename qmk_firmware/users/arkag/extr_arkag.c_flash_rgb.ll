; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_flash_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_flash_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flash_rgb.flash_timer = internal global i32 0, align 4
@flash_state = common dso_local global i32 0, align 4
@LED_FLASH_DELAY = common dso_local global i32 0, align 4
@hsv_none = common dso_local global i32 0, align 4
@flash_color = common dso_local global i32 0, align 4
@num_extra_flashes_off = common dso_local global i32 0, align 4
@underglow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flash_rgb() #0 {
  %1 = load i32, i32* @flash_state, align 4
  switch i32 %1, label %37 [
    i32 128, label %2
    i32 130, label %3
    i32 129, label %18
  ]

2:                                                ; preds = %0
  br label %37

3:                                                ; preds = %0
  %4 = load i32, i32* @flash_rgb.flash_timer, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = call i32 (...) @timer_read()
  store i32 %7, i32* @flash_rgb.flash_timer, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = load i32, i32* @flash_rgb.flash_timer, align 4
  %10 = call i32 @timer_elapsed(i32 %9)
  %11 = load i32, i32* @LED_FLASH_DELAY, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* @hsv_none, align 4
  %15 = call i32 @set_color(i32 %14, i32 0)
  %16 = call i32 (...) @timer_read()
  store i32 %16, i32* @flash_rgb.flash_timer, align 4
  store i32 129, i32* @flash_state, align 4
  br label %17

17:                                               ; preds = %13, %8
  br label %37

18:                                               ; preds = %0
  %19 = load i32, i32* @flash_rgb.flash_timer, align 4
  %20 = call i32 @timer_elapsed(i32 %19)
  %21 = load i32, i32* @LED_FLASH_DELAY, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i32, i32* @flash_color, align 4
  %25 = call i32 @set_color(i32 %24, i32 0)
  %26 = call i32 (...) @timer_read()
  store i32 %26, i32* @flash_rgb.flash_timer, align 4
  %27 = load i32, i32* @num_extra_flashes_off, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  store i32 130, i32* @flash_state, align 4
  %30 = load i32, i32* @num_extra_flashes_off, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @num_extra_flashes_off, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @underglow, align 4
  %34 = call i32 @set_color(i32 %33, i32 0)
  store i32 128, i32* @flash_state, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %2, %17, %36, %0
  ret void
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @set_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
