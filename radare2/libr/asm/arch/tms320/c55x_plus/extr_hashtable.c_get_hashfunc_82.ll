; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_82.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_82.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_82(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 16777600
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 16777600
  %12 = icmp ule i32 %11, 256
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 16777600
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 203, i32* %3, align 4
  br label %40

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 192, i32* %3, align 4
  br label %40

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 195, i32* %3, align 4
  br label %40

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 384
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 198, i32* %7, align 4
  br label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 16777600
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %32
  store i32 196, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %35, %26, %25, %21, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
