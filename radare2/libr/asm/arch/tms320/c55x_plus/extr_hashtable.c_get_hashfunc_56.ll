; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_56.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_56.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_56(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 98688
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 32896
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 32896
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 528, i32* %3, align 4
  br label %42

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 406, i32* %3, align 4
  br label %42

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 527, i32* %3, align 4
  br label %42

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 32768
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 407, i32* %3, align 4
  br label %42

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 98304
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 408, i32* %6, align 4
  br label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 98432
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %34
  store i32 529, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %37, %28, %27, %23, %19, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
