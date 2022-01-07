; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_BN_X931_generate_prime_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_BN_X931_generate_prime_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_X931_generate_prime_ex(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %17, align 8
  %21 = call i32 @BN_CTX_start(i32* %20)
  %22 = load i32*, i32** %13, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %9
  %25 = load i32*, i32** %17, align 8
  %26 = call i32* @BN_CTX_get(i32* %25)
  store i32* %26, i32** %13, align 8
  br label %27

27:                                               ; preds = %24, %9
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %17, align 8
  %32 = call i32* @BN_CTX_get(i32* %31)
  store i32* %32, i32** %14, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32*, i32** %13, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32*, i32** %14, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  br label %70

40:                                               ; preds = %36
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %43 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %44 = load i32*, i32** %17, align 8
  %45 = call i32 @BN_priv_rand_ex(i32* %41, i32 101, i32 %42, i32 %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %70

48:                                               ; preds = %40
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %51 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %52 = load i32*, i32** %17, align 8
  %53 = call i32 @BN_priv_rand_ex(i32* %49, i32 101, i32 %50, i32 %51, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %70

56:                                               ; preds = %48
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = call i32 @BN_X931_derive_prime_ex(i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %70

69:                                               ; preds = %56
  store i32 1, i32* %19, align 4
  br label %70

70:                                               ; preds = %69, %68, %55, %47, %39
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @BN_CTX_end(i32* %71)
  %73 = load i32, i32* %19, align 4
  ret i32 %73
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_priv_rand_ex(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @BN_X931_derive_prime_ex(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
