; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_80.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_80.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_80(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 98688
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 33024
  br i1 %13, label %14, label %49

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 33024
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 450, i32* %3, align 4
  br label %82

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 384
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 32768
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 444, i32* %3, align 4
  br label %82

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 32896
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 448, i32* %3, align 4
  br label %82

29:                                               ; preds = %25
  br label %47

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 384
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 453, i32* %3, align 4
  br label %82

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 443, i32* %3, align 4
  br label %82

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 445, i32* %3, align 4
  br label %82

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 256
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 447, i32* %3, align 4
  br label %82

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %3, align 4
  br label %82

49:                                               ; preds = %2
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %50, 65792
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 65792
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 455, i32* %3, align 4
  br label %82

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 33152
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 454, i32* %3, align 4
  br label %82

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 65536
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 446, i32* %3, align 4
  br label %82

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 65664
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 449, i32* %3, align 4
  br label %82

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %49
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 65920
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 452, i32* %8, align 4
  br label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 98688
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %3, align 4
  br label %82

79:                                               ; preds = %74
  store i32 451, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %77, %68, %67, %63, %59, %55, %47, %45, %41, %37, %33, %28, %24, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
