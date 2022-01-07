; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_25.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_hashtable.c_get_hashfunc_25.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hash_const_02 = common dso_local global i64 0, align 8
@hash_const_01 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_hashfunc_25(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* @hash_const_02, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* @hash_const_02, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp sle i32 %14, 32768
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load i64, i64* @hash_const_02, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 32768
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 1024
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 1024
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 512
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 365, i32* %3, align 4
  br label %67

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %3, align 4
  br label %67

37:                                               ; preds = %28, %25
  store i32 365, i32* %3, align 4
  br label %67

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1536
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 365, i32* %3, align 4
  br label %67

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %16
  store i32 382, i32* %3, align 4
  br label %67

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %46, 34304
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 34304
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 33280
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 33792
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %54, %51, %48
  store i32 382, i32* %3, align 4
  br label %67

60:                                               ; preds = %45
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @hash_const_01, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %60
  store i32 380, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %59, %57, %44, %42, %41, %37, %35, %34
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
