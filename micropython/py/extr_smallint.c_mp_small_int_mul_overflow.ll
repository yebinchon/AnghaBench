; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_smallint.c_mp_small_int_mul_overflow.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_smallint.c_mp_small_int_mul_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_SMALL_INT_MAX = common dso_local global i32 0, align 4
@MP_SMALL_INT_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_small_int_mul_overflow(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MP_SMALL_INT_MAX, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %13, %14
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %52

18:                                               ; preds = %11
  br label %27

19:                                               ; preds = %8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MP_SMALL_INT_MIN, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %52

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %18
  br label %51

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MP_SMALL_INT_MIN, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %52

38:                                               ; preds = %31
  br label %50

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MP_SMALL_INT_MAX, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sdiv i32 %44, %45
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %52

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %27
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %37, %25, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
