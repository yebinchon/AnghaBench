; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/extr_intl_convert.c_intl_convert_utf16_to_utf8.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/extr_intl_convert.c_intl_convert_utf16_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_ZERO_ERROR = common dso_local global i64 0, align 8
@U_BUFFER_OVERFLOW_ERROR = common dso_local global i64 0, align 8
@U_STRING_NOT_TERMINATED_WARNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @intl_convert_utf16_to_utf8(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* @U_ZERO_ERROR, align 8
  %11 = load i64*, i64** %7, align 8
  store i64 %10, i64* %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = call i32 @u_strToUTF8(i64* null, i64 0, i64* %9, i32* %12, i64 %13, i64* %14)
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @U_BUFFER_OVERFLOW_ERROR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @U_STRING_NOT_TERMINATED_WARNING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %4, align 8
  br label %53

26:                                               ; preds = %20, %3
  %27 = load i64, i64* %9, align 8
  %28 = call i32* @zend_string_alloc(i64 %27, i32 0)
  store i32* %28, i32** %8, align 8
  %29 = load i64, i64* @U_ZERO_ERROR, align 8
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64* @ZSTR_VAL(i32* %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = call i32 @u_strToUTF8(i64* %32, i64 %33, i64* null, i32* %34, i64 %35, i64* %36)
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @U_FAILURE(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @zend_string_efree(i32* %43)
  store i32* null, i32** %4, align 8
  br label %53

45:                                               ; preds = %26
  %46 = load i64, i64* @U_ZERO_ERROR, align 8
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64* @ZSTR_VAL(i32* %48)
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** %4, align 8
  br label %53

53:                                               ; preds = %45, %42, %25
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i32 @u_strToUTF8(i64*, i64, i64*, i32*, i64, i64*) #1

declare dso_local i32* @zend_string_alloc(i64, i32) #1

declare dso_local i64* @ZSTR_VAL(i32*) #1

declare dso_local i64 @U_FAILURE(i64) #1

declare dso_local i32 @zend_string_efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
