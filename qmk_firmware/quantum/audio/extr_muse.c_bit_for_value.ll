; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_muse.c_bit_for_value.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/audio/extr_muse.c_bit_for_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@muse_timer_1bit = common dso_local global i32 0, align 4
@muse_timer_4bit = common dso_local global i32 0, align 4
@muse_timer_2bit = common dso_local global i32 0, align 4
@muse_timer_31bit = common dso_local global i64 0, align 8
@MUSE_B1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bit_for_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 129, label %5
    i32 128, label %6
    i32 130, label %7
    i32 136, label %9
    i32 135, label %12
    i32 133, label %15
    i32 131, label %18
    i32 134, label %21
    i32 132, label %24
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %36

7:                                                ; preds = %1
  %8 = load i32, i32* @muse_timer_1bit, align 4
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load i32, i32* @muse_timer_4bit, align 4
  %11 = and i32 %10, 1
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @muse_timer_4bit, align 4
  %14 = and i32 %13, 2
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* @muse_timer_4bit, align 4
  %17 = and i32 %16, 4
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* @muse_timer_4bit, align 4
  %20 = and i32 %19, 8
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i32, i32* @muse_timer_2bit, align 4
  %23 = and i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @muse_timer_2bit, align 4
  %26 = and i32 %25, 2
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i64, i64* @muse_timer_31bit, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MUSE_B1, align 4
  %31 = sub nsw i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = and i64 %28, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %24, %21, %18, %15, %12, %9, %7, %6, %5
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
