; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_velocikey.c_velocikey_decelerate.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_velocikey.c_velocikey_decelerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@velocikey_decelerate.decay_timer = internal global i64 0, align 8
@typing_speed = common dso_local global i32 0, align 4
@TYPING_SPEED_MAX_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @velocikey_decelerate() #0 {
  %1 = load i64, i64* @velocikey_decelerate.decay_timer, align 8
  %2 = call i32 @timer_elapsed(i64 %1)
  %3 = icmp sgt i32 %2, 500
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @velocikey_decelerate.decay_timer, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @typing_speed, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @typing_speed, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* @typing_speed, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @typing_speed, align 4
  %15 = load i32, i32* @TYPING_SPEED_MAX_VALUE, align 4
  %16 = sdiv i32 %15, 2
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @typing_speed, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* @typing_speed, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @typing_speed, align 4
  %23 = load i32, i32* @TYPING_SPEED_MAX_VALUE, align 4
  %24 = sdiv i32 %23, 4
  %25 = mul nsw i32 %24, 3
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @typing_speed, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* @typing_speed, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = call i64 (...) @timer_read()
  store i64 %31, i64* @velocikey_decelerate.decay_timer, align 8
  br label %32

32:                                               ; preds = %30, %4
  ret void
}

declare dso_local i32 @timer_elapsed(i64) #1

declare dso_local i64 @timer_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
