; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_soap_check_xml_ref.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_soap_check_xml_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ref_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @soap_check_xml_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soap_check_xml_ref(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @ref_map, align 4
  %8 = call i64 @SOAP_GLOBAL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load i32, i32* @ref_map, align 4
  %12 = call i64 @SOAP_GLOBAL(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32* @zend_hash_index_find(i64 %12, i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @Z_REFCOUNTED_P(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @Z_REFCOUNTED_P(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @Z_COUNTED_P(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @Z_COUNTED_P(i32* %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %21, %17
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @zval_ptr_dtor(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ZVAL_COPY(i32* %34, i32* %35)
  store i32 1, i32* %3, align 4
  br label %40

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %10
  br label %39

39:                                               ; preds = %38, %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @SOAP_GLOBAL(i32) #1

declare dso_local i32* @zend_hash_index_find(i64, i32) #1

declare dso_local i32 @Z_REFCOUNTED_P(i32*) #1

declare dso_local i64 @Z_COUNTED_P(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
