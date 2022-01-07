; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_recp.c_BN_mod_mul_reciprocal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_recp.c_BN_mod_mul_reciprocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_mul_reciprocal(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @BN_CTX_start(i32* %14)
  %16 = load i32*, i32** %10, align 8
  %17 = call i32* @BN_CTX_get(i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %54

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @BN_sqr(i32* %28, i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %54

34:                                               ; preds = %27
  br label %44

35:                                               ; preds = %23
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @BN_mul(i32* %36, i32* %37, i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %54

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32*, i32** %12, align 8
  store i32* %45, i32** %13, align 8
  br label %48

46:                                               ; preds = %20
  %47 = load i32*, i32** %7, align 8
  store i32* %47, i32** %13, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @BN_div_recp(i32* null, i32* %49, i32* %50, i32* %51, i32* %52)
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %48, %42, %33, %19
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @BN_CTX_end(i32* %55)
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @bn_check_top(i32* %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_sqr(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_div_recp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
