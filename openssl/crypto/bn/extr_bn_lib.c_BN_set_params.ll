; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_set_params.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_lib.c_BN_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bn_limit_bits = common dso_local global i32 0, align 4
@bn_limit_num = common dso_local global i32 0, align 4
@bn_limit_bits_high = common dso_local global i32 0, align 4
@bn_limit_num_high = common dso_local global i32 0, align 4
@bn_limit_bits_low = common dso_local global i32 0, align 4
@bn_limit_num_low = common dso_local global i32 0, align 4
@bn_limit_bits_mont = common dso_local global i32 0, align 4
@bn_limit_num_mont = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BN_set_params(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 31
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 31, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* @bn_limit_bits, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* @bn_limit_num, align 4
  br label %19

19:                                               ; preds = %15, %4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 31
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 31, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* @bn_limit_bits_high, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* @bn_limit_num_high, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 31
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 31, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* @bn_limit_bits_low, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* @bn_limit_num_low, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 31
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 31, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* @bn_limit_bits_mont, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* @bn_limit_num_mont, align 4
  br label %52

52:                                               ; preds = %48, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
