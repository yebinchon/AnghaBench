; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_50.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_50.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hash_const_05 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_50(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 7864320
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 4194304
  br i1 %10, label %11, label %42

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 4194304
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 522, i32* %3, align 4
  br label %66

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 1572864
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 2621440
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 402, i32* %3, align 4
  br label %66

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 3145728
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 411, i32* %3, align 4
  br label %66

26:                                               ; preds = %22
  br label %40

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 1572864
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 401, i32* %3, align 4
  br label %66

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 403, i32* %3, align 4
  br label %66

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 524288
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 400, i32* %3, align 4
  br label %66

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %43, 6815744
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 6815744
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 526, i32* %3, align 4
  br label %66

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @hash_const_05, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 524, i32* %3, align 4
  br label %66

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 5767168
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 525, i32* %3, align 4
  br label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %42
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 7340032
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %60
  store i32 523, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %63, %58, %57, %53, %48, %40, %38, %34, %30, %25, %21, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
