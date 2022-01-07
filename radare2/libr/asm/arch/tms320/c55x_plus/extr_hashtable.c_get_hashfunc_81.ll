; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_81.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_81.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_81(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 16777600
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 16777600
  %12 = icmp ule i32 %11, 16777216
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 16777600
  %16 = icmp eq i32 %15, 16777216
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 191, i32* %3, align 4
  br label %58

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 256
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 384
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 200, i32* %3, align 4
  br label %58

25:                                               ; preds = %21
  br label %39

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 538, i32* %3, align 4
  br label %58

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 190, i32* %3, align 4
  br label %58

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 537, i32* %3, align 4
  br label %58

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %3, align 4
  br label %58

41:                                               ; preds = %2
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 16777344
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 194, i32* %6, align 4
  br label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 16777472
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 539, i32* %6, align 4
  br label %55

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 16777600
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %3, align 4
  br label %58

54:                                               ; preds = %49
  store i32 201, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %48
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52, %39, %37, %33, %29, %24, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
