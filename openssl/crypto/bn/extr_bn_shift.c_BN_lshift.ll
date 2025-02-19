; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_shift.c_BN_lshift.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_shift.c_BN_lshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_F_BN_LSHIFT = common dso_local global i32 0, align 4
@BN_R_INVALID_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_lshift(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @BN_F_BN_LSHIFT, align 4
  %13 = load i32, i32* @BN_R_INVALID_SHIFT, align 4
  %14 = call i32 @BNerr(i32 %12, i32 %13)
  store i32 0, i32* %4, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @bn_lshift_fixed_top(i32* %16, i32* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @bn_correct_top(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @bn_check_top(i32* %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %11
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @bn_lshift_fixed_top(i32*, i32*, i32) #1

declare dso_local i32 @bn_correct_top(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
