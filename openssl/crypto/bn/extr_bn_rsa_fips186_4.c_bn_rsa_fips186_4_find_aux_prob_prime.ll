; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rsa_fips186_4.c_bn_rsa_fips186_4_find_aux_prob_prime.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_rsa_fips186_4.c_bn_rsa_fips186_4_find_aux_prob_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @bn_rsa_fips186_4_find_aux_prob_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bn_rsa_fips186_4_find_aux_prob_prime(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @BN_copy(i32* %12, i32* %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @BN_GENCB_call(i32* %21, i32 0, i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @BN_check_prime(i32* %24, i32* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %36

30:                                               ; preds = %18
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @BN_add_word(i32* %31, i32 2)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %40

35:                                               ; preds = %30
  br label %18

36:                                               ; preds = %29
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @BN_GENCB_call(i32* %37, i32 2, i32 %38)
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %34
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32* @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i64 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
