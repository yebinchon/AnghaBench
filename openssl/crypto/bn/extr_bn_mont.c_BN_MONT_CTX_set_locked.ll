; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mont.c_BN_MONT_CTX_set_locked.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mont.c_BN_MONT_CTX_set_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BN_MONT_CTX_set_locked(i32** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @CRYPTO_THREAD_read_lock(i32* %11)
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @CRYPTO_THREAD_unlock(i32* %15)
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  store i32* %20, i32** %5, align 8
  br label %53

21:                                               ; preds = %4
  %22 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32* null, i32** %5, align 8
  br label %53

26:                                               ; preds = %21
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @BN_MONT_CTX_set(i32* %27, i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @BN_MONT_CTX_free(i32* %33)
  store i32* null, i32** %5, align 8
  br label %53

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @CRYPTO_THREAD_write_lock(i32* %36)
  %38 = load i32**, i32*** %6, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @BN_MONT_CTX_free(i32* %42)
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %10, align 8
  br label %49

46:                                               ; preds = %35
  %47 = load i32*, i32** %10, align 8
  %48 = load i32**, i32*** %6, align 8
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @CRYPTO_THREAD_unlock(i32* %50)
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %49, %32, %25, %19
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i32 @CRYPTO_THREAD_read_lock(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32*) #1

declare dso_local i32* @BN_MONT_CTX_new(...) #1

declare dso_local i32 @BN_MONT_CTX_set(i32*, i32*, i32*) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
