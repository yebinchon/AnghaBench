; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_lowerit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_lowerit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @lowerit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @lowerit(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %6 [
    i32 65, label %8
    i32 66, label %9
    i32 67, label %10
    i32 68, label %11
    i32 69, label %12
    i32 70, label %13
    i32 71, label %14
    i32 72, label %15
    i32 73, label %16
    i32 74, label %17
    i32 75, label %18
    i32 76, label %19
    i32 77, label %20
    i32 78, label %21
    i32 79, label %22
    i32 80, label %23
    i32 81, label %24
    i32 82, label %25
    i32 83, label %26
    i32 84, label %27
    i32 85, label %28
    i32 86, label %29
    i32 87, label %30
    i32 88, label %31
    i32 89, label %32
    i32 90, label %33
  ]

6:                                                ; preds = %1
  %7 = load i8, i8* %3, align 1
  store i8 %7, i8* %2, align 1
  br label %34

8:                                                ; preds = %1
  store i8 97, i8* %2, align 1
  br label %34

9:                                                ; preds = %1
  store i8 98, i8* %2, align 1
  br label %34

10:                                               ; preds = %1
  store i8 99, i8* %2, align 1
  br label %34

11:                                               ; preds = %1
  store i8 100, i8* %2, align 1
  br label %34

12:                                               ; preds = %1
  store i8 101, i8* %2, align 1
  br label %34

13:                                               ; preds = %1
  store i8 102, i8* %2, align 1
  br label %34

14:                                               ; preds = %1
  store i8 103, i8* %2, align 1
  br label %34

15:                                               ; preds = %1
  store i8 104, i8* %2, align 1
  br label %34

16:                                               ; preds = %1
  store i8 105, i8* %2, align 1
  br label %34

17:                                               ; preds = %1
  store i8 106, i8* %2, align 1
  br label %34

18:                                               ; preds = %1
  store i8 107, i8* %2, align 1
  br label %34

19:                                               ; preds = %1
  store i8 108, i8* %2, align 1
  br label %34

20:                                               ; preds = %1
  store i8 109, i8* %2, align 1
  br label %34

21:                                               ; preds = %1
  store i8 110, i8* %2, align 1
  br label %34

22:                                               ; preds = %1
  store i8 111, i8* %2, align 1
  br label %34

23:                                               ; preds = %1
  store i8 112, i8* %2, align 1
  br label %34

24:                                               ; preds = %1
  store i8 113, i8* %2, align 1
  br label %34

25:                                               ; preds = %1
  store i8 114, i8* %2, align 1
  br label %34

26:                                               ; preds = %1
  store i8 115, i8* %2, align 1
  br label %34

27:                                               ; preds = %1
  store i8 116, i8* %2, align 1
  br label %34

28:                                               ; preds = %1
  store i8 117, i8* %2, align 1
  br label %34

29:                                               ; preds = %1
  store i8 118, i8* %2, align 1
  br label %34

30:                                               ; preds = %1
  store i8 119, i8* %2, align 1
  br label %34

31:                                               ; preds = %1
  store i8 120, i8* %2, align 1
  br label %34

32:                                               ; preds = %1
  store i8 121, i8* %2, align 1
  br label %34

33:                                               ; preds = %1
  store i8 122, i8* %2, align 1
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %6
  %35 = load i8, i8* %2, align 1
  ret i8 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
