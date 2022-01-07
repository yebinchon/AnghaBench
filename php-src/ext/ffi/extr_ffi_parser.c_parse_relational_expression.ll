; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_relational_expression.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_relational_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YY__LESS = common dso_local global i32 0, align 4
@YY__GREATER = common dso_local global i32 0, align 4
@YY__LESS_EQUAL = common dso_local global i32 0, align 4
@YY__GREATER_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_relational_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_relational_expression(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @parse_shift_expression(i32 %6, i32* %7)
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %65, %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @YY__LESS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @YY__GREATER, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @YY__LESS_EQUAL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @YY__GREATER_EQUAL, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17, %13, %9
  %26 = phi i1 [ true, %17 ], [ true, %13 ], [ true, %9 ], [ %24, %21 ]
  br i1 %26, label %27, label %66

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @YY__LESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = call i32 (...) @get_sym()
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @parse_shift_expression(i32 %33, i32* %5)
  store i32 %34, i32* %3, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @zend_ffi_expr_is_less(i32* %35, i32* %5)
  br label %65

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @YY__GREATER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = call i32 (...) @get_sym()
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @parse_shift_expression(i32 %43, i32* %5)
  store i32 %44, i32* %3, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @zend_ffi_expr_is_greater(i32* %45, i32* %5)
  br label %64

47:                                               ; preds = %37
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @YY__LESS_EQUAL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = call i32 (...) @get_sym()
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @parse_shift_expression(i32 %53, i32* %5)
  store i32 %54, i32* %3, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @zend_ffi_expr_is_less_or_equal(i32* %55, i32* %5)
  br label %63

57:                                               ; preds = %47
  %58 = call i32 (...) @get_sym()
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @parse_shift_expression(i32 %59, i32* %5)
  store i32 %60, i32* %3, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @zend_ffi_expr_is_greater_or_equal(i32* %61, i32* %5)
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %31
  br label %9

66:                                               ; preds = %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @parse_shift_expression(i32, i32*) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @zend_ffi_expr_is_less(i32*, i32*) #1

declare dso_local i32 @zend_ffi_expr_is_greater(i32*, i32*) #1

declare dso_local i32 @zend_ffi_expr_is_less_or_equal(i32*, i32*) #1

declare dso_local i32 @zend_ffi_expr_is_greater_or_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
