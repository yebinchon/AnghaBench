; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/1key/keymaps/8ball/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/bigseries/1key/keymaps/8ball/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RAND_MAX = common dso_local global i32 0, align 4
@NUM_ANSWERS = common dso_local global i32 0, align 4
@UNCERTAIN_BREAK = common dso_local global i64 0, align 8
@NO_BREAK = common dso_local global i64 0, align 8
@ANSWERS = common dso_local global i32* null, align 8
@lastTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %45 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = call i64 (...) @rand()
  %16 = load i32, i32* @RAND_MAX, align 4
  %17 = load i32, i32* @NUM_ANSWERS, align 4
  %18 = sdiv i32 %16, %17
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %15, %20
  store i64 %21, i64* %6, align 8
  %22 = call i32 @rgblight_mode(i32 1)
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @UNCERTAIN_BREAK, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = call i32 (...) @rgblight_setrgb_green()
  br label %37

28:                                               ; preds = %14
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @NO_BREAK, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @rgblight_setrgb_yellow()
  br label %36

34:                                               ; preds = %28
  %35 = call i32 (...) @rgblight_setrgb_red()
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32*, i32** @ANSWERS, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @send_string(i32 %41)
  %43 = call i32 (...) @timer_read32()
  store i32 %43, i32* @lastTime, align 4
  store i32 0, i32* %3, align 4
  br label %46

44:                                               ; preds = %8
  br label %45

45:                                               ; preds = %44, %2
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @rand(...) #1

declare dso_local i32 @rgblight_mode(i32) #1

declare dso_local i32 @rgblight_setrgb_green(...) #1

declare dso_local i32 @rgblight_setrgb_yellow(...) #1

declare dso_local i32 @rgblight_setrgb_red(...) #1

declare dso_local i32 @send_string(i32) #1

declare dso_local i32 @timer_read32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
