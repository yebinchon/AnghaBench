; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_26.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_26.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hash_const_01 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_26(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 4308992
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 4210688
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 4210688
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 16384
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13
  store i32 310, i32* %3, align 4
  br label %41

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 49152
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 4194304
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 312, i32* %3, align 4
  br label %41

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %20
  store i32 311, i32* %3, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @hash_const_01, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 4243456
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %34
  store i32 311, i32* %3, align 4
  br label %41

40:                                               ; preds = %30
  store i32 313, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %37, %29, %27, %26, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
