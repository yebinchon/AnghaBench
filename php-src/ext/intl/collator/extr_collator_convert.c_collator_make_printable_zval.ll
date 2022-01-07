; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_make_printable_zval.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_make_printable_zval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @collator_make_printable_zval(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @Z_TYPE_P(i32* %8)
  %10 = load i64, i64* @IS_STRING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @zend_make_printable_zval(i32* %13, i32* %5)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @collator_convert_zstr_utf8_to_utf16(i32* %5, i32* %18)
  store i32* %19, i32** %6, align 8
  %20 = call i32 @zval_ptr_dtor_str(i32* %5)
  br label %25

21:                                               ; preds = %12
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @collator_convert_zstr_utf8_to_utf16(i32* %22, i32* %23)
  store i32* %24, i32** %6, align 8
  br label %25

25:                                               ; preds = %21, %17
  br label %29

26:                                               ; preds = %2
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @COLLATOR_CONVERT_RETURN_FAILED(i32* %27)
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32*, i32** %6, align 8
  ret i32* %30
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @zend_make_printable_zval(i32*, i32*) #1

declare dso_local i32* @collator_convert_zstr_utf8_to_utf16(i32*, i32*) #1

declare dso_local i32 @zval_ptr_dtor_str(i32*) #1

declare dso_local i32 @COLLATOR_CONVERT_RETURN_FAILED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
