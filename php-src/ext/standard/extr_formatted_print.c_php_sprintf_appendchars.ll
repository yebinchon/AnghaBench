; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_formatted_print.c_php_sprintf_appendchars.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_formatted_print.c_php_sprintf_appendchars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"%s(): ereallocing buffer to %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sprintf: appending \22%s\22, pos=\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i64*, i8*, i64)* @php_sprintf_appendchars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_sprintf_appendchars(i32** %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %11, %12
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @ZSTR_LEN(i32* %15)
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %4
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @ZSTR_LEN(i32* %20)
  store i64 %21, i64* %9, align 8
  %22 = call i32 (...) @get_active_function_name()
  %23 = load i32**, i32*** %5, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @ZSTR_LEN(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @PRINTF_DEBUG(i8* %26)
  br label %28

28:                                               ; preds = %31, %18
  %29 = load i64, i64* %9, align 8
  %30 = shl i64 %29, 1
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %9, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %28, label %38

38:                                               ; preds = %31
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32* @zend_string_extend(i32* %40, i64 %41, i32 0)
  %43 = load i32**, i32*** %5, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %38, %4
  %45 = load i8*, i8** %7, align 8
  %46 = load i64*, i64** %6, align 8
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @PRINTF_DEBUG(i8* %48)
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @ZSTR_VAL(i32* %51)
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %52, %54
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @memcpy(i64 %55, i8* %56, i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, i64* %60, align 8
  ret void
}

declare dso_local i64 @ZSTR_LEN(i32*) #1

declare dso_local i32 @PRINTF_DEBUG(i8*) #1

declare dso_local i32 @get_active_function_name(...) #1

declare dso_local i32* @zend_string_extend(i32*, i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i64 @ZSTR_VAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
