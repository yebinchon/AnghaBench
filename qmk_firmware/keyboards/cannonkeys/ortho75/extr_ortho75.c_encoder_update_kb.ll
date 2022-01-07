; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/ortho75/extr_ortho75.c_encoder_update_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/ortho75/extr_ortho75.c_encoder_update_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer = common dso_local global i32 0, align 4
@KC_VOLU = common dso_local global i32 0, align 4
@KC_MEDIA_NEXT_TRACK = common dso_local global i32 0, align 4
@KC_PGDN = common dso_local global i32 0, align 4
@KC_VOLD = common dso_local global i32 0, align 4
@KC_MEDIA_PREV_TRACK = common dso_local global i32 0, align 4
@KC_PGUP = common dso_local global i32 0, align 4
@MEDIA_KEY_DELAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encoder_update_kb(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* @layer, align 4
  switch i32 %13, label %15 [
    i32 0, label %14
    i32 1, label %17
    i32 2, label %19
  ]

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %12, %14
  %16 = load i32, i32* @KC_VOLU, align 4
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @KC_MEDIA_NEXT_TRACK, align 4
  store i32 %18, i32* %5, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @KC_PGDN, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %17, %15
  br label %32

22:                                               ; preds = %9
  %23 = load i32, i32* @layer, align 4
  switch i32 %23, label %25 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %29
  ]

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %22, %24
  %26 = load i32, i32* @KC_VOLD, align 4
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @KC_MEDIA_PREV_TRACK, align 4
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @KC_PGUP, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27, %25
  br label %32

32:                                               ; preds = %31, %21
  %33 = call i32 (...) @timer_read()
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @register_code(i32 %34)
  br label %36

36:                                               ; preds = %41, %32
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @timer_elapsed(i32 %37)
  %39 = load i64, i64* @MEDIA_KEY_DELAY, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %36

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @unregister_code(i32 %43)
  br label %45

45:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @unregister_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
