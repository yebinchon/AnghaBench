; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_bn_x931_derive_pi.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_bn_x931_derive_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @bn_x931_derive_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bn_x931_derive_pi(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @BN_copy(i32* %12, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @BN_is_odd(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @BN_add_word(i32* %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %54

26:                                               ; preds = %21, %17
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @BN_GENCB_call(i32* %30, i32 0, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @BN_check_prime(i32* %33, i32* %34, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %54

40:                                               ; preds = %27
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %50

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @BN_add_word(i32* %45, i32 2)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %54

49:                                               ; preds = %44
  br label %27

50:                                               ; preds = %43
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @BN_GENCB_call(i32* %51, i32 2, i32 %52)
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %48, %39, %25, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @BN_check_prime(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
