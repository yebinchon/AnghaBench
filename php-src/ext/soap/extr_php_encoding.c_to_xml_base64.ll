; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_base64.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@IS_STRING = common dso_local global i64 0, align 8
@SOAP_ENCODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @to_xml_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_xml_base64(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @xmlNewNode(i32* null, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @xmlAddChild(i32 %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @FIND_ZVAL_NULL(i32* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @Z_TYPE_P(i32* %22)
  %24 = load i64, i64* @IS_STRING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @Z_STRVAL_P(i32* %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @Z_STRLEN_P(i32* %30)
  %32 = call i32* @php_base64_encode(i8* %29, i32 %31)
  store i32* %32, i32** %11, align 8
  br label %43

33:                                               ; preds = %4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32* @zval_get_string_func(i32* %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i8* @ZSTR_VAL(i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @ZSTR_LEN(i32* %38)
  %40 = call i32* @php_base64_encode(i8* %37, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @zend_string_release_ex(i32* %41, i32 0)
  br label %43

43:                                               ; preds = %33, %26
  %44 = load i32*, i32** %11, align 8
  %45 = call i8* @ZSTR_VAL(i32* %44)
  %46 = call i32 @BAD_CAST(i8* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @ZSTR_LEN(i32* %47)
  %49 = call i32 @xmlNewTextLen(i32 %46, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @xmlAddChild(i32 %50, i32 %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @zend_string_release_ex(i32* %53, i32 0)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @SOAP_ENCODED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @set_ns_and_type(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %43
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @xmlNewNode(i32*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlAddChild(i32, i32) #1

declare dso_local i32 @FIND_ZVAL_NULL(i32*, i32, i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @php_base64_encode(i8*, i32) #1

declare dso_local i64 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32* @zval_get_string_func(i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @xmlNewTextLen(i32, i32) #1

declare dso_local i32 @set_ns_and_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
