; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_depr.c_BN_generate_prime.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_depr.c_BN_generate_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BN_generate_prime(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, void (i32, i32, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca void (i32, i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store void (i32, i32, i8*)* %5, void (i32, i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* null, i32** %17, align 8
  %18 = load void (i32, i32, i8*)*, void (i32, i32, i8*)** %14, align 8
  %19 = load i8*, i8** %15, align 8
  %20 = call i32 @BN_GENCB_set_old(i32* %16, void (i32, i32, i8*)* %18, i8* %19)
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = call i32* (...) @BN_new()
  store i32* %24, i32** %17, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %41

27:                                               ; preds = %23
  br label %30

28:                                               ; preds = %7
  %29 = load i32*, i32** %9, align 8
  store i32* %29, i32** %17, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = load i32*, i32** %17, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @BN_generate_prime_ex(i32* %31, i32 %32, i32 %33, i32* %34, i32* %35, i32* %16)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %41

39:                                               ; preds = %30
  %40 = load i32*, i32** %17, align 8
  store i32* %40, i32** %8, align 8
  br label %44

41:                                               ; preds = %38, %26
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @BN_free(i32* %42)
  store i32* null, i32** %8, align 8
  br label %44

44:                                               ; preds = %41, %39
  %45 = load i32*, i32** %8, align 8
  ret i32* %45
}

declare dso_local i32 @BN_GENCB_set_old(i32*, void (i32, i32, i8*)*, i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
