; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_78.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_78.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_78(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 98304
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 65536
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 65536
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 429, i32* %3, align 4
  br label %31

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 427, i32* %3, align 4
  br label %31

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 32768
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 428, i32* %3, align 4
  br label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 98304
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %25
  store i32 252, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %23, %22, %18, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
