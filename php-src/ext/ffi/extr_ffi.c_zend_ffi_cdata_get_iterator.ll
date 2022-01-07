; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_get_iterator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_get_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32, i64 }

@ZEND_FFI_TYPE_ARRAY = common dso_local global i64 0, align 8
@zend_ffi_exception_ce = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Attempt to iterate on non C array\00", align 1
@zend_ffi_cdata_it_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i32*, i32)* @zend_ffi_cdata_get_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @zend_ffi_cdata_get_iterator(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @Z_OBJ_P(i32* %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_10__* @ZEND_FFI_TYPE(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZEND_FFI_TYPE_ARRAY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @zend_ffi_exception_ce, align 4
  %25 = call i32 @zend_throw_error(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %52

26:                                               ; preds = %3
  %27 = call %struct.TYPE_11__* @emalloc(i32 40)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %10, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = call i32 @zend_iterator_init(%struct.TYPE_9__* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @Z_ADDREF_P(i32* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @Z_OBJ_P(i32* %36)
  %38 = call i32 @ZVAL_OBJ(i32* %35, i64 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32* @zend_ffi_cdata_it_funcs, i32** %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = call i32 @ZVAL_UNDEF(i32* %48)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %4, align 8
  br label %52

52:                                               ; preds = %26, %23
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %53
}

declare dso_local i64 @Z_OBJ_P(i32*) #1

declare dso_local %struct.TYPE_10__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zend_throw_error(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @emalloc(i32) #1

declare dso_local i32 @zend_iterator_init(%struct.TYPE_9__*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i64) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
