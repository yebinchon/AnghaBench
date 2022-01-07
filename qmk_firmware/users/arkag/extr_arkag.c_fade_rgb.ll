; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_fade_rgb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/arkag/extr_arkag.c_fade_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@fade_rgb.fade_timer = internal global i64 0, align 8
@state = common dso_local global i64 0, align 8
@boot = common dso_local global i64 0, align 8
@fade_interval = common dso_local global i64 0, align 8
@fade_state = common dso_local global i32 0, align 4
@underglow = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@flash_state = common dso_local global i64 0, align 8
@no_flash = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fade_rgb() #0 {
  %1 = load i64, i64* @state, align 8
  %2 = load i64, i64* @boot, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %40

5:                                                ; preds = %0
  %6 = load i64, i64* @fade_rgb.fade_timer, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i64 (...) @timer_read()
  store i64 %9, i64* @fade_rgb.fade_timer, align 8
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i64, i64* @fade_rgb.fade_timer, align 8
  %12 = call i64 @timer_elapsed(i64 %11)
  %13 = load i64, i64* @fade_interval, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %40

16:                                               ; preds = %10
  %17 = load i32, i32* @fade_state, align 4
  switch i32 %17, label %32 [
    i32 129, label %18
    i32 128, label %25
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @underglow, i32 0, i32 0), align 4
  %20 = icmp eq i32 %19, 359
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 128, i32* @fade_state, align 4
  br label %40

22:                                               ; preds = %18
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @underglow, i32 0, i32 0), align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @underglow, i32 0, i32 0), align 4
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @underglow, i32 0, i32 0), align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 129, i32* @fade_state, align 4
  br label %40

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @underglow, i32 0, i32 0), align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @underglow, i32 0, i32 0), align 4
  br label %32

32:                                               ; preds = %16, %29, %22
  %33 = call i64 (...) @timer_read()
  store i64 %33, i64* @fade_rgb.fade_timer, align 8
  %34 = load i64, i64* @flash_state, align 8
  %35 = load i64, i64* @no_flash, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @underglow, i32 0, i32 0), align 4
  %39 = call i32 @set_color(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %4, %15, %21, %28, %37, %32
  ret void
}

declare dso_local i64 @timer_read(...) #1

declare dso_local i64 @timer_elapsed(i64) #1

declare dso_local i32 @set_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
