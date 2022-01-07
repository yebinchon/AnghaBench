; ModuleID = '/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_do_operation_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gmp/extr_gmp.c_gmp_do_operation_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpz_add = common dso_local global i32 0, align 4
@mpz_sub = common dso_local global i32 0, align 4
@mpz_mul = common dso_local global i32 0, align 4
@mpz_pow_ui = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@mpz_tdiv_q = common dso_local global i32 0, align 4
@mpz_tdiv_q_ui = common dso_local global i32 0, align 4
@mpz_mod = common dso_local global i32 0, align 4
@mpz_mod_ui = common dso_local global i32 0, align 4
@mpz_mul_2exp = common dso_local global i32 0, align 4
@mpz_fdiv_q_2exp = common dso_local global i32 0, align 4
@mpz_ior = common dso_local global i32 0, align 4
@mpz_and = common dso_local global i32 0, align 4
@mpz_xor = common dso_local global i32 0, align 4
@mpz_com = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*)* @gmp_do_operation_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmp_do_operation_ex(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %61 [
    i32 139, label %11
    i32 128, label %14
    i32 132, label %17
    i32 131, label %20
    i32 134, label %27
    i32 133, label %31
    i32 130, label %35
    i32 129, label %42
    i32 136, label %49
    i32 138, label %52
    i32 135, label %55
    i32 137, label %58
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @mpz_add, align 4
  %13 = call i32 @DO_BINARY_UI_OP(i32 %12)
  br label %14

14:                                               ; preds = %4, %11
  %15 = load i32, i32* @mpz_sub, align 4
  %16 = call i32 @DO_BINARY_UI_OP(i32 %15)
  br label %17

17:                                               ; preds = %4, %14
  %18 = load i32, i32* @mpz_mul, align 4
  %19 = call i32 @DO_BINARY_UI_OP(i32 %18)
  br label %20

20:                                               ; preds = %4, %17
  %21 = load i32, i32* @mpz_pow_ui, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @shift_operator_helper(i32 %21, i32* %22, i32* %23, i32* %24)
  %26 = load i32, i32* @SUCCESS, align 4
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %4
  %28 = load i32, i32* @mpz_tdiv_q, align 4
  %29 = load i32, i32* @mpz_tdiv_q_ui, align 4
  %30 = call i32 @DO_BINARY_UI_OP_EX(i32 %28, i32 %29, i32 1)
  br label %31

31:                                               ; preds = %4, %27
  %32 = load i32, i32* @mpz_mod, align 4
  %33 = load i32, i32* @mpz_mod_ui, align 4
  %34 = call i32 @DO_BINARY_UI_OP_EX(i32 %32, i32 %33, i32 1)
  br label %35

35:                                               ; preds = %4, %31
  %36 = load i32, i32* @mpz_mul_2exp, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @shift_operator_helper(i32 %36, i32* %37, i32* %38, i32* %39)
  %41 = load i32, i32* @SUCCESS, align 4
  store i32 %41, i32* %5, align 4
  br label %63

42:                                               ; preds = %4
  %43 = load i32, i32* @mpz_fdiv_q_2exp, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @shift_operator_helper(i32 %43, i32* %44, i32* %45, i32* %46)
  %48 = load i32, i32* @SUCCESS, align 4
  store i32 %48, i32* %5, align 4
  br label %63

49:                                               ; preds = %4
  %50 = load i32, i32* @mpz_ior, align 4
  %51 = call i32 @DO_BINARY_OP(i32 %50)
  br label %52

52:                                               ; preds = %4, %49
  %53 = load i32, i32* @mpz_and, align 4
  %54 = call i32 @DO_BINARY_OP(i32 %53)
  br label %55

55:                                               ; preds = %4, %52
  %56 = load i32, i32* @mpz_xor, align 4
  %57 = call i32 @DO_BINARY_OP(i32 %56)
  br label %58

58:                                               ; preds = %4, %55
  %59 = load i32, i32* @mpz_com, align 4
  %60 = call i32 @DO_UNARY_OP(i32 %59)
  br label %61

61:                                               ; preds = %4, %58
  %62 = load i32, i32* @FAILURE, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %42, %35, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @DO_BINARY_UI_OP(i32) #1

declare dso_local i32 @shift_operator_helper(i32, i32*, i32*, i32*) #1

declare dso_local i32 @DO_BINARY_UI_OP_EX(i32, i32, i32) #1

declare dso_local i32 @DO_BINARY_OP(i32) #1

declare dso_local i32 @DO_UNARY_OP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
