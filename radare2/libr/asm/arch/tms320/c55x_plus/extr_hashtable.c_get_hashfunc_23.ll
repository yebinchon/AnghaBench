; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_23.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hash_const_01 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_23(i32 %0, i32 %1) #0 {
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
  %12 = icmp sle i32 %11, 4194304
  br i1 %12, label %13, label %52

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 4194304
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 323, i32* %3, align 4
  br label %84

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %18, 49152
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 49152
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 324, i32* %3, align 4
  br label %84

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 16384
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 370, i32* %3, align 4
  br label %84

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 32768
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 325, i32* %3, align 4
  br label %84

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %20
  store i32 372, i32* %3, align 4
  br label %84

38:                                               ; preds = %17
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 65536
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 81920
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 114688
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 371, i32* %3, align 4
  br label %84

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %3, align 4
  br label %84

50:                                               ; preds = %41
  store i32 373, i32* %3, align 4
  br label %84

51:                                               ; preds = %38
  store i32 314, i32* %3, align 4
  br label %84

52:                                               ; preds = %2
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %53, 4259840
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 4259840
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 4210688
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 369, i32* %3, align 4
  br label %84

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @hash_const_01, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 325, i32* %3, align 4
  br label %84

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 4243456
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %3, align 4
  br label %84

72:                                               ; preds = %67
  store i32 372, i32* %3, align 4
  br label %84

73:                                               ; preds = %55
  store i32 314, i32* %3, align 4
  br label %84

74:                                               ; preds = %52
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 4276224
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, 4308992
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 371, i32* %3, align 4
  br label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %74
  store i32 373, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %81, %80, %73, %72, %70, %66, %61, %51, %50, %48, %47, %37, %35, %34, %30, %26, %16
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
