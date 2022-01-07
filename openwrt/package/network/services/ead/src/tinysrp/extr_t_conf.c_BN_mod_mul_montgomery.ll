; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_mod_mul_montgomery.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/ead/src/tinysrp/extr_t_conf.c_BN_mod_mul_montgomery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_mul_montgomery(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @BN_CTX_start(i32* %14)
  %16 = load i32*, i32** %10, align 8
  %17 = call i32* @BN_CTX_get(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32* @BN_CTX_get(i32* %18)
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** %12, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %5
  br label %60

26:                                               ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @bn_check_top(i32* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @bn_check_top(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @BN_sqr(i32* %35, i32* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %60

41:                                               ; preds = %34
  br label %51

42:                                               ; preds = %26
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @BN_mul(i32* %43, i32* %44, i32* %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %60

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @BN_from_montgomery(i32* %52, i32* %53, i32* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %60

59:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %58, %49, %40, %25
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @BN_CTX_end(i32* %61)
  %63 = load i32, i32* %13, align 4
  ret i32 %63
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i32 @BN_sqr(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_from_montgomery(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
