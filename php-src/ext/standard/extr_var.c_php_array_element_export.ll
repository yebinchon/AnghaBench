; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_array_element_export.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_array_element_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"'\\\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"' . \22\\0\22 . '\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"' => \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i32, i32*)* @php_array_element_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_array_element_export(i32* %0, i64 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @buffer_append_spaces(i32* %16, i32 %18)
  %20 = load i32*, i32** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @smart_str_append_long(i32* %20, i32 %22)
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @smart_str_appendl(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %49

26:                                               ; preds = %5
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @php_addcslashes(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @ZSTR_VAL(i32* %29)
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @ZSTR_LEN(i32* %31)
  %33 = call i32* @php_str_to_str(i32 %30, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 12)
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @buffer_append_spaces(i32* %34, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @smart_str_appendc(i32* %38, i8 signext 39)
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @smart_str_append(i32* %40, i32* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @smart_str_appendl(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @zend_string_free(i32* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @zend_string_free(i32* %47)
  br label %49

49:                                               ; preds = %26, %15
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 2
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @php_var_export_ex(i32* %50, i32 %52, i32* %53)
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @smart_str_appendc(i32* %55, i8 signext 44)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @smart_str_appendc(i32* %57, i8 signext 10)
  ret void
}

declare dso_local i32 @buffer_append_spaces(i32*, i32) #1

declare dso_local i32 @smart_str_append_long(i32*, i32) #1

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32* @php_addcslashes(i32*, i8*, i32) #1

declare dso_local i32* @php_str_to_str(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @smart_str_appendc(i32*, i8 signext) #1

declare dso_local i32 @smart_str_append(i32*, i32*) #1

declare dso_local i32 @zend_string_free(i32*) #1

declare dso_local i32 @php_var_export_ex(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
