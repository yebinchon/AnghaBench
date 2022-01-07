; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_cast_expression.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_cast_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZEND_FFI_ATTR_INIT = common dso_local global i32 0, align 4
@YY__LPAREN = common dso_local global i32 0, align 4
@YY__RPAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"')' expected, got\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @parse_cast_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cast_expression(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @ZEND_FFI_ATTR_INIT, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @YY__LPAREN, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @synpred_4(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = call i32 (...) @get_sym()
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @parse_type_name(i32 %17, i32* %6)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @YY__RPAREN, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @yy_error_sym(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = call i32 (...) @get_sym()
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %11, %2
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @parse_unary_expression(i32 %28, i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @zend_ffi_expr_cast(i32* %34, i32* %6)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @synpred_4(i32) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @parse_type_name(i32, i32*) #1

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @parse_unary_expression(i32, i32*) #1

declare dso_local i32 @zend_ffi_expr_cast(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
