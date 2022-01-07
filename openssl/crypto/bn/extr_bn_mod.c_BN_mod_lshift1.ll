; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mod.c_BN_mod_lshift1.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_mod.c_BN_mod_lshift1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_lshift1(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @BN_lshift1(i32* %10, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %23

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @bn_check_top(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @BN_nnmod(i32* %18, i32* %19, i32* %20, i32* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @BN_lshift1(i32*, i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
