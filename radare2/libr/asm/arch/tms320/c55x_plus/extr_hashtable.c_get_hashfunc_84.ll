; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_84.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_84.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_84(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 16777600
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 16777600
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 16777344
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 509, i32* %5, align 4
  br label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 16777472
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 510, i32* %5, align 4
  br label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %19
  br label %23

23:                                               ; preds = %22, %15
  br label %25

24:                                               ; preds = %2
  store i32 508, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
