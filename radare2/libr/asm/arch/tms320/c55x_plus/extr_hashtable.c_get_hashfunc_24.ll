; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_24.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hash_const_01 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_24(i32 %0, i32 %1) #0 {
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
  %10 = and i32 %9, 4292608
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 4194304
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 4194304
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 330, i32* %3, align 4
  br label %55

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 65536
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 65536
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 329, i32* %3, align 4
  br label %55

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 32768
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 307, i32* %3, align 4
  br label %55

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %20
  store i32 480, i32* %3, align 4
  br label %55

34:                                               ; preds = %17
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 98304
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 467, i32* %3, align 4
  br label %55

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %2
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @hash_const_01, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 4259840
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 480, i32* %3, align 4
  br label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 4292608
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 467, i32* %3, align 4
  br label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %40
  store i32 308, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %51, %47, %38, %37, %33, %31, %30, %26, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
