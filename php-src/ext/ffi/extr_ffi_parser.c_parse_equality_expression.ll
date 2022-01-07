; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_equality_expression.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_equality_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__EQUAL_EQUAL = common dso_local global i32 0, align 4
@YY__BANG_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_equality_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_equality_expression(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @parse_relational_expression(i32 %6, i32* %7)
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @YY__EQUAL_EQUAL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @YY__BANG_EQUAL, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ true, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %36

19:                                               ; preds = %17
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @YY__EQUAL_EQUAL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = call i32 (...) @get_sym()
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @parse_relational_expression(i32 %25, i32* %5)
  store i32 %26, i32* %3, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @zend_ffi_expr_is_equal(i32* %27, i32* %5)
  br label %35

29:                                               ; preds = %19
  %30 = call i32 (...) @get_sym()
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @parse_relational_expression(i32 %31, i32* %5)
  store i32 %32, i32* %3, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @zend_ffi_expr_is_not_equal(i32* %33, i32* %5)
  br label %35

35:                                               ; preds = %29, %23
  br label %9

36:                                               ; preds = %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @parse_relational_expression(i32, i32*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @zend_ffi_expr_is_equal(i32*, i32*) #1

declare dso_local i32 @zend_ffi_expr_is_not_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
