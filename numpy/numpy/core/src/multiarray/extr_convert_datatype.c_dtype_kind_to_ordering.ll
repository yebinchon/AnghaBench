; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_convert_datatype.c_dtype_kind_to_ordering.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_convert_datatype.c_dtype_kind_to_ordering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @dtype_kind_to_ordering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtype_kind_to_ordering(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %15 [
    i32 98, label %6
    i32 117, label %7
    i32 105, label %8
    i32 102, label %9
    i32 99, label %10
    i32 83, label %11
    i32 97, label %11
    i32 85, label %12
    i32 86, label %13
    i32 79, label %14
  ]

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %16

8:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %16

9:                                                ; preds = %1
  store i32 4, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %16

11:                                               ; preds = %1, %1
  store i32 6, i32* %2, align 4
  br label %16

12:                                               ; preds = %1
  store i32 7, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  store i32 9, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
