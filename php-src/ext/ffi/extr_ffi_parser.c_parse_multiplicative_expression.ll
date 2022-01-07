; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_multiplicative_expression.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_multiplicative_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__STAR = common dso_local global i32 0, align 4
@YY__SLASH = common dso_local global i32 0, align 4
@YY__PERCENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_multiplicative_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_multiplicative_expression(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @parse_cast_expression(i32 %6, i32* %7)
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %50, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @YY__STAR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @YY__SLASH, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @YY__PERCENT, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %13, %9
  %22 = phi i1 [ true, %13 ], [ true, %9 ], [ %20, %17 ]
  br i1 %22, label %23, label %51

23:                                               ; preds = %21
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @YY__STAR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = call i32 (...) @get_sym()
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @parse_cast_expression(i32 %29, i32* %5)
  store i32 %30, i32* %3, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @zend_ffi_expr_mul(i32* %31, i32* %5)
  br label %50

33:                                               ; preds = %23
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @YY__SLASH, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = call i32 (...) @get_sym()
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @parse_cast_expression(i32 %39, i32* %5)
  store i32 %40, i32* %3, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @zend_ffi_expr_div(i32* %41, i32* %5)
  br label %49

43:                                               ; preds = %33
  %44 = call i32 (...) @get_sym()
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @parse_cast_expression(i32 %45, i32* %5)
  store i32 %46, i32* %3, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @zend_ffi_expr_mod(i32* %47, i32* %5)
  br label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %49, %27
  br label %9

51:                                               ; preds = %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @parse_cast_expression(i32, i32*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @zend_ffi_expr_mul(i32*, i32*) #1

declare dso_local i32 @zend_ffi_expr_div(i32*, i32*) #1

declare dso_local i32 @zend_ffi_expr_mod(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
