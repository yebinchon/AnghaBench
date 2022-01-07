; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_zstr_utf16_to_utf8.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_zstr_utf16_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Error converting utf16 to utf8 in collator_convert_zval_utf16_to_utf8()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @collator_convert_zstr_utf16_to_utf8(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @Z_STRVAL_P(i32* %8)
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @Z_STRLEN_P(i32* %11)
  %13 = call i32 @UCHARS(i32 %12)
  %14 = call i32* @intl_convert_utf16_to_utf8(i32* %10, i32 %13, i32* %6)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @E_WARNING, align 4
  %19 = call i32 @php_error(i32 %18, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ZVAL_EMPTY_STRING(i32* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ZVAL_NEW_STR(i32* %23, i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32*, i32** %4, align 8
  ret i32* %27
}

declare dso_local i32* @intl_convert_utf16_to_utf8(i32*, i32, i32*) #1

declare dso_local i64 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @UCHARS(i32) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @php_error(i32, i8*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
