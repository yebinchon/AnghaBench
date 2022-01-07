; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_34.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_34(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 5767168
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 1572864
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 1572864
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 471, i32* %3, align 4
  br label %44

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 392, i32* %3, align 4
  br label %44

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 524288
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 470, i32* %3, align 4
  br label %44

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1048576
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 393, i32* %3, align 4
  br label %44

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %3, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 4194304
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 394, i32* %6, align 4
  br label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 5242880
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %36
  store i32 395, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %39, %30, %29, %25, %21, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
