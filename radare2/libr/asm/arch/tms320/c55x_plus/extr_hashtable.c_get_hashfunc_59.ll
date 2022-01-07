; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_59.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_59.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_59(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 33152
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 256
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 256
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 505, i32* %3, align 4
  br label %39

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 33152
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 503, i32* %3, align 4
  br label %39

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 504, i32* %3, align 4
  br label %39

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %3, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 384
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 506, i32* %6, align 4
  br label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 32768
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %31
  store i32 507, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %34, %25, %24, %20, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
