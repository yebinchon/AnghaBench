; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/17/extr_17.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/17/extr_17.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pwm_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown level: %d\0A\00", align 1
@TC4H = common dso_local global i32 0, align 4
@OCR4A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %8 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
  ]

4:                                                ; preds = %1
  store i32 84, i32* @pwm_level, align 4
  br label %11

5:                                                ; preds = %1
  store i32 168, i32* @pwm_level, align 4
  br label %11

6:                                                ; preds = %1
  store i32 255, i32* @pwm_level, align 4
  br label %11

7:                                                ; preds = %1
  store i32 0, i32* @pwm_level, align 4
  br label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @xprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %7, %6, %5, %4
  %12 = load i32, i32* @pwm_level, align 4
  %13 = ashr i32 %12, 8
  store i32 %13, i32* @TC4H, align 4
  %14 = load i32, i32* @pwm_level, align 4
  %15 = and i32 255, %14
  store i32 %15, i32* @OCR4A, align 4
  ret void
}

declare dso_local i32 @xprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
