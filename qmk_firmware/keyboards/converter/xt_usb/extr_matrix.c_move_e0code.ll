; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/xt_usb/extr_matrix.c_move_e0code.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/xt_usb/extr_matrix.c_move_e0code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @move_e0code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_e0code(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %27 [
    i32 55, label %5
    i32 70, label %6
    i32 28, label %7
    i32 53, label %8
    i32 91, label %9
    i32 92, label %10
    i32 93, label %11
    i32 94, label %12
    i32 95, label %13
    i32 99, label %14
    i32 72, label %15
    i32 75, label %16
    i32 80, label %17
    i32 77, label %18
    i32 82, label %19
    i32 83, label %20
    i32 71, label %21
    i32 79, label %22
    i32 73, label %23
    i32 81, label %24
    i32 29, label %25
    i32 56, label %26
  ]

5:                                                ; preds = %1
  store i32 84, i32* %2, align 4
  br label %28

6:                                                ; preds = %1
  store i32 85, i32* %2, align 4
  br label %28

7:                                                ; preds = %1
  store i32 111, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  store i32 127, i32* %2, align 4
  br label %28

9:                                                ; preds = %1
  store i32 90, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  store i32 91, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  store i32 92, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  store i32 93, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  store i32 94, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  store i32 95, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  store i32 96, i32* %2, align 4
  br label %28

16:                                               ; preds = %1
  store i32 97, i32* %2, align 4
  br label %28

17:                                               ; preds = %1
  store i32 98, i32* %2, align 4
  br label %28

18:                                               ; preds = %1
  store i32 99, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  store i32 113, i32* %2, align 4
  br label %28

20:                                               ; preds = %1
  store i32 114, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  store i32 116, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  store i32 117, i32* %2, align 4
  br label %28

23:                                               ; preds = %1
  store i32 119, i32* %2, align 4
  br label %28

24:                                               ; preds = %1
  store i32 120, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  store i32 122, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  store i32 124, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
