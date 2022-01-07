; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_zstr_utf8_to_utf16.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_convert.c_collator_convert_zstr_utf8_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_ZERO_ERROR = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Error casting object to string in collator_convert_zstr_utf8_to_utf16()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @collator_convert_zstr_utf8_to_utf16(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @Z_STRVAL_P(i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @Z_STRLEN_P(i32* %12)
  %14 = call i32 @intl_convert_utf8_to_utf16(i32** %6, i32* %7, i32 %11, i32 %13, i32* %8)
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @U_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @E_WARNING, align 4
  %20 = call i32 @php_error(i32 %19, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** %4, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @UBYTES(i32 %26)
  %28 = call i32 @ZVAL_STRINGL(i32* %23, i8* %25, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @efree(i8* %30)
  %32 = load i32*, i32** %5, align 8
  ret i32* %32
}

declare dso_local i32 @intl_convert_utf8_to_utf16(i32**, i32*, i32, i32, i32*) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i64 @U_FAILURE(i32) #1

declare dso_local i32 @php_error(i32, i8*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @UBYTES(i32) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
