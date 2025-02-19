; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/bluepill/bluepill70/extr_matrix.c_select_row.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/bluepill/bluepill70/extr_matrix.c_select_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOB = common dso_local global i32 0, align 4
@PAL_MODE_OUTPUT_PUSHPULL = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_row(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %41 [
    i32 0, label %5
    i32 1, label %11
    i32 2, label %17
    i32 3, label %23
    i32 4, label %29
    i32 5, label %35
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @GPIOB, align 4
  %7 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %8 = call i32 @palSetPadMode(i32 %6, i32 9, i32 %7)
  %9 = load i32, i32* @GPIOB, align 4
  %10 = call i32 @palClearPad(i32 %9, i32 9)
  br label %41

11:                                               ; preds = %1
  %12 = load i32, i32* @GPIOB, align 4
  %13 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %14 = call i32 @palSetPadMode(i32 %12, i32 8, i32 %13)
  %15 = load i32, i32* @GPIOB, align 4
  %16 = call i32 @palClearPad(i32 %15, i32 8)
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* @GPIOB, align 4
  %19 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %20 = call i32 @palSetPadMode(i32 %18, i32 7, i32 %19)
  %21 = load i32, i32* @GPIOB, align 4
  %22 = call i32 @palClearPad(i32 %21, i32 7)
  br label %41

23:                                               ; preds = %1
  %24 = load i32, i32* @GPIOB, align 4
  %25 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %26 = call i32 @palSetPadMode(i32 %24, i32 6, i32 %25)
  %27 = load i32, i32* @GPIOB, align 4
  %28 = call i32 @palClearPad(i32 %27, i32 6)
  br label %41

29:                                               ; preds = %1
  %30 = load i32, i32* @GPIOB, align 4
  %31 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %32 = call i32 @palSetPadMode(i32 %30, i32 5, i32 %31)
  %33 = load i32, i32* @GPIOB, align 4
  %34 = call i32 @palClearPad(i32 %33, i32 5)
  br label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @GPIOA, align 4
  %37 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %38 = call i32 @palSetPadMode(i32 %36, i32 4, i32 %37)
  %39 = load i32, i32* @GPIOA, align 4
  %40 = call i32 @palClearPad(i32 %39, i32 4)
  br label %41

41:                                               ; preds = %1, %35, %29, %23, %17, %11, %5
  ret void
}

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @palClearPad(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
