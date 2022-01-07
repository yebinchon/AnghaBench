; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_hexchar.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_hexchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hexchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hexchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 48, label %5
    i32 49, label %6
    i32 50, label %7
    i32 51, label %8
    i32 52, label %9
    i32 53, label %10
    i32 54, label %11
    i32 55, label %12
    i32 56, label %13
    i32 57, label %14
    i32 97, label %15
    i32 65, label %15
    i32 98, label %16
    i32 66, label %16
    i32 99, label %17
    i32 67, label %17
    i32 100, label %18
    i32 68, label %18
    i32 101, label %19
    i32 69, label %19
    i32 102, label %20
    i32 70, label %20
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

7:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %22

8:                                                ; preds = %1
  store i32 3, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  store i32 4, i32* %2, align 4
  br label %22

10:                                               ; preds = %1
  store i32 5, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  store i32 7, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  store i32 8, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  store i32 9, i32* %2, align 4
  br label %22

15:                                               ; preds = %1, %1
  store i32 10, i32* %2, align 4
  br label %22

16:                                               ; preds = %1, %1
  store i32 11, i32* %2, align 4
  br label %22

17:                                               ; preds = %1, %1
  store i32 12, i32* %2, align 4
  br label %22

18:                                               ; preds = %1, %1
  store i32 13, i32* %2, align 4
  br label %22

19:                                               ; preds = %1, %1
  store i32 14, i32* %2, align 4
  br label %22

20:                                               ; preds = %1, %1
  store i32 15, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
