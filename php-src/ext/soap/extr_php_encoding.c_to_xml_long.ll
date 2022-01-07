; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_long.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_to_xml_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"BOGUS\00", align 1
@IS_DOUBLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%0.0F\00", align 1
@SOAP_ENCODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @to_xml_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_xml_long(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 @BAD_CAST(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @xmlNewNode(i32* null, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @xmlAddChild(i32 %14, i32 %15)
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @FIND_ZVAL_NULL(i32* %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @Z_TYPE_P(i32* %21)
  %23 = load i64, i64* @IS_DOUBLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @Z_DVAL_P(i32* %27)
  %29 = call double @floor(i32 %28)
  %30 = call i32 @snprintf(i8* %26, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %29)
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %33 = call i32 @BAD_CAST(i8* %32)
  %34 = call i32 @xmlNodeSetContent(i32 %31, i32 %33)
  br label %48

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @zval_get_long(i32* %36)
  %38 = call i32* @zend_long_to_str(i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i8* @ZSTR_VAL(i32* %40)
  %42 = call i32 @BAD_CAST(i8* %41)
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @ZSTR_LEN(i32* %43)
  %45 = call i32 @xmlNodeSetContentLen(i32 %39, i32 %42, i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @zend_string_release_ex(i32* %46, i32 0)
  br label %48

48:                                               ; preds = %35, %25
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @SOAP_ENCODED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @set_ns_and_type(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @xmlNewNode(i32*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32 @xmlAddChild(i32, i32) #1

declare dso_local i32 @FIND_ZVAL_NULL(i32*, i32, i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local double @floor(i32) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32 @xmlNodeSetContent(i32, i32) #1

declare dso_local i32* @zend_long_to_str(i32) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i32 @xmlNodeSetContentLen(i32, i32, i32) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @set_ns_and_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
