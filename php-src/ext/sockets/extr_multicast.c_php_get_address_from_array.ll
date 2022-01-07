; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c_php_get_address_from_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c_php_get_address_from_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no key \22%s\22 passed in optval\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i32*)* @php_get_address_from_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_get_address_from_array(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32* @zend_hash_str_find(i32* %15, i8* %16, i32 %18)
  store i32* %19, i32** %12, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load i32, i32* @E_WARNING, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @php_error_docref(i32* null, i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @FAILURE, align 4
  store i32 %25, i32* %6, align 4
  br label %44

26:                                               ; preds = %5
  %27 = load i32*, i32** %12, align 8
  %28 = call i32* @zval_get_tmp_string(i32* %27, i32** %14)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @ZSTR_VAL(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @php_set_inet46_addr(i32* %29, i32* %30, i32 %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @zend_tmp_string_release(i32* %37)
  %39 = load i32, i32* @FAILURE, align 4
  store i32 %39, i32* %6, align 4
  br label %44

40:                                               ; preds = %26
  %41 = load i32*, i32** %14, align 8
  %42 = call i32 @zend_tmp_string_release(i32* %41)
  %43 = load i32, i32* @SUCCESS, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %36, %21
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32* @zend_hash_str_find(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i8*) #1

declare dso_local i32* @zval_get_tmp_string(i32*, i32**) #1

declare dso_local i32 @php_set_inet46_addr(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_tmp_string_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
