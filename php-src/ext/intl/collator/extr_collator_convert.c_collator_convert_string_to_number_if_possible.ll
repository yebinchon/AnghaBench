; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_string_to_number_if_possible.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_string_to_number_if_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8
@IS_LONG = common dso_local global i32 0, align 4
@IS_DOUBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @collator_convert_string_to_number_if_possible(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @Z_TYPE_P(i32* %8)
  %10 = load i64, i64* @IS_STRING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @COLLATOR_CONVERT_RETURN_FAILED(i32* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @Z_STRVAL_P(i32* %16)
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @Z_STRLEN_P(i32* %19)
  %21 = call i32 @UCHARS(i32 %20)
  %22 = call i32 @collator_is_numeric(i32* %18, i32 %21, i32* %6, double* %7, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IS_LONG, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ZVAL_LONG(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IS_DOUBLE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32*, i32** %4, align 8
  %38 = load double, double* %7, align 8
  %39 = call i32 @ZVAL_DOUBLE(i32* %37, double %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %44

41:                                               ; preds = %15
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @COLLATOR_CONVERT_RETURN_FAILED(i32* %42)
  br label %44

44:                                               ; preds = %41, %40
  %45 = load i32*, i32** %4, align 8
  ret i32* %45
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @COLLATOR_CONVERT_RETURN_FAILED(i32*) #1

declare dso_local i32 @collator_is_numeric(i32*, i32, i32*, double*, i32) #1

declare dso_local i64 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @UCHARS(i32) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @ZVAL_DOUBLE(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
