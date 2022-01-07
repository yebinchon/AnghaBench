; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_..formatninnin.h_gb_get_rombanks.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_..formatninnin.h_gb_get_rombanks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_get_rombanks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 135, label %5
    i32 133, label %6
    i32 130, label %7
    i32 136, label %8
    i32 134, label %9
    i32 132, label %10
    i32 137, label %11
    i32 131, label %12
    i32 129, label %13
    i32 128, label %14
  ]

5:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %16

6:                                                ; preds = %1
  store i32 4, i32* %2, align 4
  br label %16

7:                                                ; preds = %1
  store i32 8, i32* %2, align 4
  br label %16

8:                                                ; preds = %1
  store i32 16, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  store i32 32, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %16

11:                                               ; preds = %1
  store i32 128, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  store i32 72, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  store i32 80, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  store i32 96, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
