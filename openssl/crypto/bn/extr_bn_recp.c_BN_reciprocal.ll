; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_recp.c_BN_reciprocal.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_recp.c_BN_reciprocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_reciprocal(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  %11 = load i32*, i32** %8, align 8
  %12 = call i32 @BN_CTX_start(i32* %11)
  %13 = load i32*, i32** %8, align 8
  %14 = call i32* @BN_CTX_get(i32* %13)
  store i32* %14, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %33

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BN_set_bit(i32* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %33

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @BN_div(i32* %24, i32* null, i32* %25, i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %30, %22, %16
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @bn_check_top(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @BN_CTX_end(i32* %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_set_bit(i32*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
