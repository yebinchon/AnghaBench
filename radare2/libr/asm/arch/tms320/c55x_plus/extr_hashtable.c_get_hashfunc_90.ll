; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_90.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_90.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_90(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 33096121
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 33096121
  %13 = icmp ule i32 %12, 25231617
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 33096121
  %17 = icmp eq i32 %16, 25231617
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 498, i32* %3, align 4
  br label %62

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 16777600
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 16777600
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 8454401
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 497, i32* %3, align 4
  br label %62

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 8454529
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 499, i32* %3, align 4
  br label %62

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %3, align 4
  br label %62

35:                                               ; preds = %22
  store i32 489, i32* %3, align 4
  br label %62

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 20971904
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 489, i32* %3, align 4
  br label %62

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 25231744
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 500, i32* %3, align 4
  br label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 4194303
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %42
  store i32 496, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %52, %40, %39, %35, %33, %32, %28, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
