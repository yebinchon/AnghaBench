; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_mod_inverse_fermat.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_ossl.c_dsa_mod_inverse_fermat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*)* @dsa_mod_inverse_fermat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dsa_mod_inverse_fermat(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = call i32* (...) @BN_new()
  store i32* %11, i32** %9, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %47

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @BN_CTX_start(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @BN_CTX_get(i32* %17)
  store i32* %18, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @BN_set_word(i32* %21, i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @BN_sub(i32* %25, i32* %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @BN_mod_exp_mont(i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  store i32* %39, i32** %8, align 8
  br label %43

40:                                               ; preds = %30, %24, %20, %14
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @BN_free(i32* %41)
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @BN_CTX_end(i32* %44)
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %43, %13
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_set_word(i32*, i32) #1

declare dso_local i64 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i64 @BN_mod_exp_mont(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
