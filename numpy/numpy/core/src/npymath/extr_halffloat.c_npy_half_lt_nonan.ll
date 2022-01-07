; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_lt_nonan.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/npymath/extr_halffloat.c_npy_half_lt_nonan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npy_half_lt_nonan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 32768
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 32768
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 32767
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 32767
  %18 = icmp ugt i32 %15, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 32768
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ true, %20 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 32768
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 32767
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 32767
  %39 = icmp ult i32 %36, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %33, %26, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
