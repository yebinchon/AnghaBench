; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_write_var.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_write_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i64 }

@ZEND_FFI_SYM_VAR = common dso_local global i64 0, align 8
@zend_ffi_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Attempt to assign undefined C variable '%s'\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Attempt to assign read-only C variable '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8**)* @zend_ffi_write_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zend_ffi_write_var(i32* %0, i32* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call %struct.TYPE_4__* @zend_hash_find_ptr(i64 %21, i32* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %11, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ZEND_FFI_SYM_VAR, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  br label %33

33:                                               ; preds = %32, %26, %18
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @zend_ffi_exception_ce, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @ZSTR_VAL(i32* %39)
  %41 = call i32 @zend_throw_error(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %5, align 8
  br label %65

43:                                               ; preds = %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* @zend_ffi_exception_ce, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @ZSTR_VAL(i32* %50)
  %52 = call i32 @zend_throw_error(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %8, align 8
  store i32* %53, i32** %5, align 8
  br label %65

54:                                               ; preds = %43
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ZEND_FFI_TYPE(i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @zend_ffi_zval_to_cdata(i32 %57, i32 %61, i32* %62)
  %64 = load i32*, i32** %8, align 8
  store i32* %64, i32** %5, align 8
  br label %65

65:                                               ; preds = %54, %48, %37
  %66 = load i32*, i32** %5, align 8
  ret i32* %66
}

declare dso_local %struct.TYPE_4__* @zend_hash_find_ptr(i64, i32*) #1

declare dso_local i32 @zend_throw_error(i32, i8*, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_ffi_zval_to_cdata(i32, i32, i32*) #1

declare dso_local i32 @ZEND_FFI_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
