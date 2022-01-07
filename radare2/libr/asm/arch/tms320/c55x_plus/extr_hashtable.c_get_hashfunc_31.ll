; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_31.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_31(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 3670016
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 2097152
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 2097152
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 271, i32* %3, align 4
  br label %56

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 1048576
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 1572864
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 534, i32* %3, align 4
  br label %56

23:                                               ; preds = %19
  br label %37

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1048576
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 317, i32* %3, align 4
  br label %56

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 319, i32* %3, align 4
  br label %56

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 524288
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 533, i32* %3, align 4
  br label %56

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 2621440
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 535, i32* %6, align 4
  br label %54

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 3145728
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 321, i32* %6, align 4
  br label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 3670016
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %47
  store i32 536, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %50, %37, %35, %31, %27, %22, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
